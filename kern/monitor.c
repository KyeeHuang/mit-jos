// Simple command-line kernel monitor useful for
// controlling the kernel and exploring the system interactively.

#include <inc/stdio.h>
#include <inc/string.h>
#include <inc/memlayout.h>
#include <inc/assert.h>
#include <inc/x86.h>

#include <kern/console.h>
#include <kern/monitor.h>
#include <kern/kdebug.h>
#include <kern/pmap.h>

#define CMDBUF_SIZE	80	// enough for one VGA text line

#define IS_HEX(str) (((str[0]) == '0') && ((str[1]) == 'x')) 
#define HEX_VAL(str) (str2num((str+2), 16))
#define DEC_VAL(str) (str2num(str, 10))

#define START(str) (ROUNDDOWN(HEX_VAL(argv[1]), PGSIZE))

#define N_PAGES(argc, va_start, argv) ((argc==2)?1:(IS_HEX(argv[2]) ? (ROUNDUP(HEX_VAL(argv[2]), PGSIZE) - va_start)/PGSIZE : DEC_VAL(argv[2])))

#define PDE(pgdir, va) (pgdir[PDX(va)])
#define PTE_PTR(pgdir, va) (((pte_t*)KADDR(PTE_ADDR(PDE(pgdir,va)))) + PTX(va))
#define PTE(pgdir, va) (*PTE_PTR(pgdir, va))

#define P_PDE(pgdir, va) ((PDE(pgdir, va) & PTE_P))
#define P_PTE(pgdir, va) (PTE(pgdir, va) & PTE_P)
#define PERM(pgdir, va) (PTE(pgdir, va) - PTE_ADDR(PTE(pgdir, va)))

struct Command {
	const char *name;
	const char *desc;
	// return -1 to force monitor to exit
	int (*func)(int argc, char** argv, struct Trapframe* tf);
};

static struct Command commands[] = {
	{ "help", "Display this list of commands", mon_help },
	{ "kerninfo", "Display information about the kernel", mon_kerninfo },
	{ "smps", "Display information about the mem mappings", mon_showmappings},
	{ "stp", "Set page permissions", mon_setpermissions},
	{ "clp", "Clear page permissions", mon_clearpermissions},
};

/***** Funtional inline tools for kernel monitor commands *****/
static inline int
str2num(char *str, int base) {
	int ret = 0, offset = 0;
	if (base == 10) 
		while (*str && (*str >= '0') && (*str <= '9')) {
			offset = (*str++) - '0';
			ret = base * ret + offset;
		}
	else if (base == 16) 
		while ((*str && (*str >= '0') && (*str <= '9')) || ((*str >= 'a') && (*str <= 'f'))) {
			offset = *str - (*str <= '9' ? '0' : ('a' - 10));
			ret = base * ret + offset;
			str++;
		}
	
	return *str ? -1 : ret;
}

static inline void 
num2binstr(uint32_t num, char* store, int bit) {
	while (bit) {
		store[--bit] = num % 2 + '0';
		num = num / 2;
	}
}

static inline uint32_t
char2perm(char c) {
	switch (c)
	{
	case 'G': return PTE_G;
	case 'D': return PTE_D;
	case 'A': return PTE_A;
	case 'C': return PTE_PCD;
	case 'T': return PTE_PWT;
	case 'U': return PTE_U;
	case 'W': return PTE_W;
	case 'P': return PTE_P;
	default: return -1;
	}
}

static inline uint32_t
str2perm(char* str) {
	uint32_t perm = 0;
	while(*str)
		perm |= char2perm(*str++);

	if (perm < 0)
		panic("Wrong permission argument\n");

	//setting for 'Persent' bit will be automatically cancelled (forbidden)
	perm &= (~char2perm('P'));

	return perm;
}

static inline void 
validate_and_retrieve(int argc, char ** argv, uintptr_t* va_start, uint32_t *n_pages, char* hint) {
	if (argc <= 1)	
		panic("hint\n");

	if (!IS_HEX(argv[1]))
		panic("hint\n");
	
	*va_start = START(argv[1]);
	*n_pages = N_PAGES(argc, *va_start, argv);
	
	if (*va_start < 0 || *n_pages < 0) 
		panic("hint\n");
}

void change_permissions(int argc, char **argv, bool op, char* hint) {
	uintptr_t va_start;
	uint32_t n_pages;
	validate_and_retrieve(argc-1, argv, &va_start, &n_pages, hint);

	/*
	uint32_t perm = str2perm(argv[argc-1]);
	uintptr_t va;
	pte_t* va_pte;
	int cnt;
	extern pde_t* kern_pgdir;
	for(cnt = 0; cnt < n_pages; cnt++) {
		va = va_start + cnt * PGSIZE;
		
		if (P_PDE(kern_pgdir, va) && P_PTE(kern_pgdir, va)) {
			va_pte = PTE_PTR(kern_pgdir, va);
			*va_pte = op?(*va_pte | perm) : (*va_pte & (~perm));
		}
	}
	*/
}

/***** Implementations of basic kernel monitor commands *****/

int
mon_help(int argc, char **argv, struct Trapframe *tf)
{
	int i;

	for (i = 0; i < ARRAY_SIZE(commands); i++)
		cprintf("%s - %s\n", commands[i].name, commands[i].desc);
	return 0;
}

int
mon_kerninfo(int argc, char **argv, struct Trapframe *tf)
{
	extern char _start[], entry[], etext[], edata[], end[];

	cprintf("Special kernel symbols:\n");
	cprintf("  _start                  %08x (phys)\n", _start);
	cprintf("  entry  %08x (virt)  %08x (phys)\n", entry, entry - KERNBASE);
	cprintf("  etext  %08x (virt)  %08x (phys)\n", etext, etext - KERNBASE);
	cprintf("  edata  %08x (virt)  %08x (phys)\n", edata, edata - KERNBASE);
	cprintf("  end    %08x (virt)  %08x (phys)\n", end, end - KERNBASE);
	cprintf("Kernel executable memory footprint: %dKB\n",
		ROUNDUP(end - entry, 1024) / 1024);
	return 0;
}

int
mon_backtrace(int argc, char **argv, struct Trapframe *tf)
{
	// Your code here.
	return 0;
}

int
mon_showmappings(int argc, char **argv, struct Trapframe *tf) {
	char hint[]="\nPlease pass arguments in correct formats, for example:\n"
				"  smps 0x3000 0x5000 ---show the mapping from va=0x3000 to va=0x5000\n"
				"  smps 0x3000 100 ---show the mapping of 100 virtual pages from va=0x3000\n"
				"  smps 0x3000 ---show the mapping of va=0x3000 only\n";
	
	uintptr_t va_start;
	uint32_t n_pages;
	validate_and_retrieve(argc, argv, &va_start, &n_pages, hint);
	
	cprintf(
        "G: global   I: page table attribute index D: dirty\n"
        "A: accessed C: cache disable              T: write through\n"
        "U: user     W: writeable                  P: present\n"
        "---------------------------------\n"
        "virtual_ad  physica_ad  GIDACTUWP\n");
	
	uintptr_t va;
	int cnt;
	extern pde_t* kern_pgdir;

	for (cnt = 0; cnt < n_pages; cnt++) {
		va = va_start + cnt * PGSIZE;
		if (P_PDE(kern_pgdir, va) && P_PTE(kern_pgdir, va)) {
			char permission[10];
			permission[9] = '\0';

			num2binstr(PERM(kern_pgdir, va), permission, 9);

	/*
			cprintf("0x%08x	0x%08x %s\n", va, PTE_ADDR(PTE(kern_pgdir, va)), permission);
	*/
			continue;
		}

		cprintf("0x%08x -------- --------\n", va);
	}

	return 0;	
}

int mon_setpermissions(int argc, char **argv, struct Trapframe *tf) {
	char hint[]="\nPlease pass arguments in correct formats, for example:\n"
			"  stp 0x3000 0x5000 AD ---set permission bit A and D from va=0x3000 to va=0x5000\n"
			"  stp 0x3000 100 AD---set permission bit A and D of 100 virtual pages from va=0x3000\n"
			"  stp 0x3000 AD---set permission bit A and D of va=0x3000 only\n"
			"\n"
			"G: global   I: page table attribute index D: dirty\n"
			"A: accessed C: cache disable T: write through\n"
			"U: user     W: writeable     P: present\n"
			"\n"
			"ps: P is forbbiden to set by hand\n";
	
	change_permissions(argc, argv, 1, hint);
	cprintf("Permission has been updated:\n");
	mon_showmappings(argc-1, argv, tf);

	return 0;
}

int mon_clearpermissions(int argc, char **argv, struct Trapframe *tf) {
    char hint[]="\nPlease pass arguments in correct formats, for example:\n"
                "  clr 0x3000 0x5000 AD ---clear permission bit A and D from va=0x3000 to va=0x5000\n"
                "  clr 0x3000 100 AD---clear permission bit A and D of 100 virtual pages from va=0x3000\n"
                "  clr 0x3000 AD---clear permission bit A and D of va=0x3000 only\n"
                "\n"
                "G: global   I: page table attribute index D: dirty\n"
                "A: accessed C: cache disable T: write through\n"
                "U: user     W: writeable     P: present\n"
                "\n"
                "ps: P is forbbiden to clear by hand\n";

	change_permissions(argc, argv, 0, hint);
	cprintf("Permission has been cleared:\n");
	mon_showmappings(argc-1, argv, tf);

	return 0;
}
/***** Kernel monitor command interpreter *****/

#define WHITESPACE "\t\r\n "
#define MAXARGS 16

static int
runcmd(char *buf, struct Trapframe *tf)
{
	int argc;
	char *argv[MAXARGS];
	int i;

	// Parse the command buffer into whitespace-separated arguments
	argc = 0;
	argv[argc] = 0;
	while (1) {
		// gobble whitespace
		while (*buf && strchr(WHITESPACE, *buf))
			*buf++ = 0;
		if (*buf == 0)
			break;

		// save and scan past next arg
		if (argc == MAXARGS-1) {
			cprintf("Too many arguments (max %d)\n", MAXARGS);
			return 0;
		}
		argv[argc++] = buf;
		while (*buf && !strchr(WHITESPACE, *buf))
			buf++;
	}
	argv[argc] = 0;

	// Lookup and invoke the command
	if (argc == 0)
		return 0;
	for (i = 0; i < ARRAY_SIZE(commands); i++) {
		if (strcmp(argv[0], commands[i].name) == 0)
			return commands[i].func(argc, argv, tf);
	}
	cprintf("Unknown command '%s'\n", argv[0]);
	return 0;
}

void
monitor(struct Trapframe *tf)
{
	char *buf;

	cprintf("Welcome to the JOS kernel monitor!\n");
	cprintf("Type 'help' for a list of commands.\n");


	while (1) {
		buf = readline("K> ");
		if (buf != NULL)
			if (runcmd(buf, tf) < 0)
				break;
	}
}
