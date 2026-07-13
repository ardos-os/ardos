{ lib }:
{
    # Generated from .config — /home/tiago/linux-7.2-rc1/.config
    CC_VERSION_TEXT = lib.kernel.freeform "gcc (GCC) 16.1.1 20260625";
    CC_IS_GCC = lib.kernel.yes;

    GCC_VERSION = lib.kernel.freeform "160101";

    CLANG_VERSION = lib.kernel.freeform "0";

    AS_IS_GNU = lib.kernel.yes;
    AS_VERSION = lib.kernel.freeform "24601";

    LD_IS_BFD = lib.kernel.yes;
    LD_VERSION = lib.kernel.freeform "24601";

    LLD_VERSION = lib.kernel.freeform "0";

    RUSTC_VERSION = lib.kernel.freeform "109600";

    RUST_IS_AVAILABLE = lib.kernel.yes;

    RUSTC_LLVM_VERSION = lib.kernel.freeform "220102";
    RUSTC_LLVM_MAJOR_VERSION = lib.kernel.freeform "22";

    CC_CAN_LINK = lib.kernel.yes;
    CC_HAS_ASM_GOTO_OUTPUT = lib.kernel.yes;
    CC_HAS_ASM_GOTO_TIED_OUTPUT = lib.kernel.yes;

    TOOLS_SUPPORT_RELR = lib.kernel.yes;

    CC_HAS_ASM_INLINE = lib.kernel.yes;
    CC_HAS_ASSUME = lib.kernel.yes;
    CC_HAS_NO_PROFILE_FN_ATTR = lib.kernel.yes;
    CC_HAS_COUNTED_BY = lib.kernel.yes;
    CC_HAS_COUNTED_BY_PTR = lib.kernel.yes;
    CC_HAS_MULTIDIMENSIONAL_NONSTRING = lib.kernel.yes;

    LD_CAN_USE_KEEP_IN_OVERLAY = lib.kernel.yes;

    RUSTC_HAS_SPAN_FILE = lib.kernel.yes;
    RUSTC_HAS_UNNECESSARY_TRANSMUTES = lib.kernel.yes;
    RUSTC_HAS_FILE_WITH_NUL = lib.kernel.yes;
    RUSTC_HAS_FILE_AS_C_STR = lib.kernel.yes;

    PAHOLE_VERSION = lib.kernel.freeform "131";

    IRQ_WORK = lib.kernel.yes;

    BUILDTIME_TABLE_SORT = lib.kernel.yes;

    THREAD_INFO_IN_TASK = lib.kernel.yes;

    INIT_ENV_ARG_LIMIT = lib.kernel.freeform "32";

    COMPILE_TEST = lib.kernel.no;

    WERROR = lib.kernel.yes;

    LOCALVERSION = lib.kernel.freeform "-ardos";
    LOCALVERSION_AUTO = lib.kernel.yes;

    BUILD_SALT = lib.kernel.freeform "";

    HAVE_KERNEL_GZIP = lib.kernel.yes;
    HAVE_KERNEL_BZIP2 = lib.kernel.yes;
    HAVE_KERNEL_LZMA = lib.kernel.yes;
    HAVE_KERNEL_XZ = lib.kernel.yes;
    HAVE_KERNEL_LZO = lib.kernel.yes;
    HAVE_KERNEL_LZ4 = lib.kernel.yes;
    HAVE_KERNEL_ZSTD = lib.kernel.yes;

    KERNEL_GZIP = lib.kernel.no;
    KERNEL_BZIP2 = lib.kernel.no;
    KERNEL_LZMA = lib.kernel.no;
    KERNEL_XZ = lib.kernel.no;
    KERNEL_LZO = lib.kernel.no;
    KERNEL_LZ4 = lib.kernel.no;
    KERNEL_ZSTD = lib.kernel.yes;

    DEFAULT_INIT = lib.kernel.freeform "/init";
    DEFAULT_HOSTNAME = lib.kernel.freeform "ardos-os-pc";

    SYSVIPC = lib.kernel.yes;
    SYSVIPC_SYSCTL = lib.kernel.yes;

    POSIX_MQUEUE = lib.kernel.yes;
    POSIX_MQUEUE_SYSCTL = lib.kernel.yes;

    WATCH_QUEUE = lib.kernel.yes;

    CROSS_MEMORY_ATTACH = lib.kernel.yes;

    AUDIT = lib.kernel.yes;

    HAVE_ARCH_AUDITSYSCALL = lib.kernel.yes;

    AUDITSYSCALL = lib.kernel.yes;

    GENERIC_IRQ_PROBE = lib.kernel.yes;
    GENERIC_IRQ_SHOW = lib.kernel.yes;
    GENERIC_IRQ_EFFECTIVE_AFF_MASK = lib.kernel.yes;
    GENERIC_PENDING_IRQ = lib.kernel.yes;
    GENERIC_IRQ_MIGRATION = lib.kernel.yes;

    HARDIRQS_SW_RESEND = lib.kernel.yes;

    IRQ_DOMAIN = lib.kernel.yes;
    IRQ_DOMAIN_HIERARCHY = lib.kernel.yes;

    GENERIC_MSI_IRQ = lib.kernel.yes;
    GENERIC_IRQ_MATRIX_ALLOCATOR = lib.kernel.yes;
    GENERIC_IRQ_RESERVATION_MODE = lib.kernel.yes;

    IRQ_FORCED_THREADING = lib.kernel.yes;

    SPARSE_IRQ = lib.kernel.yes;

    GENERIC_IRQ_DEBUGFS = lib.kernel.no;

    CLOCKSOURCE_WATCHDOG = lib.kernel.yes;

    ARCH_CLOCKSOURCE_INIT = lib.kernel.yes;
    ARCH_WANTS_CLOCKSOURCE_READ_INLINE = lib.kernel.yes;

    GENERIC_CLOCKEVENTS = lib.kernel.yes;
    GENERIC_CLOCKEVENTS_BROADCAST = lib.kernel.yes;
    GENERIC_CLOCKEVENTS_BROADCAST_IDLE = lib.kernel.yes;
    GENERIC_CLOCKEVENTS_MIN_ADJUST = lib.kernel.yes;
    GENERIC_CLOCKEVENTS_COUPLED = lib.kernel.yes;
    GENERIC_CLOCKEVENTS_COUPLED_INLINE = lib.kernel.yes;
    GENERIC_CMOS_UPDATE = lib.kernel.yes;

    HRTIMER_REARM_DEFERRED = lib.kernel.yes;

    HAVE_POSIX_CPU_TIMERS_TASK_WORK = lib.kernel.yes;

    POSIX_CPU_TIMERS_TASK_WORK = lib.kernel.yes;

    CONTEXT_TRACKING = lib.kernel.yes;
    CONTEXT_TRACKING_IDLE = lib.kernel.yes;

    TICK_ONESHOT = lib.kernel.yes;

    HZ_PERIODIC = lib.kernel.yes;

    NO_HZ_IDLE = lib.kernel.no;
    NO_HZ_FULL = lib.kernel.no;
    NO_HZ = lib.kernel.yes;

    HIGH_RES_TIMERS = lib.kernel.yes;

    POSIX_AUX_CLOCKS = lib.kernel.yes;

    BPF = lib.kernel.yes;

    HAVE_EBPF_JIT = lib.kernel.yes;

    ARCH_WANT_DEFAULT_BPF_JIT = lib.kernel.yes;

    BPF_SYSCALL = lib.kernel.no;
    BPF_JIT = lib.kernel.no;

    PREEMPT_BUILD = lib.kernel.yes;

    ARCH_HAS_PREEMPT_LAZY = lib.kernel.yes;

    PREEMPT = lib.kernel.yes;
    PREEMPT_LAZY = lib.kernel.no;
    PREEMPT_RT = lib.kernel.yes;
    PREEMPT_RT_NEEDS_BH_LOCK = lib.kernel.no;
    PREEMPT_COUNT = lib.kernel.yes;

    PREEMPTION = lib.kernel.yes;

    PREEMPT_DYNAMIC = lib.kernel.yes;

    SCHED_CORE = lib.kernel.yes;

    TICK_CPU_ACCOUNTING = lib.kernel.yes;

    VIRT_CPU_ACCOUNTING_GEN = lib.kernel.no;

    IRQ_TIME_ACCOUNTING = lib.kernel.no;

    BSD_PROCESS_ACCT = lib.kernel.no;

    TASKSTATS = lib.kernel.yes;

    TASK_DELAY_ACCT = lib.kernel.yes;
    TASK_XACCT = lib.kernel.yes;
    TASK_IO_ACCOUNTING = lib.kernel.yes;

    PSI = lib.kernel.yes;
    PSI_DEFAULT_DISABLED = lib.kernel.no;

    CPU_ISOLATION = lib.kernel.yes;

    TREE_RCU = lib.kernel.yes;

    PREEMPT_RCU = lib.kernel.yes;

    RCU_EXPERT = lib.kernel.no;

    TREE_SRCU = lib.kernel.yes;

    TASKS_RCU_GENERIC = lib.kernel.yes;

    NEED_TASKS_RCU = lib.kernel.yes;

    TASKS_RCU = lib.kernel.yes;
    TASKS_TRACE_RCU = lib.kernel.yes;

    RCU_STALL_COMMON = lib.kernel.yes;
    RCU_NEED_SEGCBLIST = lib.kernel.yes;
    RCU_BOOST = lib.kernel.yes;
    RCU_BOOST_DELAY = lib.kernel.freeform "500";

    IKCONFIG = lib.kernel.no;

    IKHEADERS = lib.kernel.no;

    LOG_BUF_SHIFT = lib.kernel.freeform "18";
    LOG_CPU_MAX_BUF_SHIFT = lib.kernel.freeform "12";

    PRINTK_INDEX = lib.kernel.no;

    HAVE_UNSTABLE_SCHED_CLOCK = lib.kernel.yes;

    UCLAMP_TASK = lib.kernel.yes;
    UCLAMP_BUCKETS_COUNT = lib.kernel.freeform "5";

    ARCH_SUPPORTS_NUMA_BALANCING = lib.kernel.yes;
    ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH = lib.kernel.yes;

    CC_HAS_INT128 = lib.kernel.yes;
    CC_IMPLICIT_FALLTHROUGH = lib.kernel.freeform "-Wimplicit-fallthrough=5";
    CC_MS_EXTENSIONS = lib.kernel.freeform "-fms-extensions";

    GCC10_NO_ARRAY_BOUNDS = lib.kernel.yes;

    CC_NO_ARRAY_BOUNDS = lib.kernel.yes;

    GCC_NO_STRINGOP_OVERFLOW = lib.kernel.yes;

    CC_NO_STRINGOP_OVERFLOW = lib.kernel.yes;

    ARCH_SUPPORTS_INT128 = lib.kernel.yes;

    SCHED_CACHE = lib.kernel.yes;

    SLAB_OBJ_EXT = lib.kernel.yes;

    CGROUPS = lib.kernel.yes;

    PAGE_COUNTER = lib.kernel.yes;

    CGROUP_FAVOR_DYNMODS = lib.kernel.no;

    MEMCG = lib.kernel.yes;
    MEMCG_V1 = lib.kernel.no;

    BLK_CGROUP = lib.kernel.yes;

    CGROUP_WRITEBACK = lib.kernel.yes;
    CGROUP_SCHED = lib.kernel.yes;

    GROUP_SCHED_WEIGHT = lib.kernel.yes;
    GROUP_SCHED_BANDWIDTH = lib.kernel.yes;

    FAIR_GROUP_SCHED = lib.kernel.yes;

    CFS_BANDWIDTH = lib.kernel.yes;

    RT_GROUP_SCHED = lib.kernel.yes;
    RT_GROUP_SCHED_DEFAULT_DISABLED = lib.kernel.no;

    SCHED_MM_CID = lib.kernel.yes;

    UCLAMP_TASK_GROUP = lib.kernel.no;

    CGROUP_PIDS = lib.kernel.yes;
    CGROUP_RDMA = lib.kernel.yes;
    CGROUP_DMEM = lib.kernel.yes;
    CGROUP_FREEZER = lib.kernel.yes;
    CGROUP_HUGETLB = lib.kernel.yes;

    CPUSETS = lib.kernel.yes;
    CPUSETS_V1 = lib.kernel.no;

    CGROUP_DEVICE = lib.kernel.yes;
    CGROUP_CPUACCT = lib.kernel.yes;
    CGROUP_PERF = lib.kernel.yes;
    CGROUP_MISC = lib.kernel.yes;
    CGROUP_DEBUG = lib.kernel.yes;

    SOCK_CGROUP_DATA = lib.kernel.yes;

    NAMESPACES = lib.kernel.yes;

    UTS_NS = lib.kernel.yes;

    TIME_NS = lib.kernel.yes;
    TIME_NS_VDSO = lib.kernel.yes;

    IPC_NS = lib.kernel.yes;

    USER_NS = lib.kernel.yes;

    PID_NS = lib.kernel.yes;

    NET_NS = lib.kernel.yes;

    CHECKPOINT_RESTORE = lib.kernel.yes;

    SCHED_AUTOGROUP = lib.kernel.no;

    RELAY = lib.kernel.yes;

    BLK_DEV_INITRD = lib.kernel.yes;

    INITRAMFS_SOURCE = lib.kernel.freeform "";

    RD_GZIP = lib.kernel.yes;
    RD_BZIP2 = lib.kernel.yes;
    RD_LZMA = lib.kernel.yes;
    RD_XZ = lib.kernel.yes;
    RD_LZO = lib.kernel.yes;
    RD_LZ4 = lib.kernel.yes;
    RD_ZSTD = lib.kernel.yes;

    BOOT_CONFIG = lib.kernel.no;

    CMDLINE_LOG_WRAP_IDEAL_LEN = lib.kernel.freeform "1021";

    INITRAMFS_PRESERVE_MTIME = lib.kernel.yes;

    CC_OPTIMIZE_FOR_PERFORMANCE = lib.kernel.yes;
    CC_OPTIMIZE_FOR_SIZE = lib.kernel.no;

    LD_ORPHAN_WARN = lib.kernel.yes;
    LD_ORPHAN_WARN_LEVEL = lib.kernel.freeform "error";

    SYSCTL = lib.kernel.yes;
    SYSCTL_EXCEPTION_TRACE = lib.kernel.yes;

    SYSFS_SYSCALL = lib.kernel.no;

    HAVE_PCSPKR_PLATFORM = lib.kernel.yes;

    EXPERT = lib.kernel.yes;

    MULTIUSER = lib.kernel.yes;

    SGETMASK_SYSCALL = lib.kernel.yes;

    FHANDLE = lib.kernel.yes;

    POSIX_TIMERS = lib.kernel.yes;

    PRINTK = lib.kernel.yes;

    BUG = lib.kernel.yes;

    ELF_CORE = lib.kernel.yes;

    PCSPKR_PLATFORM = lib.kernel.yes;

    BASE_SMALL = lib.kernel.no;

    FUTEX = lib.kernel.yes;
    FUTEX_PI = lib.kernel.yes;
    FUTEX_PRIVATE_HASH = lib.kernel.yes;
    FUTEX_MPOL = lib.kernel.yes;

    HAVE_FUTEX_ROBUST_UNLOCK = lib.kernel.yes;

    FUTEX_ROBUST_UNLOCK = lib.kernel.yes;

    EPOLL = lib.kernel.yes;

    SIGNALFD = lib.kernel.yes;

    TIMERFD = lib.kernel.yes;

    EVENTFD = lib.kernel.yes;

    SHMEM = lib.kernel.yes;

    AIO = lib.kernel.yes;

    IO_URING = lib.kernel.yes;
    IO_URING_MOCK_FILE = lib.kernel.no;

    ADVISE_SYSCALLS = lib.kernel.yes;

    MEMBARRIER = lib.kernel.yes;

    KCMP = lib.kernel.yes;

    RSEQ = lib.kernel.yes;
    RSEQ_SLICE_EXTENSION = lib.kernel.no;
    RSEQ_STATS = lib.kernel.no;
    RSEQ_DEBUG_DEFAULT_ENABLE = lib.kernel.no;

    CACHESTAT_SYSCALL = lib.kernel.yes;

    KALLSYMS = lib.kernel.yes;
    KALLSYMS_SELFTEST = lib.kernel.no;
    KALLSYMS_ALL = lib.kernel.yes;

    ARCH_HAS_MEMBARRIER_SYNC_CORE = lib.kernel.yes;
    ARCH_SUPPORTS_MSEAL_SYSTEM_MAPPINGS = lib.kernel.yes;

    HAVE_PERF_EVENTS = lib.kernel.yes;

    GUEST_PERF_EVENTS = lib.kernel.yes;

    PERF_GUEST_MEDIATED_PMU = lib.kernel.yes;
    PERF_EVENTS = lib.kernel.yes;

    DEBUG_PERF_USE_VMALLOC = lib.kernel.no;

    SYSTEM_DATA_VERIFICATION = lib.kernel.yes;

    PROFILING = lib.kernel.yes;

    TRACEPOINTS = lib.kernel.yes;

    CRASH_RESERVE = lib.kernel.yes;

    VMCORE_INFO = lib.kernel.yes;

    KEXEC_CORE = lib.kernel.yes;
    KEXEC = lib.kernel.yes;
    KEXEC_FILE = lib.kernel.yes;
    KEXEC_SIG = lib.kernel.no;
    KEXEC_JUMP = lib.kernel.no;

    CRASH_DUMP = lib.kernel.yes;
    CRASH_HOTPLUG = lib.kernel.yes;
    CRASH_MAX_MEMORY_RANGES = lib.kernel.freeform "8192";

    KEXEC_HANDOVER = lib.kernel.yes;
    KEXEC_HANDOVER_DEBUG = lib.kernel.yes;
    KEXEC_HANDOVER_DEBUGFS = lib.kernel.yes;
    KEXEC_HANDOVER_ENABLE_DEFAULT = lib.kernel.yes;

    LIVEUPDATE = lib.kernel.yes;
    LIVEUPDATE_MEMFD = lib.kernel.yes;

    "64BIT" = lib.kernel.yes;

    X86_64 = lib.kernel.yes;
    X86 = lib.kernel.yes;

    INSTRUCTION_DECODER = lib.kernel.yes;

    OUTPUT_FORMAT = lib.kernel.freeform "elf64-x86-64";

    LOCKDEP_SUPPORT = lib.kernel.yes;

    STACKTRACE_SUPPORT = lib.kernel.yes;

    MMU = lib.kernel.yes;

    ARCH_MMAP_RND_BITS_MIN = lib.kernel.freeform "28";
    ARCH_MMAP_RND_BITS_MAX = lib.kernel.freeform "32";
    ARCH_MMAP_RND_COMPAT_BITS_MIN = lib.kernel.freeform "8";
    ARCH_MMAP_RND_COMPAT_BITS_MAX = lib.kernel.freeform "16";

    GENERIC_ISA_DMA = lib.kernel.yes;
    GENERIC_BUG = lib.kernel.yes;
    GENERIC_BUG_RELATIVE_POINTERS = lib.kernel.yes;

    ARCH_MAY_HAVE_PC_FDC = lib.kernel.yes;

    GENERIC_CALIBRATE_DELAY = lib.kernel.yes;

    ARCH_HAS_CPU_RELAX = lib.kernel.yes;
    ARCH_HIBERNATION_POSSIBLE = lib.kernel.yes;
    ARCH_SUSPEND_POSSIBLE = lib.kernel.yes;

    AUDIT_ARCH = lib.kernel.yes;

    HAVE_INTEL_TXT = lib.kernel.yes;

    ARCH_SUPPORTS_UPROBES = lib.kernel.yes;

    FIX_EARLYCON_MEM = lib.kernel.yes;

    PGTABLE_LEVELS = lib.kernel.freeform "5";

    SMP = lib.kernel.yes;

    X86_X2APIC = lib.kernel.yes;
    X86_POSTED_MSI = lib.kernel.no;
    X86_MPPARSE = lib.kernel.yes;
    X86_CPU_RESCTRL = lib.kernel.no;
    X86_FRED = lib.kernel.yes;
    X86_EXTENDED_PLATFORM = lib.kernel.yes;
    X86_NUMACHIP = lib.kernel.no;
    X86_VSMP = lib.kernel.no;
    X86_UV = lib.kernel.no;
    X86_INTEL_MID = lib.kernel.no;
    X86_GOLDFISH = lib.kernel.no;
    X86_INTEL_LPSS = lib.kernel.no;
    X86_AMD_PLATFORM_DEVICE = lib.kernel.no;

    IOSF_MBI = lib.kernel.no;

    X86_SUPPORTS_MEMORY_FAILURE = lib.kernel.yes;

    SCHED_OMIT_FRAME_POINTER = lib.kernel.yes;

    HYPERVISOR_GUEST = lib.kernel.yes;

    PARAVIRT = lib.kernel.yes;
    PARAVIRT_SPINLOCKS = lib.kernel.no;

    X86_HV_CALLBACK_VECTOR = lib.kernel.yes;

    XEN = lib.kernel.no;

    KVM_GUEST = lib.kernel.yes;

    ARCH_CPUIDLE_HALTPOLL = lib.kernel.yes;

    PVH = lib.kernel.no;

    PARAVIRT_TIME_ACCOUNTING = lib.kernel.no;
    PARAVIRT_CLOCK = lib.kernel.yes;

    JAILHOUSE_GUEST = lib.kernel.no;

    ACRN_GUEST = lib.kernel.no;

    BHYVE_GUEST = lib.kernel.no;

    INTEL_TDX_GUEST = lib.kernel.no;

    CC_HAS_MARCH_NATIVE = lib.kernel.yes;

    X86_NATIVE_CPU = lib.kernel.no;
    X86_INTERNODE_CACHE_SHIFT = lib.kernel.freeform "6";
    X86_L1_CACHE_SHIFT = lib.kernel.freeform "6";
    X86_TSC = lib.kernel.yes;
    X86_HAVE_PAE = lib.kernel.yes;
    X86_CX8 = lib.kernel.yes;
    X86_CMOV = lib.kernel.yes;
    X86_MINIMUM_CPU_FAMILY = lib.kernel.freeform "64";
    X86_DEBUGCTLMSR = lib.kernel.yes;

    IA32_FEAT_CTL = lib.kernel.yes;

    X86_VMX_FEATURE_NAMES = lib.kernel.yes;

    PROCESSOR_SELECT = lib.kernel.no;

    CPU_SUP_INTEL = lib.kernel.yes;
    CPU_SUP_AMD = lib.kernel.yes;
    CPU_SUP_HYGON = lib.kernel.yes;
    CPU_SUP_CENTAUR = lib.kernel.yes;
    CPU_SUP_ZHAOXIN = lib.kernel.yes;

    BROADCAST_TLB_FLUSH = lib.kernel.yes;

    HPET_TIMER = lib.kernel.yes;
    HPET_EMULATE_RTC = lib.kernel.yes;

    DMI = lib.kernel.yes;

    GART_IOMMU = lib.kernel.no;

    BOOT_VESA_SUPPORT = lib.kernel.yes;

    MAXSMP = lib.kernel.no;

    NR_CPUS_RANGE_BEGIN = lib.kernel.freeform "2";
    NR_CPUS_RANGE_END = lib.kernel.freeform "512";
    NR_CPUS_DEFAULT = lib.kernel.freeform "64";
    NR_CPUS = lib.kernel.freeform "64";

    SCHED_MC_PRIO = lib.kernel.yes;

    X86_LOCAL_APIC = lib.kernel.yes;

    ACPI_MADT_WAKEUP = lib.kernel.yes;

    X86_IO_APIC = lib.kernel.yes;
    X86_REROUTE_FOR_BROKEN_BOOT_IRQS = lib.kernel.yes;
    X86_MCE = lib.kernel.yes;
    X86_MCELOG_LEGACY = lib.kernel.no;
    X86_MCE_INTEL = lib.kernel.yes;
    X86_MCE_AMD = lib.kernel.yes;
    X86_MCE_THRESHOLD = lib.kernel.yes;
    X86_MCE_INJECT = lib.kernel.no;

    PERF_EVENTS_INTEL_UNCORE = lib.kernel.yes;
    PERF_EVENTS_INTEL_RAPL = lib.kernel.yes;
    PERF_EVENTS_INTEL_CSTATE = lib.kernel.yes;
    PERF_EVENTS_AMD_POWER = lib.kernel.no;
    PERF_EVENTS_AMD_UNCORE = lib.kernel.yes;
    PERF_EVENTS_AMD_BRS = lib.kernel.no;

    X86_16BIT = lib.kernel.yes;
    X86_ESPFIX64 = lib.kernel.yes;
    X86_VSYSCALL_EMULATION = lib.kernel.yes;
    X86_IOPL_IOPERM = lib.kernel.yes;

    MICROCODE = lib.kernel.yes;
    MICROCODE_LATE_LOADING = lib.kernel.no;
    MICROCODE_DBG = lib.kernel.no;

    X86_MSR = lib.kernel.yes;
    X86_CPUID = lib.kernel.yes;
    X86_DIRECT_GBPAGES = lib.kernel.yes;
    X86_CPA_STATISTICS = lib.kernel.no;

    AMD_MEM_ENCRYPT = lib.kernel.no;

    NUMA = lib.kernel.yes;

    AMD_NUMA = lib.kernel.yes;

    X86_64_ACPI_NUMA = lib.kernel.yes;

    NODES_SHIFT = lib.kernel.freeform "6";

    ARCH_SPARSEMEM_ENABLE = lib.kernel.yes;
    ARCH_SPARSEMEM_DEFAULT = lib.kernel.yes;
    ARCH_PROC_KCORE_TEXT = lib.kernel.yes;

    ILLEGAL_POINTER_VALUE = lib.kernel.freeform "0xdead000000000000";

    X86_PMEM_LEGACY = lib.kernel.no;
    X86_CHECK_BIOS_CORRUPTION = lib.kernel.yes;
    X86_BOOTPARAM_MEMORY_CORRUPTION_CHECK = lib.kernel.yes;

    MTRR = lib.kernel.yes;
    MTRR_SANITIZER = lib.kernel.yes;
    MTRR_SANITIZER_ENABLE_DEFAULT = lib.kernel.freeform "0";
    MTRR_SANITIZER_SPARE_REG_NR_DEFAULT = lib.kernel.freeform "1";

    X86_PAT = lib.kernel.yes;
    X86_UMIP = lib.kernel.yes;

    CC_HAS_IBT = lib.kernel.yes;

    X86_CET = lib.kernel.yes;
    X86_KERNEL_IBT = lib.kernel.yes;
    X86_INTEL_MEMORY_PROTECTION_KEYS = lib.kernel.yes;

    ARCH_PKEY_BITS = lib.kernel.freeform "4";

    X86_INTEL_TSX_MODE_OFF = lib.kernel.no;
    X86_INTEL_TSX_MODE_ON = lib.kernel.no;
    X86_INTEL_TSX_MODE_AUTO = lib.kernel.yes;
    X86_SGX = lib.kernel.no;
    X86_USER_SHADOW_STACK = lib.kernel.no;

    INTEL_TDX_HOST = lib.kernel.no;

    EFI = lib.kernel.yes;
    EFI_STUB = lib.kernel.yes;
    EFI_HANDOVER_PROTOCOL = lib.kernel.yes;
    EFI_MIXED = lib.kernel.yes;
    EFI_RUNTIME_MAP = lib.kernel.yes;

    HZ_100 = lib.kernel.no;
    HZ_250 = lib.kernel.no;
    HZ_300 = lib.kernel.no;
    HZ_1000 = lib.kernel.yes;
    HZ = lib.kernel.freeform "1000";

    SCHED_HRTICK = lib.kernel.yes;

    ARCH_SUPPORTS_KEXEC = lib.kernel.yes;
    ARCH_SUPPORTS_KEXEC_FILE = lib.kernel.yes;
    ARCH_SELECTS_KEXEC_FILE = lib.kernel.yes;
    ARCH_SUPPORTS_KEXEC_PURGATORY = lib.kernel.yes;
    ARCH_SUPPORTS_KEXEC_SIG = lib.kernel.yes;
    ARCH_SUPPORTS_KEXEC_SIG_FORCE = lib.kernel.yes;
    ARCH_SUPPORTS_KEXEC_BZIMAGE_VERIFY_SIG = lib.kernel.yes;
    ARCH_SUPPORTS_KEXEC_JUMP = lib.kernel.yes;
    ARCH_SUPPORTS_KEXEC_HANDOVER = lib.kernel.yes;
    ARCH_SUPPORTS_CRASH_DUMP = lib.kernel.yes;
    ARCH_DEFAULT_CRASH_DUMP = lib.kernel.yes;
    ARCH_SUPPORTS_CRASH_HOTPLUG = lib.kernel.yes;
    ARCH_HAS_GENERIC_CRASHKERNEL_RESERVATION = lib.kernel.yes;

    PHYSICAL_START = lib.kernel.freeform "0x1000000";

    RELOCATABLE = lib.kernel.yes;

    RANDOMIZE_BASE = lib.kernel.yes;

    X86_NEED_RELOCS = lib.kernel.yes;

    PHYSICAL_ALIGN = lib.kernel.freeform "0x200000";

    RANDOMIZE_MEMORY = lib.kernel.yes;
    RANDOMIZE_MEMORY_PHYSICAL_PADDING = lib.kernel.freeform "0x0";

    HOTPLUG_CPU = lib.kernel.yes;

    LEGACY_VSYSCALL_XONLY = lib.kernel.yes;
    LEGACY_VSYSCALL_NONE = lib.kernel.no;

    CMDLINE_BOOL = lib.kernel.no;

    MODIFY_LDT_SYSCALL = lib.kernel.yes;

    STRICT_SIGALTSTACK_SIZE = lib.kernel.no;

    HAVE_LIVEPATCH = lib.kernel.yes;
    HAVE_KLP_BUILD = lib.kernel.yes;

    X86_BUS_LOCK_DETECT = lib.kernel.yes;

    CC_HAS_NAMED_AS = lib.kernel.yes;
    CC_HAS_NAMED_AS_FIXED_SANITIZERS = lib.kernel.yes;

    USE_X86_SEG_SUPPORT = lib.kernel.yes;

    CC_HAS_SLS = lib.kernel.yes;
    CC_HAS_RETURN_THUNK = lib.kernel.yes;
    CC_HAS_ENTRY_PADDING = lib.kernel.yes;

    FUNCTION_PADDING_CFI = lib.kernel.freeform "11";
    FUNCTION_PADDING_BYTES = lib.kernel.freeform "16";

    CALL_PADDING = lib.kernel.yes;

    HAVE_CALL_THUNKS = lib.kernel.yes;

    CALL_THUNKS = lib.kernel.yes;

    CPU_MITIGATIONS = lib.kernel.yes;

    MITIGATION_PAGE_TABLE_ISOLATION = lib.kernel.yes;
    MITIGATION_RETPOLINE = lib.kernel.yes;
    MITIGATION_RETHUNK = lib.kernel.yes;
    MITIGATION_UNRET_ENTRY = lib.kernel.yes;
    MITIGATION_CALL_DEPTH_TRACKING = lib.kernel.yes;

    CALL_THUNKS_DEBUG = lib.kernel.no;

    MITIGATION_IBPB_ENTRY = lib.kernel.yes;
    MITIGATION_IBRS_ENTRY = lib.kernel.yes;
    MITIGATION_SRSO = lib.kernel.yes;
    MITIGATION_SLS = lib.kernel.no;
    MITIGATION_GDS = lib.kernel.yes;
    MITIGATION_RFDS = lib.kernel.yes;
    MITIGATION_SPECTRE_BHI = lib.kernel.yes;
    MITIGATION_MDS = lib.kernel.yes;
    MITIGATION_TAA = lib.kernel.yes;
    MITIGATION_MMIO_STALE_DATA = lib.kernel.yes;
    MITIGATION_L1TF = lib.kernel.yes;
    MITIGATION_RETBLEED = lib.kernel.yes;
    MITIGATION_SPECTRE_V1 = lib.kernel.yes;
    MITIGATION_SPECTRE_V2 = lib.kernel.yes;
    MITIGATION_SRBDS = lib.kernel.yes;
    MITIGATION_SSB = lib.kernel.yes;
    MITIGATION_ITS = lib.kernel.yes;
    MITIGATION_TSA = lib.kernel.yes;
    MITIGATION_VMSCAPE = lib.kernel.yes;

    ARCH_HAS_ADD_PAGES = lib.kernel.yes;
    ARCH_HIBERNATION_HEADER = lib.kernel.yes;

    SUSPEND = lib.kernel.yes;
    SUSPEND_FREEZER = lib.kernel.yes;
    SUSPEND_SKIP_SYNC = lib.kernel.no;

    HIBERNATE_CALLBACKS = lib.kernel.yes;

    HIBERNATION = lib.kernel.yes;
    HIBERNATION_SNAPSHOT_DEV = lib.kernel.yes;
    HIBERNATION_COMP_LZO = lib.kernel.yes;
    HIBERNATION_COMP_LZ4 = lib.kernel.no;
    HIBERNATION_DEF_COMP = lib.kernel.freeform "lzo";

    PM_STD_PARTITION = lib.kernel.freeform "";
    PM_SLEEP = lib.kernel.yes;
    PM_SLEEP_SMP = lib.kernel.yes;
    PM_AUTOSLEEP = lib.kernel.no;
    PM_USERSPACE_AUTOSLEEP = lib.kernel.no;
    PM_WAKELOCKS = lib.kernel.no;
    PM_QOS_CPU_SYSTEM_WAKEUP = lib.kernel.no;
    PM = lib.kernel.yes;
    PM_DEBUG = lib.kernel.yes;
    PM_ADVANCED_DEBUG = lib.kernel.no;
    PM_TEST_SUSPEND = lib.kernel.no;
    PM_SLEEP_DEBUG = lib.kernel.yes;

    DPM_WATCHDOG = lib.kernel.no;

    PM_TRACE = lib.kernel.yes;
    PM_TRACE_RTC = lib.kernel.yes;
    PM_GENERIC_DOMAINS = lib.kernel.yes;

    WQ_POWER_EFFICIENT_DEFAULT = lib.kernel.no;

    PM_GENERIC_DOMAINS_SLEEP = lib.kernel.yes;

    ENERGY_MODEL = lib.kernel.yes;

    ARCH_SUPPORTS_ACPI = lib.kernel.yes;

    ACPI = lib.kernel.yes;
    ACPI_LEGACY_TABLES_LOOKUP = lib.kernel.yes;

    ARCH_MIGHT_HAVE_ACPI_PDC = lib.kernel.yes;

    ACPI_SYSTEM_POWER_STATES_SUPPORT = lib.kernel.yes;
    ACPI_TABLE_LIB = lib.kernel.yes;
    ACPI_THERMAL_LIB = lib.kernel.yes;
    ACPI_DEBUGGER = lib.kernel.no;
    ACPI_SPCR_TABLE = lib.kernel.yes;
    ACPI_FPDT = lib.kernel.yes;
    ACPI_LPIT = lib.kernel.yes;
    ACPI_SLEEP = lib.kernel.yes;
    ACPI_REV_OVERRIDE_POSSIBLE = lib.kernel.yes;
    ACPI_EC = lib.kernel.yes;
    ACPI_EC_DEBUGFS = lib.kernel.no;
    ACPI_AC = lib.kernel.yes;
    ACPI_BATTERY = lib.kernel.yes;
    ACPI_BUTTON = lib.kernel.yes;
    ACPI_VIDEO = lib.kernel.yes;
    ACPI_FAN = lib.kernel.yes;
    ACPI_TAD = lib.kernel.no;
    ACPI_DOCK = lib.kernel.yes;
    ACPI_CPU_FREQ_PSS = lib.kernel.yes;
    ACPI_PROCESSOR_CSTATE = lib.kernel.yes;
    ACPI_PROCESSOR_IDLE = lib.kernel.yes;
    ACPI_CPPC_LIB = lib.kernel.yes;
    ACPI_PROCESSOR = lib.kernel.yes;
    ACPI_HOTPLUG_CPU = lib.kernel.yes;
    ACPI_PROCESSOR_AGGREGATOR = lib.kernel.yes;
    ACPI_THERMAL = lib.kernel.yes;
    ACPI_PLATFORM_PROFILE = lib.kernel.yes;

    ARCH_HAS_ACPI_TABLE_UPGRADE = lib.kernel.yes;

    ACPI_TABLE_UPGRADE = lib.kernel.yes;
    ACPI_DEBUG = lib.kernel.yes;
    ACPI_PCI_SLOT = lib.kernel.yes;
    ACPI_CONTAINER = lib.kernel.yes;
    ACPI_HOTPLUG_IOAPIC = lib.kernel.yes;
    ACPI_SBS = lib.kernel.yes;
    ACPI_HED = lib.kernel.yes;
    ACPI_BGRT = lib.kernel.yes;
    ACPI_REDUCED_HARDWARE_ONLY = lib.kernel.no;
    ACPI_NHLT = lib.kernel.yes;
    ACPI_NFIT = lib.kernel.no;
    ACPI_NUMA = lib.kernel.yes;
    ACPI_HMAT = lib.kernel.yes;

    HAVE_ACPI_APEI = lib.kernel.yes;
    HAVE_ACPI_APEI_NMI = lib.kernel.yes;

    ACPI_APEI = lib.kernel.yes;
    ACPI_APEI_GHES = lib.kernel.no;
    ACPI_APEI_EINJ = lib.kernel.no;
    ACPI_APEI_ERST_DEBUG = lib.kernel.no;
    ACPI_DPTF = lib.kernel.yes;

    DPTF_POWER = lib.kernel.module;
    DPTF_PCH_FIVR = lib.kernel.module;

    ACPI_WATCHDOG = lib.kernel.yes;
    ACPI_CONFIGFS = lib.kernel.no;
    ACPI_PFRUT = lib.kernel.no;
    ACPI_PCC = lib.kernel.yes;
    ACPI_FFH = lib.kernel.yes;
    ACPI_MRRM = lib.kernel.yes;

    PMIC_OPREGION = lib.kernel.yes;

    ACPI_VIOT = lib.kernel.yes;
    ACPI_PRMT = lib.kernel.yes;

    X86_PM_TIMER = lib.kernel.yes;

    CPU_FREQ = lib.kernel.yes;
    CPU_FREQ_GOV_ATTR_SET = lib.kernel.yes;
    CPU_FREQ_GOV_COMMON = lib.kernel.yes;
    CPU_FREQ_STAT = lib.kernel.no;
    CPU_FREQ_DEFAULT_GOV_PERFORMANCE = lib.kernel.no;
    CPU_FREQ_DEFAULT_GOV_POWERSAVE = lib.kernel.no;
    CPU_FREQ_DEFAULT_GOV_USERSPACE = lib.kernel.yes;
    CPU_FREQ_DEFAULT_GOV_SCHEDUTIL = lib.kernel.no;
    CPU_FREQ_GOV_PERFORMANCE = lib.kernel.yes;
    CPU_FREQ_GOV_POWERSAVE = lib.kernel.no;
    CPU_FREQ_GOV_USERSPACE = lib.kernel.yes;
    CPU_FREQ_GOV_ONDEMAND = lib.kernel.yes;
    CPU_FREQ_GOV_CONSERVATIVE = lib.kernel.no;
    CPU_FREQ_GOV_SCHEDUTIL = lib.kernel.yes;

    X86_INTEL_PSTATE = lib.kernel.yes;
    X86_PCC_CPUFREQ = lib.kernel.no;
    X86_AMD_PSTATE = lib.kernel.yes;
    X86_AMD_PSTATE_DEFAULT_MODE = lib.kernel.freeform "3";
    X86_AMD_PSTATE_UT = lib.kernel.no;
    X86_ACPI_CPUFREQ = lib.kernel.yes;
    X86_ACPI_CPUFREQ_CPB = lib.kernel.yes;
    X86_POWERNOW_K8 = lib.kernel.no;
    X86_AMD_FREQ_SENSITIVITY = lib.kernel.no;
    X86_SPEEDSTEP_CENTRINO = lib.kernel.no;
    X86_P4_CLOCKMOD = lib.kernel.no;

    CPUFREQ_ARCH_CUR_FREQ = lib.kernel.yes;

    CPU_IDLE = lib.kernel.yes;
    CPU_IDLE_GOV_LADDER = lib.kernel.no;
    CPU_IDLE_GOV_MENU = lib.kernel.yes;
    CPU_IDLE_GOV_TEO = lib.kernel.no;
    CPU_IDLE_GOV_HALTPOLL = lib.kernel.yes;

    HALTPOLL_CPUIDLE = lib.kernel.yes;

    INTEL_IDLE = lib.kernel.yes;

    PCI_DIRECT = lib.kernel.yes;
    PCI_MMCONFIG = lib.kernel.yes;

    MMCONF_FAM10H = lib.kernel.yes;

    ISA_BUS = lib.kernel.no;
    ISA_DMA_API = lib.kernel.yes;

    AMD_NB = lib.kernel.yes;
    AMD_NODE = lib.kernel.yes;

    IA32_EMULATION = lib.kernel.no;

    X86_X32_ABI = lib.kernel.no;

    KVM_COMMON = lib.kernel.yes;

    HAVE_KVM_PFNCACHE = lib.kernel.yes;
    HAVE_KVM_IRQCHIP = lib.kernel.yes;
    HAVE_KVM_IRQ_ROUTING = lib.kernel.yes;
    HAVE_KVM_DIRTY_RING = lib.kernel.yes;
    HAVE_KVM_DIRTY_RING_TSO = lib.kernel.yes;
    HAVE_KVM_DIRTY_RING_ACQ_REL = lib.kernel.yes;

    KVM_MMIO = lib.kernel.yes;
    KVM_ASYNC_PF = lib.kernel.yes;

    HAVE_KVM_MSI = lib.kernel.yes;
    HAVE_KVM_READONLY_MEM = lib.kernel.yes;
    HAVE_KVM_CPU_RELAX_INTERCEPT = lib.kernel.yes;

    KVM_VFIO = lib.kernel.yes;
    KVM_GENERIC_DIRTYLOG_READ_PROTECT = lib.kernel.yes;
    KVM_GENERIC_PRE_FAULT_MEMORY = lib.kernel.yes;

    HAVE_KVM_IRQ_BYPASS = lib.kernel.yes;
    HAVE_KVM_NO_POLL = lib.kernel.yes;

    VIRT_XFER_TO_GUEST_WORK = lib.kernel.yes;

    HAVE_KVM_PM_NOTIFIER = lib.kernel.yes;

    KVM_GENERIC_HARDWARE_ENABLING = lib.kernel.yes;
    KVM_ELIDE_TLB_FLUSH_IF_YOUNG = lib.kernel.yes;
    KVM_MMU_LOCKLESS_AGING = lib.kernel.yes;
    KVM_GUEST_MEMFD = lib.kernel.yes;

    VIRTUALIZATION = lib.kernel.yes;

    KVM_X86 = lib.kernel.yes;
    KVM = lib.kernel.yes;
    KVM_WERROR = lib.kernel.yes;
    KVM_SW_PROTECTED_VM = lib.kernel.no;
    KVM_INTEL = lib.kernel.yes;
    KVM_INTEL_PROVE_VE = lib.kernel.no;
    KVM_AMD = lib.kernel.yes;
    KVM_IOAPIC = lib.kernel.yes;
    KVM_SMM = lib.kernel.yes;
    KVM_HYPERV = lib.kernel.yes;
    KVM_XEN = lib.kernel.yes;
    KVM_PROVE_MMU = lib.kernel.no;
    KVM_MAX_NR_VCPUS = lib.kernel.freeform "1024";

    X86_REQUIRED_FEATURE_ALWAYS = lib.kernel.yes;
    X86_REQUIRED_FEATURE_NOPL = lib.kernel.yes;
    X86_REQUIRED_FEATURE_CX8 = lib.kernel.yes;
    X86_REQUIRED_FEATURE_CMOV = lib.kernel.yes;
    X86_REQUIRED_FEATURE_CPUID = lib.kernel.yes;
    X86_REQUIRED_FEATURE_FPU = lib.kernel.yes;
    X86_REQUIRED_FEATURE_PAE = lib.kernel.yes;
    X86_REQUIRED_FEATURE_PSE = lib.kernel.yes;
    X86_REQUIRED_FEATURE_PGE = lib.kernel.yes;
    X86_REQUIRED_FEATURE_MSR = lib.kernel.yes;
    X86_REQUIRED_FEATURE_FXSR = lib.kernel.yes;
    X86_REQUIRED_FEATURE_XMM = lib.kernel.yes;
    X86_REQUIRED_FEATURE_XMM2 = lib.kernel.yes;
    X86_REQUIRED_FEATURE_LM = lib.kernel.yes;
    X86_DISABLED_FEATURE_VME = lib.kernel.yes;
    X86_DISABLED_FEATURE_K6_MTRR = lib.kernel.yes;
    X86_DISABLED_FEATURE_CYRIX_ARR = lib.kernel.yes;
    X86_DISABLED_FEATURE_CENTAUR_MCR = lib.kernel.yes;
    X86_DISABLED_FEATURE_LAM = lib.kernel.yes;
    X86_DISABLED_FEATURE_SGX = lib.kernel.yes;
    X86_DISABLED_FEATURE_XENPV = lib.kernel.yes;
    X86_DISABLED_FEATURE_TDX_GUEST = lib.kernel.yes;
    X86_DISABLED_FEATURE_USER_SHSTK = lib.kernel.yes;
    X86_DISABLED_FEATURE_SEV_SNP = lib.kernel.yes;

    AS_WRUSS = lib.kernel.yes;

    ARCH_CONFIGURES_CPU_MITIGATIONS = lib.kernel.yes;

    HOTPLUG_SMT = lib.kernel.yes;

    ARCH_SUPPORTS_SCHED_SMT = lib.kernel.yes;
    ARCH_SUPPORTS_SCHED_CLUSTER = lib.kernel.yes;
    ARCH_SUPPORTS_SCHED_MC = lib.kernel.yes;

    SCHED_SMT = lib.kernel.yes;
    SCHED_CLUSTER = lib.kernel.yes;
    SCHED_MC = lib.kernel.yes;

    HOTPLUG_CORE_SYNC = lib.kernel.yes;
    HOTPLUG_CORE_SYNC_DEAD = lib.kernel.yes;
    HOTPLUG_CORE_SYNC_FULL = lib.kernel.yes;
    HOTPLUG_SPLIT_STARTUP = lib.kernel.yes;
    HOTPLUG_PARALLEL = lib.kernel.yes;

    GENERIC_IRQ_ENTRY = lib.kernel.yes;
    GENERIC_SYSCALL = lib.kernel.yes;
    GENERIC_ENTRY = lib.kernel.yes;

    KPROBES = lib.kernel.yes;

    JUMP_LABEL = lib.kernel.yes;

    STATIC_KEYS_SELFTEST = lib.kernel.no;
    STATIC_CALL_SELFTEST = lib.kernel.no;

    OPTPROBES = lib.kernel.yes;

    UPROBES = lib.kernel.yes;

    HAVE_EFFICIENT_UNALIGNED_ACCESS = lib.kernel.yes;

    ARCH_USE_BUILTIN_BSWAP = lib.kernel.yes;

    KRETPROBES = lib.kernel.yes;

    KRETPROBE_ON_RETHOOK = lib.kernel.yes;

    USER_RETURN_NOTIFIER = lib.kernel.yes;

    HAVE_IOREMAP_PROT = lib.kernel.yes;
    HAVE_KPROBES = lib.kernel.yes;
    HAVE_KRETPROBES = lib.kernel.yes;
    HAVE_OPTPROBES = lib.kernel.yes;
    HAVE_KPROBES_ON_FTRACE = lib.kernel.yes;

    ARCH_CORRECT_STACKTRACE_ON_KRETPROBE = lib.kernel.yes;

    HAVE_FUNCTION_ERROR_INJECTION = lib.kernel.yes;
    HAVE_NMI = lib.kernel.yes;

    TRACE_IRQFLAGS_SUPPORT = lib.kernel.yes;
    TRACE_IRQFLAGS_NMI_SUPPORT = lib.kernel.yes;

    HAVE_ARCH_TRACEHOOK = lib.kernel.yes;
    HAVE_DMA_CONTIGUOUS = lib.kernel.yes;

    GENERIC_SMP_IDLE_THREAD = lib.kernel.yes;

    ARCH_HAS_FORTIFY_SOURCE = lib.kernel.yes;
    ARCH_HAS_SET_MEMORY = lib.kernel.yes;
    ARCH_HAS_SET_DIRECT_MAP = lib.kernel.yes;
    ARCH_HAS_CPU_FINALIZE_INIT = lib.kernel.yes;
    ARCH_HAS_CPU_PASID = lib.kernel.yes;

    HAVE_ARCH_THREAD_STRUCT_WHITELIST = lib.kernel.yes;

    ARCH_WANTS_DYNAMIC_TASK_STRUCT = lib.kernel.yes;
    ARCH_WANTS_NO_INSTR = lib.kernel.yes;
    ARCH_MEMORY_ORDER_TSO = lib.kernel.yes;

    HAVE_ASM_MODVERSIONS = lib.kernel.yes;
    HAVE_REGS_AND_STACK_ACCESS_API = lib.kernel.yes;
    HAVE_RSEQ = lib.kernel.yes;
    HAVE_RUST = lib.kernel.yes;
    HAVE_FUNCTION_ARG_ACCESS_API = lib.kernel.yes;
    HAVE_HW_BREAKPOINT = lib.kernel.yes;
    HAVE_MIXED_BREAKPOINTS_REGS = lib.kernel.yes;
    HAVE_USER_RETURN_NOTIFIER = lib.kernel.yes;
    HAVE_PERF_EVENTS_NMI = lib.kernel.yes;
    HAVE_HARDLOCKUP_DETECTOR_PERF = lib.kernel.yes;

    UNWIND_USER = lib.kernel.yes;

    HAVE_UNWIND_USER_FP = lib.kernel.yes;
    HAVE_PERF_REGS = lib.kernel.yes;
    HAVE_PERF_USER_STACK_DUMP = lib.kernel.yes;
    HAVE_ARCH_JUMP_LABEL = lib.kernel.yes;
    HAVE_ARCH_JUMP_LABEL_RELATIVE = lib.kernel.yes;

    MMU_GATHER_TABLE_FREE = lib.kernel.yes;
    MMU_GATHER_RCU_TABLE_FREE = lib.kernel.yes;
    MMU_GATHER_MERGE_VMAS = lib.kernel.yes;

    ARCH_WANT_IRQS_OFF_ACTIVATE_MM = lib.kernel.yes;

    MMU_LAZY_TLB_REFCOUNT = lib.kernel.yes;

    ARCH_HAVE_NMI_SAFE_CMPXCHG = lib.kernel.yes;
    ARCH_HAVE_EXTRA_ELF_NOTES = lib.kernel.yes;
    ARCH_HAS_NMI_SAFE_THIS_CPU_OPS = lib.kernel.yes;

    HAVE_ALIGNED_STRUCT_PAGE = lib.kernel.yes;
    HAVE_CMPXCHG_LOCAL = lib.kernel.yes;
    HAVE_CMPXCHG_DOUBLE = lib.kernel.yes;
    HAVE_ARCH_SECCOMP = lib.kernel.yes;
    HAVE_ARCH_SECCOMP_FILTER = lib.kernel.yes;

    SECCOMP = lib.kernel.yes;
    SECCOMP_FILTER = lib.kernel.yes;
    SECCOMP_CACHE_DEBUG = lib.kernel.no;

    HAVE_ARCH_KSTACK_ERASE = lib.kernel.yes;
    HAVE_STACKPROTECTOR = lib.kernel.yes;

    STACKPROTECTOR = lib.kernel.yes;
    STACKPROTECTOR_STRONG = lib.kernel.yes;

    ARCH_SUPPORTS_LTO_CLANG = lib.kernel.yes;
    ARCH_SUPPORTS_LTO_CLANG_THIN = lib.kernel.yes;

    LTO_NONE = lib.kernel.yes;

    ARCH_SUPPORTS_CFI = lib.kernel.yes;

    HAVE_ARCH_WITHIN_STACK_FRAMES = lib.kernel.yes;
    HAVE_CONTEXT_TRACKING_USER = lib.kernel.yes;
    HAVE_CONTEXT_TRACKING_USER_OFFSTACK = lib.kernel.yes;
    HAVE_VIRT_CPU_ACCOUNTING_GEN = lib.kernel.yes;
    HAVE_IRQ_TIME_ACCOUNTING = lib.kernel.yes;
    HAVE_PV_STEAL_CLOCK_GEN = lib.kernel.yes;
    HAVE_MOVE_PUD = lib.kernel.yes;
    HAVE_MOVE_PMD = lib.kernel.yes;
    HAVE_ARCH_TRANSPARENT_HUGEPAGE = lib.kernel.yes;
    HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD = lib.kernel.yes;
    HAVE_ARCH_HUGE_VMAP = lib.kernel.yes;
    HAVE_ARCH_HUGE_VMALLOC = lib.kernel.yes;

    ARCH_WANT_HUGE_PMD_SHARE = lib.kernel.yes;

    HAVE_ARCH_SOFT_DIRTY = lib.kernel.yes;
    HAVE_MOD_ARCH_SPECIFIC = lib.kernel.yes;

    MODULES_USE_ELF_RELA = lib.kernel.yes;

    ARCH_HAS_EXECMEM_ROX = lib.kernel.yes;

    HAVE_IRQ_EXIT_ON_IRQ_STACK = lib.kernel.yes;
    HAVE_SOFTIRQ_ON_OWN_STACK = lib.kernel.yes;

    ARCH_HAS_ELF_RANDOMIZE = lib.kernel.yes;

    HAVE_ARCH_MMAP_RND_BITS = lib.kernel.yes;
    HAVE_EXIT_THREAD = lib.kernel.yes;

    ARCH_MMAP_RND_BITS = lib.kernel.freeform "28";

    HAVE_PAGE_SIZE_4KB = lib.kernel.yes;

    PAGE_SIZE_4KB = lib.kernel.yes;
    PAGE_SIZE_LESS_THAN_64KB = lib.kernel.yes;
    PAGE_SIZE_LESS_THAN_256KB = lib.kernel.yes;
    PAGE_SHIFT = lib.kernel.freeform "12";

    HAVE_OBJTOOL = lib.kernel.yes;
    HAVE_JUMP_LABEL_HACK = lib.kernel.yes;
    HAVE_NOINSTR_HACK = lib.kernel.yes;
    HAVE_NOINSTR_VALIDATION = lib.kernel.yes;
    HAVE_UACCESS_VALIDATION = lib.kernel.yes;
    HAVE_STACK_VALIDATION = lib.kernel.yes;
    HAVE_RELIABLE_STACKTRACE = lib.kernel.yes;

    ISA_BUS_API = lib.kernel.yes;

    COMPAT_32BIT_TIME = lib.kernel.no;

    ARCH_SUPPORTS_RT = lib.kernel.yes;

    HAVE_ARCH_VMAP_STACK = lib.kernel.yes;

    VMAP_STACK = lib.kernel.yes;

    HAVE_ARCH_RANDOMIZE_KSTACK_OFFSET = lib.kernel.yes;

    RANDOMIZE_KSTACK_OFFSET = lib.kernel.yes;
    RANDOMIZE_KSTACK_OFFSET_DEFAULT = lib.kernel.no;

    ARCH_HAS_STRICT_KERNEL_RWX = lib.kernel.yes;

    STRICT_KERNEL_RWX = lib.kernel.yes;

    ARCH_HAS_STRICT_MODULE_RWX = lib.kernel.yes;

    STRICT_MODULE_RWX = lib.kernel.yes;

    HAVE_ARCH_PREL32_RELOCATIONS = lib.kernel.yes;

    ARCH_USE_MEMREMAP_PROT = lib.kernel.yes;

    LOCK_EVENT_COUNTS = lib.kernel.no;

    ARCH_HAS_MEM_ENCRYPT = lib.kernel.yes;

    HAVE_STATIC_CALL = lib.kernel.yes;
    HAVE_STATIC_CALL_INLINE = lib.kernel.yes;
    HAVE_PREEMPT_DYNAMIC = lib.kernel.yes;
    HAVE_PREEMPT_DYNAMIC_CALL = lib.kernel.yes;

    ARCH_WANT_LD_ORPHAN_WARN = lib.kernel.yes;
    ARCH_SUPPORTS_DEBUG_PAGEALLOC = lib.kernel.yes;
    ARCH_SUPPORTS_PAGE_TABLE_CHECK = lib.kernel.yes;
    ARCH_HAS_ELFCORE_COMPAT = lib.kernel.yes;
    ARCH_HAS_PARANOID_L1D_FLUSH = lib.kernel.yes;

    DYNAMIC_SIGFRAME = lib.kernel.yes;

    ARCH_HAS_HW_PTE_YOUNG = lib.kernel.yes;
    ARCH_HAS_NONLEAF_PMD_YOUNG = lib.kernel.yes;
    ARCH_HAS_KERNEL_FPU_SUPPORT = lib.kernel.yes;
    ARCH_VMLINUX_NEEDS_RELOCS = lib.kernel.yes;

    HAVE_GENERIC_TIF_BITS = lib.kernel.yes;

    GCOV_KERNEL = lib.kernel.no;

    ARCH_HAS_GCOV_PROFILE_ALL = lib.kernel.yes;

    HAVE_GCC_PLUGINS = lib.kernel.yes;

    GCC_PLUGINS = lib.kernel.yes;
    GCC_PLUGIN_LATENT_ENTROPY = lib.kernel.no;

    FUNCTION_ALIGNMENT_4B = lib.kernel.yes;
    FUNCTION_ALIGNMENT_16B = lib.kernel.yes;
    FUNCTION_ALIGNMENT = lib.kernel.freeform "16";

    CC_HAS_MIN_FUNCTION_ALIGNMENT = lib.kernel.yes;
    CC_HAS_SANE_FUNCTION_ALIGNMENT = lib.kernel.yes;

    ARCH_HAS_CPU_ATTACK_VECTORS = lib.kernel.yes;

    HAVE_ARCH_GET_SECUREBOOT = lib.kernel.yes;

    RT_MUTEXES = lib.kernel.yes;

    MODULES = lib.kernel.yes;

    MODULE_DEBUG = lib.kernel.no;
    MODULE_FORCE_LOAD = lib.kernel.no;
    MODULE_UNLOAD = lib.kernel.yes;
    MODULE_FORCE_UNLOAD = lib.kernel.yes;
    MODULE_UNLOAD_TAINT_TRACKING = lib.kernel.no;

    MODVERSIONS = lib.kernel.yes;

    GENKSYMS = lib.kernel.yes;

    ASM_MODVERSIONS = lib.kernel.yes;

    EXTENDED_MODVERSIONS = lib.kernel.no;

    BASIC_MODVERSIONS = lib.kernel.yes;

    MODULE_SRCVERSION_ALL = lib.kernel.no;
    MODULE_SIG = lib.kernel.no;
    MODULE_COMPRESS = lib.kernel.no;
    MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS = lib.kernel.no;

    MODPROBE_PATH = lib.kernel.freeform "/sbin/modprobe";

    TRIM_UNUSED_KSYMS = lib.kernel.no;

    MODULES_TREE_LOOKUP = lib.kernel.yes;

    BLOCK = lib.kernel.yes;
    BLOCK_LEGACY_AUTOLOAD = lib.kernel.yes;

    BLK_RQ_ALLOC_TIME = lib.kernel.yes;
    BLK_CGROUP_RWSTAT = lib.kernel.yes;
    BLK_CGROUP_PUNT_BIO = lib.kernel.yes;
    BLK_DEV_BSG_COMMON = lib.kernel.yes;
    BLK_ICQ = lib.kernel.yes;
    BLK_DEV_BSGLIB = lib.kernel.yes;
    BLK_DEV_INTEGRITY = lib.kernel.no;
    BLK_DEV_WRITE_MOUNTED = lib.kernel.yes;
    BLK_DEV_ZONED = lib.kernel.no;
    BLK_DEV_THROTTLING = lib.kernel.no;
    BLK_WBT = lib.kernel.no;
    BLK_CGROUP_IOLATENCY = lib.kernel.yes;
    BLK_CGROUP_IOCOST = lib.kernel.yes;
    BLK_CGROUP_IOPRIO = lib.kernel.yes;
    BLK_DEBUG_FS = lib.kernel.yes;
    BLK_SED_OPAL = lib.kernel.no;
    BLK_INLINE_ENCRYPTION = lib.kernel.no;

    PARTITION_ADVANCED = lib.kernel.no;

    MSDOS_PARTITION = lib.kernel.yes;

    EFI_PARTITION = lib.kernel.yes;

    BLK_PM = lib.kernel.yes;

    BLOCK_HOLDER_DEPRECATED = lib.kernel.yes;

    BLK_MQ_STACKING = lib.kernel.yes;
    BLK_ERROR_INJECTION = lib.kernel.no;

    MQ_IOSCHED_DEADLINE = lib.kernel.yes;
    MQ_IOSCHED_KYBER = lib.kernel.yes;

    IOSCHED_BFQ = lib.kernel.yes;

    BFQ_GROUP_IOSCHED = lib.kernel.yes;
    BFQ_CGROUP_DEBUG = lib.kernel.no;

    PREEMPT_NOTIFIERS = lib.kernel.yes;

    PADATA = lib.kernel.yes;

    ASN1 = lib.kernel.yes;

    UNINLINE_SPIN_UNLOCK = lib.kernel.yes;

    ARCH_SUPPORTS_ATOMIC_RMW = lib.kernel.yes;

    MUTEX_SPIN_ON_OWNER = lib.kernel.yes;

    RWSEM_SPIN_ON_OWNER = lib.kernel.yes;

    LOCK_SPIN_ON_OWNER = lib.kernel.yes;

    ARCH_USE_QUEUED_SPINLOCKS = lib.kernel.yes;

    QUEUED_SPINLOCKS = lib.kernel.yes;

    ARCH_USE_QUEUED_RWLOCKS = lib.kernel.yes;
    ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE = lib.kernel.yes;
    ARCH_HAS_SYNC_CORE_BEFORE_USERMODE = lib.kernel.yes;
    ARCH_HAS_SYSCALL_WRAPPER = lib.kernel.yes;

    FREEZER = lib.kernel.yes;

    BINFMT_ELF = lib.kernel.yes;

    ELFCORE = lib.kernel.yes;

    CORE_DUMP_DEFAULT_ELF_HEADERS = lib.kernel.yes;

    BINFMT_SCRIPT = lib.kernel.yes;
    BINFMT_MISC = lib.kernel.yes;

    COREDUMP = lib.kernel.yes;

    SWAP = lib.kernel.yes;

    ZSWAP = lib.kernel.no;

    SLUB = lib.kernel.yes;

    KVFREE_RCU_BATCHED = lib.kernel.yes;

    SLUB_TINY = lib.kernel.no;

    SLAB_MERGE_DEFAULT = lib.kernel.yes;
    SLAB_FREELIST_RANDOM = lib.kernel.no;
    SLAB_FREELIST_HARDENED = lib.kernel.no;
    SLAB_BUCKETS = lib.kernel.no;

    SLUB_STATS = lib.kernel.no;

    KMALLOC_PARTITION_CACHES = lib.kernel.no;

    SHUFFLE_PAGE_ALLOCATOR = lib.kernel.no;

    COMPAT_BRK = lib.kernel.yes;

    SPARSEMEM = lib.kernel.yes;
    SPARSEMEM_EXTREME = lib.kernel.yes;
    SPARSEMEM_VMEMMAP_ENABLE = lib.kernel.yes;
    SPARSEMEM_VMEMMAP = lib.kernel.yes;
    SPARSEMEM_VMEMMAP_PREINIT = lib.kernel.yes;

    ARCH_WANT_OPTIMIZE_DAX_VMEMMAP = lib.kernel.yes;
    ARCH_WANT_OPTIMIZE_HUGETLB_VMEMMAP = lib.kernel.yes;
    ARCH_WANT_HUGETLB_VMEMMAP_PREINIT = lib.kernel.yes;

    HAVE_GUP_FAST = lib.kernel.yes;

    MEMBLOCK_KHO_SCRATCH = lib.kernel.yes;

    NUMA_KEEP_MEMINFO = lib.kernel.yes;

    MEMORY_ISOLATION = lib.kernel.yes;

    EXCLUSIVE_SYSTEM_RAM = lib.kernel.yes;

    ARCH_ENABLE_MEMORY_HOTPLUG = lib.kernel.yes;

    MEMORY_HOTPLUG = lib.kernel.no;

    ARCH_MHP_MEMMAP_ON_MEMORY_ENABLE = lib.kernel.yes;

    SPLIT_PTE_PTLOCKS = lib.kernel.yes;

    ARCH_ENABLE_SPLIT_PMD_PTLOCK = lib.kernel.yes;

    SPLIT_PMD_PTLOCKS = lib.kernel.yes;

    BALLOON = lib.kernel.yes;
    BALLOON_MIGRATION = lib.kernel.yes;

    COMPACTION = lib.kernel.yes;

    COMPACT_UNEVICTABLE_DEFAULT = lib.kernel.freeform "0";

    PAGE_REPORTING = lib.kernel.yes;

    NUMA_MIGRATION = lib.kernel.yes;

    MIGRATION = lib.kernel.yes;

    ARCH_ENABLE_HUGEPAGE_MIGRATION = lib.kernel.yes;

    CONTIG_ALLOC = lib.kernel.yes;

    PCP_BATCH_SCALE_MAX = lib.kernel.freeform "5";

    PHYS_ADDR_T_64BIT = lib.kernel.yes;

    MMU_NOTIFIER = lib.kernel.yes;

    KSM = lib.kernel.yes;

    DEFAULT_MMAP_MIN_ADDR = lib.kernel.freeform "4096";

    ARCH_SUPPORTS_MEMORY_FAILURE = lib.kernel.yes;

    MEMORY_FAILURE = lib.kernel.no;

    ARCH_WANT_GENERAL_HUGETLB = lib.kernel.yes;
    ARCH_WANTS_THP_SWAP = lib.kernel.yes;

    PAGE_MAPCOUNT = lib.kernel.yes;

    PGTABLE_HAS_HUGE_LEAVES = lib.kernel.yes;

    HAVE_GIGANTIC_FOLIOS = lib.kernel.yes;

    ASYNC_KERNEL_PGTABLE_FREE = lib.kernel.yes;

    NEED_PER_CPU_EMBED_FIRST_CHUNK = lib.kernel.yes;
    NEED_PER_CPU_PAGE_FIRST_CHUNK = lib.kernel.yes;

    USE_PERCPU_NUMA_NODE_ID = lib.kernel.yes;

    HAVE_SETUP_PER_CPU_AREA = lib.kernel.yes;

    CMA = lib.kernel.yes;
    CMA_DEBUGFS = lib.kernel.no;
    CMA_SYSFS = lib.kernel.no;
    CMA_AREAS = lib.kernel.freeform "20";

    PAGE_BLOCK_MAX_ORDER = lib.kernel.freeform "10";

    MEM_SOFT_DIRTY = lib.kernel.no;

    GENERIC_EARLY_IOREMAP = lib.kernel.yes;

    DEFERRED_STRUCT_PAGE_INIT = lib.kernel.no;

    IDLE_PAGE_TRACKING = lib.kernel.no;

    ARCH_HAS_CACHE_LINE_SIZE = lib.kernel.yes;
    ARCH_HAS_CURRENT_STACK_POINTER = lib.kernel.yes;
    ARCH_HAS_ZONE_DMA_SET = lib.kernel.yes;

    ZONE_DMA = lib.kernel.yes;
    ZONE_DMA32 = lib.kernel.yes;

    HMM_MIRROR = lib.kernel.yes;

    GET_FREE_REGION = lib.kernel.yes;

    VMAP_PFN = lib.kernel.yes;

    ARCH_USES_HIGH_VMA_FLAGS = lib.kernel.yes;
    ARCH_HAS_PKEYS = lib.kernel.yes;
    ARCH_USES_PG_ARCH_2 = lib.kernel.yes;

    VM_EVENT_COUNTERS = lib.kernel.yes;

    PERCPU_STATS = lib.kernel.no;

    GUP_TEST = lib.kernel.no;

    DMAPOOL_TEST = lib.kernel.no;

    ARCH_HAS_PTE_SPECIAL = lib.kernel.yes;

    MAPPING_DIRTY_HELPERS = lib.kernel.yes;

    MEMFD_CREATE = lib.kernel.yes;

    SECRETMEM = lib.kernel.yes;

    ANON_VMA_NAME = lib.kernel.no;

    USERFAULTFD = lib.kernel.no;

    LRU_GEN = lib.kernel.no;

    ARCH_SUPPORTS_PER_VMA_LOCK = lib.kernel.yes;

    PER_VMA_LOCK = lib.kernel.yes;

    LOCK_MM_AND_FIND_VMA = lib.kernel.yes;

    IOMMU_MM_DATA = lib.kernel.yes;

    EXECMEM = lib.kernel.yes;

    NUMA_MEMBLKS = lib.kernel.yes;
    NUMA_EMU = lib.kernel.no;

    PT_RECLAIM = lib.kernel.yes;

    DAMON = lib.kernel.no;

    NET = lib.kernel.yes;
    NET_INGRESS = lib.kernel.yes;
    NET_EGRESS = lib.kernel.yes;
    NET_XGRESS = lib.kernel.yes;

    SKB_EXTENSIONS = lib.kernel.yes;

    NET_DEVMEM = lib.kernel.yes;
    NET_CRC32C = lib.kernel.yes;

    PACKET = lib.kernel.yes;
    PACKET_DIAG = lib.kernel.no;

    INET_PSP = lib.kernel.no;

    UNIX = lib.kernel.yes;

    AF_UNIX_OOB = lib.kernel.yes;

    UNIX_DIAG = lib.kernel.no;

    TLS = lib.kernel.no;

    XFRM = lib.kernel.yes;
    XFRM_ALGO = lib.kernel.yes;
    XFRM_USER = lib.kernel.yes;
    XFRM_INTERFACE = lib.kernel.no;
    XFRM_SUB_POLICY = lib.kernel.no;
    XFRM_MIGRATE = lib.kernel.no;
    XFRM_STATISTICS = lib.kernel.no;
    XFRM_AH = lib.kernel.yes;
    XFRM_ESP = lib.kernel.yes;

    NET_KEY = lib.kernel.no;

    XFRM_IPTFS = lib.kernel.no;

    DIBS = lib.kernel.no;

    NET_HANDSHAKE = lib.kernel.yes;

    INET = lib.kernel.yes;

    IP_MULTICAST = lib.kernel.yes;
    IP_ADVANCED_ROUTER = lib.kernel.yes;
    IP_FIB_TRIE_STATS = lib.kernel.no;
    IP_MULTIPLE_TABLES = lib.kernel.yes;
    IP_ROUTE_MULTIPATH = lib.kernel.yes;
    IP_ROUTE_VERBOSE = lib.kernel.yes;
    IP_PNP = lib.kernel.yes;
    IP_PNP_DHCP = lib.kernel.yes;
    IP_PNP_BOOTP = lib.kernel.yes;
    IP_PNP_RARP = lib.kernel.yes;

    NET_IPIP = lib.kernel.no;
    NET_IPGRE_DEMUX = lib.kernel.no;
    NET_IP_TUNNEL = lib.kernel.module;

    IP_MROUTE_COMMON = lib.kernel.yes;
    IP_MROUTE = lib.kernel.yes;
    IP_MROUTE_MULTIPLE_TABLES = lib.kernel.no;
    IP_PIMSM_V1 = lib.kernel.yes;
    IP_PIMSM_V2 = lib.kernel.yes;

    SYN_COOKIES = lib.kernel.yes;

    NET_IPVTI = lib.kernel.no;
    NET_FOU = lib.kernel.no;
    NET_FOU_IP_TUNNELS = lib.kernel.no;

    INET_AH = lib.kernel.no;
    INET_ESP = lib.kernel.no;
    INET_IPCOMP = lib.kernel.no;
    INET_TABLE_PERTURB_ORDER = lib.kernel.freeform "16";
    INET_TUNNEL = lib.kernel.module;
    INET_DIAG = lib.kernel.yes;
    INET_TCP_DIAG = lib.kernel.yes;
    INET_UDP_DIAG = lib.kernel.no;
    INET_RAW_DIAG = lib.kernel.no;
    INET_DIAG_DESTROY = lib.kernel.no;

    TCP_CONG_ADVANCED = lib.kernel.yes;
    TCP_CONG_BIC = lib.kernel.module;
    TCP_CONG_CUBIC = lib.kernel.yes;
    TCP_CONG_WESTWOOD = lib.kernel.module;
    TCP_CONG_HTCP = lib.kernel.module;
    TCP_CONG_HSTCP = lib.kernel.no;
    TCP_CONG_HYBLA = lib.kernel.no;
    TCP_CONG_VEGAS = lib.kernel.no;
    TCP_CONG_NV = lib.kernel.no;
    TCP_CONG_SCALABLE = lib.kernel.no;
    TCP_CONG_LP = lib.kernel.no;
    TCP_CONG_VENO = lib.kernel.no;
    TCP_CONG_YEAH = lib.kernel.no;
    TCP_CONG_ILLINOIS = lib.kernel.no;
    TCP_CONG_DCTCP = lib.kernel.no;
    TCP_CONG_CDG = lib.kernel.no;
    TCP_CONG_BBR = lib.kernel.no;

    DEFAULT_CUBIC = lib.kernel.yes;
    DEFAULT_RENO = lib.kernel.no;
    DEFAULT_TCP_CONG = lib.kernel.freeform "cubic";

    TCP_AO = lib.kernel.no;
    TCP_MD5SIG = lib.kernel.yes;

    IPV6 = lib.kernel.yes;
    IPV6_ROUTER_PREF = lib.kernel.no;
    IPV6_OPTIMISTIC_DAD = lib.kernel.no;

    INET6_AH = lib.kernel.yes;
    INET6_ESP = lib.kernel.yes;
    INET6_ESP_OFFLOAD = lib.kernel.no;
    INET6_ESPINTCP = lib.kernel.no;
    INET6_IPCOMP = lib.kernel.no;

    IPV6_MIP6 = lib.kernel.no;
    IPV6_ILA = lib.kernel.no;
    IPV6_VTI = lib.kernel.no;
    IPV6_SIT = lib.kernel.module;
    IPV6_SIT_6RD = lib.kernel.no;
    IPV6_NDISC_NODETYPE = lib.kernel.yes;
    IPV6_TUNNEL = lib.kernel.no;
    IPV6_MULTIPLE_TABLES = lib.kernel.no;
    IPV6_MROUTE = lib.kernel.no;
    IPV6_SEG6_LWTUNNEL = lib.kernel.no;
    IPV6_SEG6_HMAC = lib.kernel.no;
    IPV6_RPL_LWTUNNEL = lib.kernel.no;
    IPV6_IOAM6_LWTUNNEL = lib.kernel.no;

    NETLABEL = lib.kernel.yes;

    MPTCP = lib.kernel.no;

    NETWORK_SECMARK = lib.kernel.no;

    NET_PTP_CLASSIFY = lib.kernel.yes;

    NETWORK_PHY_TIMESTAMPING = lib.kernel.no;

    NETFILTER = lib.kernel.yes;
    NETFILTER_ADVANCED = lib.kernel.yes;
    NETFILTER_INGRESS = lib.kernel.yes;
    NETFILTER_EGRESS = lib.kernel.yes;
    NETFILTER_SKIP_EGRESS = lib.kernel.yes;
    NETFILTER_NETLINK = lib.kernel.yes;
    NETFILTER_NETLINK_ACCT = lib.kernel.no;
    NETFILTER_NETLINK_QUEUE = lib.kernel.no;
    NETFILTER_NETLINK_LOG = lib.kernel.yes;
    NETFILTER_NETLINK_OSF = lib.kernel.no;

    NF_CONNTRACK = lib.kernel.yes;
    NF_LOG_SYSLOG = lib.kernel.module;
    NF_CONNTRACK_MARK = lib.kernel.no;
    NF_CONNTRACK_ZONES = lib.kernel.no;
    NF_CONNTRACK_PROCFS = lib.kernel.no;
    NF_CONNTRACK_EVENTS = lib.kernel.no;
    NF_CONNTRACK_TIMEOUT = lib.kernel.no;
    NF_CONNTRACK_TIMESTAMP = lib.kernel.no;
    NF_CONNTRACK_LABELS = lib.kernel.no;
    NF_CT_PROTO_SCTP = lib.kernel.yes;
    NF_CONNTRACK_AMANDA = lib.kernel.no;
    NF_CONNTRACK_FTP = lib.kernel.yes;
    NF_CONNTRACK_H323 = lib.kernel.no;
    NF_CONNTRACK_IRC = lib.kernel.yes;
    NF_CONNTRACK_NETBIOS_NS = lib.kernel.no;
    NF_CONNTRACK_SNMP = lib.kernel.no;
    NF_CONNTRACK_PPTP = lib.kernel.no;
    NF_CONNTRACK_SANE = lib.kernel.no;
    NF_CONNTRACK_SIP = lib.kernel.yes;
    NF_CONNTRACK_TFTP = lib.kernel.no;
    NF_CT_NETLINK = lib.kernel.yes;

    NETFILTER_NETLINK_GLUE_CT = lib.kernel.no;

    NF_NAT = lib.kernel.yes;
    NF_NAT_FTP = lib.kernel.yes;
    NF_NAT_IRC = lib.kernel.yes;
    NF_NAT_SIP = lib.kernel.yes;
    NF_NAT_MASQUERADE = lib.kernel.yes;
    NF_TABLES = lib.kernel.no;

    NETFILTER_XTABLES = lib.kernel.yes;
    NETFILTER_XT_MARK = lib.kernel.module;
    NETFILTER_XT_CONNMARK = lib.kernel.no;
    NETFILTER_XT_TARGET_AUDIT = lib.kernel.no;
    NETFILTER_XT_TARGET_CLASSIFY = lib.kernel.no;
    NETFILTER_XT_TARGET_CONNMARK = lib.kernel.no;
    NETFILTER_XT_TARGET_HMARK = lib.kernel.no;
    NETFILTER_XT_TARGET_IDLETIMER = lib.kernel.no;
    NETFILTER_XT_TARGET_LED = lib.kernel.no;
    NETFILTER_XT_TARGET_LOG = lib.kernel.module;
    NETFILTER_XT_TARGET_MARK = lib.kernel.no;
    NETFILTER_XT_NAT = lib.kernel.no;
    NETFILTER_XT_TARGET_NETMAP = lib.kernel.no;
    NETFILTER_XT_TARGET_NFLOG = lib.kernel.yes;
    NETFILTER_XT_TARGET_NFQUEUE = lib.kernel.no;
    NETFILTER_XT_TARGET_RATEEST = lib.kernel.no;
    NETFILTER_XT_TARGET_REDIRECT = lib.kernel.no;
    NETFILTER_XT_TARGET_MASQUERADE = lib.kernel.module;
    NETFILTER_XT_TARGET_TEE = lib.kernel.no;
    NETFILTER_XT_TARGET_TCPMSS = lib.kernel.yes;
    NETFILTER_XT_MATCH_ADDRTYPE = lib.kernel.module;
    NETFILTER_XT_MATCH_BPF = lib.kernel.no;
    NETFILTER_XT_MATCH_CGROUP = lib.kernel.no;
    NETFILTER_XT_MATCH_CLUSTER = lib.kernel.no;
    NETFILTER_XT_MATCH_COMMENT = lib.kernel.no;
    NETFILTER_XT_MATCH_CONNBYTES = lib.kernel.no;
    NETFILTER_XT_MATCH_CONNLABEL = lib.kernel.no;
    NETFILTER_XT_MATCH_CONNLIMIT = lib.kernel.no;
    NETFILTER_XT_MATCH_CONNMARK = lib.kernel.no;
    NETFILTER_XT_MATCH_CONNTRACK = lib.kernel.yes;
    NETFILTER_XT_MATCH_CPU = lib.kernel.no;
    NETFILTER_XT_MATCH_DCCP = lib.kernel.no;
    NETFILTER_XT_MATCH_DEVGROUP = lib.kernel.no;
    NETFILTER_XT_MATCH_DSCP = lib.kernel.no;
    NETFILTER_XT_MATCH_ECN = lib.kernel.no;
    NETFILTER_XT_MATCH_ESP = lib.kernel.no;
    NETFILTER_XT_MATCH_HASHLIMIT = lib.kernel.no;
    NETFILTER_XT_MATCH_HELPER = lib.kernel.no;
    NETFILTER_XT_MATCH_HL = lib.kernel.no;
    NETFILTER_XT_MATCH_IPCOMP = lib.kernel.no;
    NETFILTER_XT_MATCH_IPRANGE = lib.kernel.no;
    NETFILTER_XT_MATCH_L2TP = lib.kernel.no;
    NETFILTER_XT_MATCH_LENGTH = lib.kernel.no;
    NETFILTER_XT_MATCH_LIMIT = lib.kernel.no;
    NETFILTER_XT_MATCH_MAC = lib.kernel.no;
    NETFILTER_XT_MATCH_MARK = lib.kernel.no;
    NETFILTER_XT_MATCH_MULTIPORT = lib.kernel.no;
    NETFILTER_XT_MATCH_NFACCT = lib.kernel.no;
    NETFILTER_XT_MATCH_OSF = lib.kernel.no;
    NETFILTER_XT_MATCH_OWNER = lib.kernel.no;
    NETFILTER_XT_MATCH_POLICY = lib.kernel.yes;
    NETFILTER_XT_MATCH_PKTTYPE = lib.kernel.no;
    NETFILTER_XT_MATCH_QUOTA = lib.kernel.no;
    NETFILTER_XT_MATCH_RATEEST = lib.kernel.no;
    NETFILTER_XT_MATCH_REALM = lib.kernel.no;
    NETFILTER_XT_MATCH_RECENT = lib.kernel.no;
    NETFILTER_XT_MATCH_SCTP = lib.kernel.no;
    NETFILTER_XT_MATCH_SOCKET = lib.kernel.no;
    NETFILTER_XT_MATCH_STATE = lib.kernel.yes;
    NETFILTER_XT_MATCH_STATISTIC = lib.kernel.no;
    NETFILTER_XT_MATCH_STRING = lib.kernel.no;
    NETFILTER_XT_MATCH_TCPMSS = lib.kernel.no;
    NETFILTER_XT_MATCH_TIME = lib.kernel.no;
    NETFILTER_XT_MATCH_U32 = lib.kernel.no;

    IP_SET = lib.kernel.no;
    IP_VS = lib.kernel.no;

    NF_DEFRAG_IPV4 = lib.kernel.yes;
    NF_SOCKET_IPV4 = lib.kernel.no;
    NF_TPROXY_IPV4 = lib.kernel.no;
    NF_DUP_IPV4 = lib.kernel.no;
    NF_LOG_ARP = lib.kernel.module;
    NF_LOG_IPV4 = lib.kernel.module;
    NF_REJECT_IPV4 = lib.kernel.module;

    IP_NF_IPTABLES = lib.kernel.yes;
    IP_NF_MATCH_AH = lib.kernel.no;
    IP_NF_MATCH_ECN = lib.kernel.no;
    IP_NF_MATCH_TTL = lib.kernel.no;
    IP_NF_TARGET_SYNPROXY = lib.kernel.no;

    NF_SOCKET_IPV6 = lib.kernel.no;
    NF_TPROXY_IPV6 = lib.kernel.no;
    NF_DUP_IPV6 = lib.kernel.no;
    NF_REJECT_IPV6 = lib.kernel.module;
    NF_LOG_IPV6 = lib.kernel.module;

    IP6_NF_IPTABLES = lib.kernel.yes;
    IP6_NF_MATCH_AH = lib.kernel.no;
    IP6_NF_MATCH_EUI64 = lib.kernel.no;
    IP6_NF_MATCH_FRAG = lib.kernel.no;
    IP6_NF_MATCH_OPTS = lib.kernel.no;
    IP6_NF_MATCH_HL = lib.kernel.no;
    IP6_NF_MATCH_IPV6HEADER = lib.kernel.yes;
    IP6_NF_MATCH_MH = lib.kernel.no;
    IP6_NF_MATCH_RT = lib.kernel.no;
    IP6_NF_MATCH_SRH = lib.kernel.no;
    IP6_NF_TARGET_SYNPROXY = lib.kernel.no;

    NF_DEFRAG_IPV6 = lib.kernel.yes;
    NF_CONNTRACK_BRIDGE = lib.kernel.no;

    IP_SCTP = lib.kernel.no;

    RDS = lib.kernel.no;

    TIPC = lib.kernel.no;

    ATM = lib.kernel.no;

    L2TP = lib.kernel.no;

    BRIDGE = lib.kernel.no;

    NET_DSA = lib.kernel.no;

    VLAN_8021Q = lib.kernel.no;

    LLC2 = lib.kernel.no;

    X25 = lib.kernel.no;

    LAPB = lib.kernel.no;

    PHONET = lib.kernel.no;

    "6LOWPAN" = lib.kernel.no;

    IEEE802154 = lib.kernel.no;

    NET_SCHED = lib.kernel.yes;
    NET_SCH_HTB = lib.kernel.no;
    NET_SCH_HFSC = lib.kernel.no;
    NET_SCH_PRIO = lib.kernel.no;
    NET_SCH_MULTIQ = lib.kernel.no;
    NET_SCH_RED = lib.kernel.no;
    NET_SCH_SFB = lib.kernel.no;
    NET_SCH_SFQ = lib.kernel.no;
    NET_SCH_TEQL = lib.kernel.no;
    NET_SCH_TBF = lib.kernel.no;
    NET_SCH_CBS = lib.kernel.no;
    NET_SCH_ETF = lib.kernel.no;
    NET_SCH_TAPRIO = lib.kernel.no;
    NET_SCH_GRED = lib.kernel.no;
    NET_SCH_NETEM = lib.kernel.no;
    NET_SCH_DRR = lib.kernel.no;
    NET_SCH_MQPRIO = lib.kernel.no;
    NET_SCH_SKBPRIO = lib.kernel.no;
    NET_SCH_CHOKE = lib.kernel.no;
    NET_SCH_QFQ = lib.kernel.no;
    NET_SCH_CODEL = lib.kernel.no;
    NET_SCH_FQ_CODEL = lib.kernel.no;
    NET_SCH_CAKE = lib.kernel.no;
    NET_SCH_FQ = lib.kernel.no;
    NET_SCH_HHF = lib.kernel.no;
    NET_SCH_PIE = lib.kernel.no;
    NET_SCH_INGRESS = lib.kernel.no;
    NET_SCH_PLUG = lib.kernel.no;
    NET_SCH_ETS = lib.kernel.no;
    NET_SCH_DUALPI2 = lib.kernel.no;
    NET_SCH_DEFAULT = lib.kernel.no;
    NET_CLS = lib.kernel.yes;
    NET_CLS_BASIC = lib.kernel.no;
    NET_CLS_ROUTE4 = lib.kernel.no;
    NET_CLS_FW = lib.kernel.no;
    NET_CLS_U32 = lib.kernel.no;
    NET_CLS_FLOW = lib.kernel.no;
    NET_CLS_CGROUP = lib.kernel.yes;
    NET_CLS_BPF = lib.kernel.no;
    NET_CLS_FLOWER = lib.kernel.no;
    NET_CLS_MATCHALL = lib.kernel.no;
    NET_EMATCH = lib.kernel.yes;
    NET_EMATCH_STACK = lib.kernel.freeform "32";
    NET_EMATCH_CMP = lib.kernel.no;
    NET_EMATCH_NBYTE = lib.kernel.no;
    NET_EMATCH_U32 = lib.kernel.no;
    NET_EMATCH_META = lib.kernel.no;
    NET_EMATCH_TEXT = lib.kernel.no;
    NET_EMATCH_IPT = lib.kernel.no;
    NET_CLS_ACT = lib.kernel.yes;
    NET_ACT_POLICE = lib.kernel.no;
    NET_ACT_GACT = lib.kernel.no;
    NET_ACT_MIRRED = lib.kernel.no;
    NET_ACT_SAMPLE = lib.kernel.no;
    NET_ACT_NAT = lib.kernel.no;
    NET_ACT_PEDIT = lib.kernel.no;
    NET_ACT_SIMP = lib.kernel.no;
    NET_ACT_SKBEDIT = lib.kernel.no;
    NET_ACT_CSUM = lib.kernel.no;
    NET_ACT_MPLS = lib.kernel.no;
    NET_ACT_VLAN = lib.kernel.no;
    NET_ACT_BPF = lib.kernel.no;
    NET_ACT_SKBMOD = lib.kernel.no;
    NET_ACT_IFE = lib.kernel.no;
    NET_ACT_TUNNEL_KEY = lib.kernel.no;
    NET_ACT_GATE = lib.kernel.no;
    NET_TC_SKB_EXT = lib.kernel.no;
    NET_SCH_FIFO = lib.kernel.yes;

    DCB = lib.kernel.no;

    DNS_RESOLVER = lib.kernel.yes;

    BATMAN_ADV = lib.kernel.no;

    OPENVSWITCH = lib.kernel.no;

    VSOCKETS = lib.kernel.no;

    NETLINK_DIAG = lib.kernel.no;

    MPLS = lib.kernel.no;

    NET_NSH = lib.kernel.no;

    HSR = lib.kernel.no;

    NET_SWITCHDEV = lib.kernel.no;
    NET_L3_MASTER_DEV = lib.kernel.no;

    QRTR = lib.kernel.no;

    NET_NCSI = lib.kernel.no;

    PCPU_DEV_REFCNT = lib.kernel.yes;

    MAX_SKB_FRAGS = lib.kernel.freeform "17";

    RPS = lib.kernel.yes;

    RFS_ACCEL = lib.kernel.yes;

    SOCK_RX_QUEUE_MAPPING = lib.kernel.yes;

    XPS = lib.kernel.yes;

    CGROUP_NET_PRIO = lib.kernel.yes;
    CGROUP_NET_CLASSID = lib.kernel.yes;

    BQL = lib.kernel.yes;

    NET_FLOW_LIMIT = lib.kernel.yes;
    NET_PKTGEN = lib.kernel.no;
    NET_DROP_MONITOR = lib.kernel.no;

    CAN = lib.kernel.no;

    BT = lib.kernel.no;

    AF_RXRPC = lib.kernel.no;
    AF_KCM = lib.kernel.no;

    MCTP = lib.kernel.no;

    FIB_RULES = lib.kernel.yes;

    WIRELESS = lib.kernel.yes;

    CFG80211 = lib.kernel.yes;

    NL80211_TESTMODE = lib.kernel.no;

    CFG80211_DEVELOPER_WARNINGS = lib.kernel.no;
    CFG80211_CERTIFICATION_ONUS = lib.kernel.no;
    CFG80211_REQUIRE_SIGNED_REGDB = lib.kernel.yes;
    CFG80211_USE_KERNEL_REGDB_KEYS = lib.kernel.yes;
    CFG80211_DEFAULT_PS = lib.kernel.yes;
    CFG80211_DEBUGFS = lib.kernel.no;
    CFG80211_CRDA_SUPPORT = lib.kernel.yes;
    CFG80211_WEXT = lib.kernel.no;

    MAC80211 = lib.kernel.yes;
    MAC80211_HAS_RC = lib.kernel.yes;
    MAC80211_RC_MINSTREL = lib.kernel.yes;
    MAC80211_RC_DEFAULT_MINSTREL = lib.kernel.yes;
    MAC80211_RC_DEFAULT = lib.kernel.freeform "minstrel_ht";
    MAC80211_MESH = lib.kernel.no;
    MAC80211_LEDS = lib.kernel.yes;
    MAC80211_MESSAGE_TRACING = lib.kernel.no;
    MAC80211_DEBUG_MENU = lib.kernel.no;
    MAC80211_STA_HASH_MAX_SIZE = lib.kernel.freeform "0";

    RFKILL = lib.kernel.yes;
    RFKILL_LEDS = lib.kernel.yes;
    RFKILL_INPUT = lib.kernel.no;
    RFKILL_GPIO = lib.kernel.no;

    NET_9P = lib.kernel.yes;
    NET_9P_FD = lib.kernel.yes;
    NET_9P_VIRTIO = lib.kernel.yes;
    NET_9P_USBG = lib.kernel.no;
    NET_9P_DEBUG = lib.kernel.no;

    CEPH_LIB = lib.kernel.no;

    NFC = lib.kernel.no;

    PSAMPLE = lib.kernel.no;

    NET_IFE = lib.kernel.no;

    LWTUNNEL = lib.kernel.no;

    DST_CACHE = lib.kernel.yes;

    GRO_CELLS = lib.kernel.yes;

    NET_SELFTESTS = lib.kernel.yes;

    PAGE_POOL = lib.kernel.yes;
    PAGE_POOL_STATS = lib.kernel.no;

    FAILOVER = lib.kernel.yes;

    ETHTOOL_NETLINK = lib.kernel.yes;

    HAVE_PCI = lib.kernel.yes;

    GENERIC_PCI_IOMAP = lib.kernel.yes;

    PCI = lib.kernel.yes;
    PCI_DOMAINS = lib.kernel.yes;

    PCIEPORTBUS = lib.kernel.yes;

    HOTPLUG_PCI_PCIE = lib.kernel.yes;

    PCIEAER = lib.kernel.no;

    PCIEASPM = lib.kernel.yes;
    PCIEASPM_DEFAULT = lib.kernel.yes;
    PCIEASPM_POWERSAVE = lib.kernel.no;
    PCIEASPM_POWER_SUPERSAVE = lib.kernel.no;
    PCIEASPM_PERFORMANCE = lib.kernel.no;

    PCIE_PME = lib.kernel.yes;
    PCIE_PTM = lib.kernel.yes;

    PCI_MSI = lib.kernel.yes;
    PCI_QUIRKS = lib.kernel.yes;
    PCI_DEBUG = lib.kernel.no;
    PCI_REALLOC_ENABLE_AUTO = lib.kernel.yes;
    PCI_STUB = lib.kernel.no;
    PCI_PF_STUB = lib.kernel.no;
    PCI_ATS = lib.kernel.yes;
    PCI_IDE = lib.kernel.yes;
    PCI_TSM = lib.kernel.yes;
    PCI_DOE = lib.kernel.yes;
    PCI_LOCKLESS_CONFIG = lib.kernel.yes;
    PCI_IOV = lib.kernel.yes;
    PCI_NPEM = lib.kernel.yes;
    PCI_PRI = lib.kernel.yes;
    PCI_PASID = lib.kernel.yes;

    PCIE_TPH = lib.kernel.no;

    PCI_LABEL = lib.kernel.yes;
    PCI_HYPERV = lib.kernel.no;

    VGA_ARB = lib.kernel.yes;
    VGA_ARB_MAX_GPUS = lib.kernel.freeform "16";

    HOTPLUG_PCI = lib.kernel.yes;
    HOTPLUG_PCI_ACPI = lib.kernel.no;
    HOTPLUG_PCI_CPCI = lib.kernel.no;
    HOTPLUG_PCI_OCTEONEP = lib.kernel.no;
    HOTPLUG_PCI_SHPC = lib.kernel.no;

    VMD = lib.kernel.no;

    PCI_HYPERV_INTERFACE = lib.kernel.no;
    PCI_MESON = lib.kernel.no;

    PCIE_DW_PLAT_HOST = lib.kernel.no;

    PCI_ENDPOINT = lib.kernel.no;
    PCI_SW_SWITCHTEC = lib.kernel.no;
    PCI_PWRCTRL = lib.kernel.yes;
    PCI_PWRCTRL_GENERIC = lib.kernel.yes;
    PCI_PWRCTRL_TC9563 = lib.kernel.yes;

    CXL_BUS = lib.kernel.yes;
    CXL_PCI = lib.kernel.yes;
    CXL_MEM_RAW_COMMANDS = lib.kernel.no;
    CXL_ACPI = lib.kernel.yes;
    CXL_MEM = lib.kernel.yes;
    CXL_FEATURES = lib.kernel.no;
    CXL_PORT = lib.kernel.yes;
    CXL_SUSPEND = lib.kernel.yes;
    CXL_REGION = lib.kernel.yes;
    CXL_REGION_INVALIDATION_TEST = lib.kernel.no;
    CXL_ATL = lib.kernel.yes;

    PCCARD = lib.kernel.yes;

    PCMCIA = lib.kernel.yes;
    PCMCIA_LOAD_CIS = lib.kernel.yes;

    CARDBUS = lib.kernel.yes;

    YENTA = lib.kernel.yes;
    YENTA_O2 = lib.kernel.yes;
    YENTA_RICOH = lib.kernel.yes;
    YENTA_TI = lib.kernel.yes;
    YENTA_ENE_TUNE = lib.kernel.yes;
    YENTA_TOSHIBA = lib.kernel.yes;

    PD6729 = lib.kernel.no;

    PCCARD_NONSTATIC = lib.kernel.yes;

    RAPIDIO = lib.kernel.no;

    PC104 = lib.kernel.no;

    AUXILIARY_BUS = lib.kernel.yes;

    UEVENT_HELPER = lib.kernel.no;

    DEVTMPFS = lib.kernel.yes;
    DEVTMPFS_MOUNT = lib.kernel.yes;
    DEVTMPFS_SAFE = lib.kernel.yes;

    DRIVER_DEFERRED_PROBE_TIMEOUT = lib.kernel.freeform "10";

    STANDALONE = lib.kernel.yes;

    PREVENT_FIRMWARE_BUILD = lib.kernel.yes;

    FW_LOADER = lib.kernel.yes;
    FW_LOADER_PAGED_BUF = lib.kernel.yes;
    FW_LOADER_SYSFS = lib.kernel.yes;

    EXTRA_FIRMWARE = lib.kernel.freeform "";

    FW_LOADER_USER_HELPER = lib.kernel.yes;
    FW_LOADER_USER_HELPER_FALLBACK = lib.kernel.no;
    FW_LOADER_COMPRESS = lib.kernel.no;
    FW_CACHE = lib.kernel.yes;
    FW_UPLOAD = lib.kernel.yes;

    WANT_DEV_COREDUMP = lib.kernel.yes;

    ALLOW_DEV_COREDUMP = lib.kernel.yes;

    DEV_COREDUMP = lib.kernel.yes;

    DEBUG_DRIVER = lib.kernel.no;
    DEBUG_DEVRES = lib.kernel.yes;
    DEBUG_TEST_DRIVER_REMOVE = lib.kernel.no;

    HMEM_REPORTING = lib.kernel.yes;

    TEST_ASYNC_DRIVER_PROBE = lib.kernel.no;

    GENERIC_CPU_DEVICES = lib.kernel.yes;
    GENERIC_CPU_AUTOPROBE = lib.kernel.yes;
    GENERIC_CPU_VULNERABILITIES = lib.kernel.yes;

    SOC_BUS = lib.kernel.yes;

    REGMAP = lib.kernel.yes;
    REGMAP_I2C = lib.kernel.yes;
    REGMAP_MMIO = lib.kernel.yes;
    REGMAP_IRQ = lib.kernel.yes;

    DMA_SHARED_BUFFER = lib.kernel.yes;
    DMA_FENCE_TRACE = lib.kernel.no;

    FW_DEVLINK_SYNC_STATE_TIMEOUT = lib.kernel.no;

    MHI_BUS = lib.kernel.no;
    MHI_BUS_EP = lib.kernel.no;

    CONNECTOR = lib.kernel.yes;

    PROC_EVENTS = lib.kernel.yes;

    EDD = lib.kernel.no;

    FIRMWARE_MEMMAP = lib.kernel.yes;

    DMIID = lib.kernel.yes;

    DMI_SYSFS = lib.kernel.no;
    DMI_SCAN_MACHINE_NON_EFI_FALLBACK = lib.kernel.yes;

    ISCSI_IBFT = lib.kernel.no;

    FW_CFG_SYSFS = lib.kernel.no;

    SYSFB = lib.kernel.yes;
    SYSFB_SIMPLEFB = lib.kernel.no;

    GOOGLE_FIRMWARE = lib.kernel.no;

    EFI_ESRT = lib.kernel.yes;
    EFI_VARS_PSTORE = lib.kernel.yes;
    EFI_VARS_PSTORE_DEFAULT_DISABLE = lib.kernel.no;
    EFI_SOFT_RESERVE = lib.kernel.yes;
    EFI_DXE_MEM_ATTRIBUTES = lib.kernel.yes;
    EFI_RUNTIME_WRAPPERS = lib.kernel.yes;
    EFI_BOOTLOADER_CONTROL = lib.kernel.no;
    EFI_CAPSULE_LOADER = lib.kernel.no;
    EFI_TEST = lib.kernel.no;
    EFI_DEV_PATH_PARSER = lib.kernel.yes;

    APPLE_PROPERTIES = lib.kernel.yes;

    RESET_ATTACK_MITIGATION = lib.kernel.no;

    EFI_RCI2_TABLE = lib.kernel.no;
    EFI_DISABLE_PCI_DMA = lib.kernel.no;
    EFI_EARLYCON = lib.kernel.yes;
    EFI_CUSTOM_SSDT_OVERLAYS = lib.kernel.yes;
    EFI_DISABLE_RUNTIME = lib.kernel.yes;
    EFI_COCO_SECRET = lib.kernel.yes;

    OVMF_DEBUG_LOG = lib.kernel.no;

    EFI_EMBEDDED_FIRMWARE = lib.kernel.yes;
    EFI_SBAT_FILE = lib.kernel.freeform "";

    UEFI_CPER = lib.kernel.yes;
    UEFI_CPER_X86 = lib.kernel.yes;

    FWCTL = lib.kernel.no;

    GNSS = lib.kernel.yes;
    GNSS_USB = lib.kernel.no;

    MTD = lib.kernel.no;

    OF = lib.kernel.no;

    ARCH_MIGHT_HAVE_PC_PARPORT = lib.kernel.yes;

    PARPORT = lib.kernel.no;

    PNP = lib.kernel.yes;
    PNP_DEBUG_MESSAGES = lib.kernel.yes;

    PNPACPI = lib.kernel.yes;

    BLK_DEV = lib.kernel.yes;
    BLK_DEV_NULL_BLK = lib.kernel.no;
    BLK_DEV_FD = lib.kernel.no;

    CDROM = lib.kernel.yes;

    BLK_DEV_PCIESSD_MTIP32XX = lib.kernel.no;

    ZRAM = lib.kernel.no;

    BLK_DEV_LOOP = lib.kernel.yes;
    BLK_DEV_LOOP_MIN_COUNT = lib.kernel.freeform "8";
    BLK_DEV_DRBD = lib.kernel.no;
    BLK_DEV_NBD = lib.kernel.no;
    BLK_DEV_RAM = lib.kernel.no;

    ATA_OVER_ETH = lib.kernel.no;

    VIRTIO_BLK = lib.kernel.yes;

    BLK_DEV_RBD = lib.kernel.no;
    BLK_DEV_UBLK = lib.kernel.no;

    NVME_CORE = lib.kernel.yes;

    BLK_DEV_NVME = lib.kernel.yes;

    NVME_MULTIPATH = lib.kernel.yes;
    NVME_VERBOSE_ERRORS = lib.kernel.no;
    NVME_HWMON = lib.kernel.no;
    NVME_FABRICS = lib.kernel.yes;
    NVME_FC = lib.kernel.no;
    NVME_TCP = lib.kernel.yes;
    NVME_TCP_TLS = lib.kernel.no;
    NVME_HOST_AUTH = lib.kernel.no;
    NVME_TARGET = lib.kernel.yes;
    NVME_TARGET_DEBUGFS = lib.kernel.no;
    NVME_TARGET_PASSTHRU = lib.kernel.no;
    NVME_TARGET_LOOP = lib.kernel.no;
    NVME_TARGET_FC = lib.kernel.no;
    NVME_TARGET_TCP = lib.kernel.no;
    NVME_TARGET_AUTH = lib.kernel.no;

    SENSORS_LIS3LV02D = lib.kernel.module;

    AD525X_DPOT = lib.kernel.no;

    DUMMY_IRQ = lib.kernel.no;

    IBM_ASM = lib.kernel.no;

    PHANTOM = lib.kernel.no;

    RPMB = lib.kernel.no;

    TI_FPC202 = lib.kernel.no;

    TIFM_CORE = lib.kernel.yes;
    TIFM_7XX1 = lib.kernel.yes;

    ICS932S401 = lib.kernel.no;

    ENCLOSURE_SERVICES = lib.kernel.no;

    HP_ILO = lib.kernel.no;

    APDS9802ALS = lib.kernel.no;

    ISL29003 = lib.kernel.no;

    ISL29020 = lib.kernel.no;

    SENSORS_TSL2550 = lib.kernel.no;
    SENSORS_BH1770 = lib.kernel.no;

    HMC6352 = lib.kernel.no;

    DS1682 = lib.kernel.no;

    VMWARE_BALLOON = lib.kernel.yes;

    SRAM = lib.kernel.no;

    DW_XDATA_PCIE = lib.kernel.no;

    PCI_ENDPOINT_TEST = lib.kernel.no;

    XILINX_SDFEC = lib.kernel.no;

    MISC_RTSX = lib.kernel.yes;

    NTSYNC = lib.kernel.no;

    NSM = lib.kernel.no;

    C2PORT = lib.kernel.no;

    EEPROM_AT24 = lib.kernel.no;
    EEPROM_MAX6875 = lib.kernel.no;
    EEPROM_93CX6 = lib.kernel.yes;
    EEPROM_IDT_89HPESX = lib.kernel.no;
    EEPROM_EE1004 = lib.kernel.no;
    EEPROM_M24LR = lib.kernel.no;

    CB710_CORE = lib.kernel.no;

    SENSORS_LIS3_I2C = lib.kernel.no;

    ALTERA_STAPL = lib.kernel.no;

    INTEL_MEI = lib.kernel.yes;
    INTEL_MEI_ME = lib.kernel.yes;
    INTEL_MEI_TXE = lib.kernel.no;
    INTEL_MEI_GSC = lib.kernel.no;
    INTEL_MEI_CSC = lib.kernel.no;
    INTEL_MEI_LB = lib.kernel.no;
    INTEL_MEI_HDCP = lib.kernel.no;
    INTEL_MEI_PXP = lib.kernel.no;
    INTEL_MEI_GSC_PROXY = lib.kernel.no;

    VMWARE_VMCI = lib.kernel.yes;

    GENWQE = lib.kernel.no;

    BCM_VK = lib.kernel.yes;
    BCM_VK_TTY = lib.kernel.yes;

    MISC_ALCOR_PCI = lib.kernel.no;
    MISC_RTSX_PCI = lib.kernel.yes;
    MISC_RTSX_USB = lib.kernel.yes;

    UACCE = lib.kernel.no;

    PVPANIC = lib.kernel.no;

    GP_PCI1XXXX = lib.kernel.no;

    KEBA_CP500 = lib.kernel.no;

    SCSI_MOD = lib.kernel.yes;

    RAID_ATTRS = lib.kernel.yes;

    SCSI_COMMON = lib.kernel.yes;
    SCSI = lib.kernel.yes;
    SCSI_DMA = lib.kernel.yes;
    SCSI_PROC_FS = lib.kernel.yes;

    BLK_DEV_SD = lib.kernel.yes;

    CHR_DEV_ST = lib.kernel.no;

    BLK_DEV_SR = lib.kernel.yes;

    CHR_DEV_SG = lib.kernel.yes;

    BLK_DEV_BSG = lib.kernel.yes;

    CHR_DEV_SCH = lib.kernel.no;

    SCSI_CONSTANTS = lib.kernel.yes;
    SCSI_LOGGING = lib.kernel.no;
    SCSI_SCAN_ASYNC = lib.kernel.no;
    SCSI_SPI_ATTRS = lib.kernel.yes;
    SCSI_FC_ATTRS = lib.kernel.no;
    SCSI_ISCSI_ATTRS = lib.kernel.no;
    SCSI_SAS_ATTRS = lib.kernel.no;
    SCSI_SAS_LIBSAS = lib.kernel.no;
    SCSI_SRP_ATTRS = lib.kernel.no;
    SCSI_LOWLEVEL = lib.kernel.yes;

    ISCSI_TCP = lib.kernel.no;
    ISCSI_BOOT_SYSFS = lib.kernel.no;

    SCSI_CXGB3_ISCSI = lib.kernel.no;
    SCSI_CXGB4_ISCSI = lib.kernel.no;
    SCSI_BNX2_ISCSI = lib.kernel.no;

    BE2ISCSI = lib.kernel.no;

    BLK_DEV_3W_XXXX_RAID = lib.kernel.no;

    SCSI_HPSA = lib.kernel.no;
    SCSI_3W_9XXX = lib.kernel.no;
    SCSI_3W_SAS = lib.kernel.no;
    SCSI_ACARD = lib.kernel.no;
    SCSI_AACRAID = lib.kernel.no;
    SCSI_AIC7XXX = lib.kernel.no;
    SCSI_AIC79XX = lib.kernel.no;
    SCSI_AIC94XX = lib.kernel.no;
    SCSI_MVSAS = lib.kernel.no;
    SCSI_MVUMI = lib.kernel.no;
    SCSI_ADVANSYS = lib.kernel.no;
    SCSI_ARCMSR = lib.kernel.no;
    SCSI_ESAS2R = lib.kernel.no;

    MEGARAID_NEWGEN = lib.kernel.no;
    MEGARAID_LEGACY = lib.kernel.no;
    MEGARAID_SAS = lib.kernel.no;

    SCSI_MPT3SAS = lib.kernel.no;
    SCSI_MPT2SAS = lib.kernel.no;
    SCSI_MPI3MR = lib.kernel.no;
    SCSI_SMARTPQI = lib.kernel.no;
    SCSI_HPTIOP = lib.kernel.no;
    SCSI_BUSLOGIC = lib.kernel.no;
    SCSI_MYRB = lib.kernel.no;
    SCSI_MYRS = lib.kernel.no;

    VMWARE_PVSCSI = lib.kernel.no;

    HYPERV_STORAGE = lib.kernel.yes;

    SCSI_SNIC = lib.kernel.no;
    SCSI_DMX3191D = lib.kernel.no;
    SCSI_FDOMAIN_PCI = lib.kernel.no;
    SCSI_ISCI = lib.kernel.no;
    SCSI_IPS = lib.kernel.no;
    SCSI_INITIO = lib.kernel.no;
    SCSI_INIA100 = lib.kernel.no;
    SCSI_STEX = lib.kernel.no;
    SCSI_SYM53C8XX_2 = lib.kernel.no;
    SCSI_IPR = lib.kernel.no;
    SCSI_QLOGIC_1280 = lib.kernel.no;
    SCSI_QLA_ISCSI = lib.kernel.no;
    SCSI_DC395x = lib.kernel.no;
    SCSI_AM53C974 = lib.kernel.no;
    SCSI_WD719X = lib.kernel.no;
    SCSI_DEBUG = lib.kernel.no;
    SCSI_PMCRAID = lib.kernel.no;
    SCSI_PM8001 = lib.kernel.no;
    SCSI_VIRTIO = lib.kernel.yes;
    SCSI_LOWLEVEL_PCMCIA = lib.kernel.no;
    SCSI_DH = lib.kernel.yes;
    SCSI_DH_RDAC = lib.kernel.no;
    SCSI_DH_HP_SW = lib.kernel.no;
    SCSI_DH_EMC = lib.kernel.no;
    SCSI_DH_ALUA = lib.kernel.no;

    ATA = lib.kernel.yes;

    SATA_HOST = lib.kernel.yes;

    PATA_TIMINGS = lib.kernel.yes;

    ATA_VERBOSE_ERROR = lib.kernel.yes;
    ATA_FORCE = lib.kernel.yes;
    ATA_ACPI = lib.kernel.yes;

    SATA_ZPODD = lib.kernel.yes;
    SATA_PMP = lib.kernel.yes;
    SATA_AHCI = lib.kernel.yes;
    SATA_MOBILE_LPM_POLICY = lib.kernel.freeform "3";
    SATA_AHCI_PLATFORM = lib.kernel.yes;

    AHCI_DWC = lib.kernel.yes;

    SATA_INIC162X = lib.kernel.yes;
    SATA_ACARD_AHCI = lib.kernel.yes;
    SATA_SIL24 = lib.kernel.yes;

    ATA_SFF = lib.kernel.yes;

    PDC_ADMA = lib.kernel.no;

    SATA_QSTOR = lib.kernel.no;
    SATA_SX4 = lib.kernel.no;

    ATA_BMDMA = lib.kernel.yes;
    ATA_PIIX = lib.kernel.yes;

    SATA_DWC = lib.kernel.yes;
    SATA_DWC_OLD_DMA = lib.kernel.yes;
    SATA_MV = lib.kernel.yes;
    SATA_NV = lib.kernel.yes;
    SATA_PROMISE = lib.kernel.yes;
    SATA_SIL = lib.kernel.yes;
    SATA_SIS = lib.kernel.yes;
    SATA_SVW = lib.kernel.yes;
    SATA_ULI = lib.kernel.yes;
    SATA_VIA = lib.kernel.yes;
    SATA_VITESSE = lib.kernel.yes;

    PATA_ALI = lib.kernel.yes;
    PATA_AMD = lib.kernel.yes;
    PATA_ARTOP = lib.kernel.yes;
    PATA_ATIIXP = lib.kernel.yes;
    PATA_ATP867X = lib.kernel.yes;
    PATA_CMD64X = lib.kernel.yes;
    PATA_CYPRESS = lib.kernel.yes;
    PATA_EFAR = lib.kernel.yes;
    PATA_HPT366 = lib.kernel.yes;
    PATA_HPT37X = lib.kernel.yes;
    PATA_HPT3X2N = lib.kernel.yes;
    PATA_HPT3X3 = lib.kernel.yes;
    PATA_HPT3X3_DMA = lib.kernel.yes;
    PATA_IT8213 = lib.kernel.yes;
    PATA_IT821X = lib.kernel.yes;
    PATA_JMICRON = lib.kernel.yes;
    PATA_MARVELL = lib.kernel.yes;
    PATA_NETCELL = lib.kernel.yes;
    PATA_NINJA32 = lib.kernel.yes;
    PATA_NS87415 = lib.kernel.yes;
    PATA_OLDPIIX = lib.kernel.yes;
    PATA_OPTIDMA = lib.kernel.yes;
    PATA_PDC2027X = lib.kernel.yes;
    PATA_PDC_OLD = lib.kernel.yes;
    PATA_RADISYS = lib.kernel.yes;
    PATA_RDC = lib.kernel.yes;
    PATA_SCH = lib.kernel.yes;
    PATA_SERVERWORKS = lib.kernel.yes;
    PATA_SIL680 = lib.kernel.yes;
    PATA_SIS = lib.kernel.yes;
    PATA_TOSHIBA = lib.kernel.yes;
    PATA_TRIFLEX = lib.kernel.yes;
    PATA_VIA = lib.kernel.yes;
    PATA_WINBOND = lib.kernel.yes;
    PATA_CMD640_PCI = lib.kernel.yes;
    PATA_MPIIX = lib.kernel.yes;
    PATA_NS87410 = lib.kernel.yes;
    PATA_OPTI = lib.kernel.yes;
    PATA_PCMCIA = lib.kernel.yes;
    PATA_RZ1000 = lib.kernel.yes;
    PATA_ACPI = lib.kernel.yes;

    ATA_GENERIC = lib.kernel.yes;

    PATA_LEGACY = lib.kernel.no;

    MD = lib.kernel.yes;

    BLK_DEV_MD = lib.kernel.yes;

    MD_BITMAP = lib.kernel.yes;
    MD_LLBITMAP = lib.kernel.no;
    MD_AUTODETECT = lib.kernel.yes;
    MD_BITMAP_FILE = lib.kernel.yes;
    MD_LINEAR = lib.kernel.no;
    MD_RAID0 = lib.kernel.no;
    MD_RAID1 = lib.kernel.no;
    MD_RAID10 = lib.kernel.no;
    MD_RAID456 = lib.kernel.no;
    MD_CLUSTER = lib.kernel.no;

    BCACHE = lib.kernel.no;

    BLK_DEV_DM_BUILTIN = lib.kernel.yes;
    BLK_DEV_DM = lib.kernel.yes;

    DM_DEBUG = lib.kernel.no;
    DM_UNSTRIPED = lib.kernel.no;
    DM_CRYPT = lib.kernel.no;
    DM_SNAPSHOT = lib.kernel.no;
    DM_THIN_PROVISIONING = lib.kernel.no;
    DM_CACHE = lib.kernel.no;
    DM_WRITECACHE = lib.kernel.no;
    DM_EBS = lib.kernel.no;
    DM_ERA = lib.kernel.no;
    DM_CLONE = lib.kernel.no;
    DM_MIRROR = lib.kernel.yes;
    DM_LOG_USERSPACE = lib.kernel.no;
    DM_RAID = lib.kernel.no;
    DM_ZERO = lib.kernel.yes;
    DM_MULTIPATH = lib.kernel.no;
    DM_DELAY = lib.kernel.no;
    DM_DUST = lib.kernel.no;
    DM_INIT = lib.kernel.no;
    DM_UEVENT = lib.kernel.no;
    DM_FLAKEY = lib.kernel.no;
    DM_VERITY = lib.kernel.no;
    DM_SWITCH = lib.kernel.no;
    DM_LOG_WRITES = lib.kernel.no;
    DM_INTEGRITY = lib.kernel.no;
    DM_AUDIT = lib.kernel.no;
    DM_VDO = lib.kernel.no;

    TARGET_CORE = lib.kernel.no;

    FUSION = lib.kernel.no;

    FIREWIRE = lib.kernel.no;
    FIREWIRE_NOSY = lib.kernel.no;

    MACINTOSH_DRIVERS = lib.kernel.yes;

    MAC_EMUMOUSEBTN = lib.kernel.yes;

    NETDEVICES = lib.kernel.yes;

    MII = lib.kernel.yes;

    NET_CORE = lib.kernel.yes;

    BONDING = lib.kernel.no;

    DUMMY = lib.kernel.no;

    WIREGUARD = lib.kernel.no;

    OVPN = lib.kernel.no;

    EQUALIZER = lib.kernel.no;

    NET_FC = lib.kernel.no;
    NET_TEAM = lib.kernel.no;

    MACVLAN = lib.kernel.no;

    IPVLAN = lib.kernel.no;

    VXLAN = lib.kernel.no;

    GENEVE = lib.kernel.no;

    BAREUDP = lib.kernel.no;

    GTP = lib.kernel.no;

    PFCP = lib.kernel.no;

    AMT = lib.kernel.no;

    MACSEC = lib.kernel.no;

    NETCONSOLE = lib.kernel.yes;
    NETCONSOLE_DYNAMIC = lib.kernel.no;
    NETCONSOLE_EXTENDED_LOG = lib.kernel.no;

    NETPOLL = lib.kernel.yes;

    NET_POLL_CONTROLLER = lib.kernel.yes;

    TUN = lib.kernel.no;
    TUN_VNET_CROSS_LE = lib.kernel.no;

    VETH = lib.kernel.no;

    VIRTIO_NET = lib.kernel.yes;

    NLMON = lib.kernel.no;

    ARCNET = lib.kernel.no;

    ETHERNET = lib.kernel.yes;

    NET_VENDOR_3COM = lib.kernel.yes;

    VORTEX = lib.kernel.no;

    TYPHOON = lib.kernel.no;

    NET_VENDOR_ADAPTEC = lib.kernel.yes;

    ADAPTEC_STARFIRE = lib.kernel.no;

    NET_VENDOR_AGERE = lib.kernel.yes;

    ET131X = lib.kernel.no;

    NET_VENDOR_ALACRITECH = lib.kernel.yes;

    SLICOSS = lib.kernel.no;

    NET_VENDOR_ALIBABA = lib.kernel.yes;

    ALIBABA_EEA = lib.kernel.no;

    ALTERA_TSE = lib.kernel.no;

    NET_VENDOR_AMAZON = lib.kernel.yes;

    ENA_ETHERNET = lib.kernel.no;

    NET_VENDOR_AMD = lib.kernel.yes;

    AMD8111_ETH = lib.kernel.no;

    PCNET32 = lib.kernel.no;

    AMD_XGBE = lib.kernel.no;

    PDS_CORE = lib.kernel.no;

    NET_VENDOR_AQUANTIA = lib.kernel.yes;

    AQTION = lib.kernel.no;

    NET_VENDOR_ARC = lib.kernel.yes;
    NET_VENDOR_ASIX = lib.kernel.yes;
    NET_VENDOR_ATHEROS = lib.kernel.yes;

    ATL2 = lib.kernel.no;

    ATL1 = lib.kernel.no;

    ATL1E = lib.kernel.no;

    ATL1C = lib.kernel.no;

    ALX = lib.kernel.no;

    CX_ECAT = lib.kernel.no;

    NET_VENDOR_BROADCOM = lib.kernel.yes;

    B44 = lib.kernel.no;

    BCMGENET = lib.kernel.no;

    BNX2 = lib.kernel.no;

    CNIC = lib.kernel.no;

    TIGON3 = lib.kernel.yes;
    TIGON3_HWMON = lib.kernel.yes;

    BNX2X = lib.kernel.no;

    SYSTEMPORT = lib.kernel.no;

    BNXT = lib.kernel.no;

    BNGE = lib.kernel.no;

    NET_VENDOR_CADENCE = lib.kernel.yes;
    NET_VENDOR_CAVIUM = lib.kernel.yes;

    THUNDER_NIC_PF = lib.kernel.no;
    THUNDER_NIC_VF = lib.kernel.no;
    THUNDER_NIC_BGX = lib.kernel.no;
    THUNDER_NIC_RGX = lib.kernel.no;

    CAVIUM_PTP = lib.kernel.no;

    LIQUIDIO = lib.kernel.no;
    LIQUIDIO_VF = lib.kernel.no;

    NET_VENDOR_CHELSIO = lib.kernel.yes;

    CHELSIO_T1 = lib.kernel.no;
    CHELSIO_T3 = lib.kernel.no;
    CHELSIO_T4 = lib.kernel.no;
    CHELSIO_T4VF = lib.kernel.no;

    NET_VENDOR_CISCO = lib.kernel.yes;

    ENIC = lib.kernel.no;

    NET_VENDOR_CORTINA = lib.kernel.yes;
    NET_VENDOR_DAVICOM = lib.kernel.yes;
    NET_VENDOR_DEC = lib.kernel.yes;
    NET_TULIP = lib.kernel.yes;

    DE2104X = lib.kernel.no;

    TULIP = lib.kernel.no;

    WINBOND_840 = lib.kernel.no;

    DM9102 = lib.kernel.no;

    ULI526X = lib.kernel.no;

    PCMCIA_XIRCOM = lib.kernel.no;

    NET_VENDOR_DLINK = lib.kernel.yes;

    DL2K = lib.kernel.no;

    SUNDANCE = lib.kernel.no;

    NET_VENDOR_EMULEX = lib.kernel.yes;

    BE2NET = lib.kernel.no;

    NET_VENDOR_ENGLEDER = lib.kernel.yes;

    TSNEP = lib.kernel.no;

    NET_VENDOR_EZCHIP = lib.kernel.yes;
    NET_VENDOR_FUNGIBLE = lib.kernel.yes;

    FUN_ETH = lib.kernel.no;

    NET_VENDOR_GOOGLE = lib.kernel.yes;

    GVE = lib.kernel.no;

    NET_VENDOR_HISILICON = lib.kernel.yes;

    HIBMCGE = lib.kernel.no;

    NET_VENDOR_HUAWEI = lib.kernel.yes;

    HINIC = lib.kernel.no;

    HINIC3 = lib.kernel.no;

    NET_VENDOR_I825XX = lib.kernel.yes;
    NET_VENDOR_INTEL = lib.kernel.yes;

    E100 = lib.kernel.yes;

    E1000 = lib.kernel.yes;

    E1000E = lib.kernel.yes;
    E1000E_HWTS = lib.kernel.yes;

    IGB = lib.kernel.no;

    IGBVF = lib.kernel.no;

    IXGBE = lib.kernel.no;

    IXGBEVF = lib.kernel.no;

    I40E = lib.kernel.no;

    I40EVF = lib.kernel.no;

    ICE = lib.kernel.no;

    FM10K = lib.kernel.no;

    IGC = lib.kernel.no;

    IDPF = lib.kernel.no;

    JME = lib.kernel.no;

    NET_VENDOR_LITEX = lib.kernel.yes;
    NET_VENDOR_MARVELL = lib.kernel.yes;

    MVMDIO = lib.kernel.no;

    SKGE = lib.kernel.no;

    SKY2 = lib.kernel.yes;
    SKY2_DEBUG = lib.kernel.no;

    OCTEON_EP = lib.kernel.no;
    OCTEON_EP_VF = lib.kernel.no;

    NET_VENDOR_MELLANOX = lib.kernel.yes;

    MLX4_EN = lib.kernel.no;

    MLX5_CORE = lib.kernel.no;

    MLXSW_CORE = lib.kernel.no;

    MLXFW = lib.kernel.no;

    NET_VENDOR_META = lib.kernel.yes;

    FBNIC = lib.kernel.no;

    NET_VENDOR_MICREL = lib.kernel.yes;

    KS8842 = lib.kernel.no;

    KS8851_MLL = lib.kernel.no;

    KSZ884X_PCI = lib.kernel.no;

    NET_VENDOR_MICROCHIP = lib.kernel.yes;

    LAN743X = lib.kernel.no;

    VCAP = lib.kernel.no;

    NET_VENDOR_MICROSEMI = lib.kernel.yes;
    NET_VENDOR_MICROSOFT = lib.kernel.yes;
    NET_VENDOR_MUCSE = lib.kernel.yes;

    MGBE = lib.kernel.no;

    NET_VENDOR_MYRI = lib.kernel.yes;

    MYRI10GE = lib.kernel.no;

    FEALNX = lib.kernel.no;

    NET_VENDOR_NI = lib.kernel.yes;

    NI_XGE_MANAGEMENT_ENET = lib.kernel.no;

    NET_VENDOR_NATSEMI = lib.kernel.yes;

    NATSEMI = lib.kernel.no;

    NS83820 = lib.kernel.no;

    NET_VENDOR_NETRONOME = lib.kernel.yes;

    NFP = lib.kernel.no;

    NET_VENDOR_8390 = lib.kernel.yes;

    NE2K_PCI = lib.kernel.no;

    PCMCIA_PCNET = lib.kernel.no;

    NET_VENDOR_NVIDIA = lib.kernel.yes;

    FORCEDETH = lib.kernel.yes;

    NET_VENDOR_OKI = lib.kernel.yes;

    ETHOC = lib.kernel.no;

    NET_VENDOR_PENSANDO = lib.kernel.yes;

    IONIC = lib.kernel.no;

    NET_VENDOR_QLOGIC = lib.kernel.yes;

    QLA3XXX = lib.kernel.no;

    QLCNIC = lib.kernel.no;

    NETXEN_NIC = lib.kernel.no;

    QED = lib.kernel.no;

    NET_VENDOR_BROCADE = lib.kernel.yes;

    BNA = lib.kernel.no;

    NET_VENDOR_QUALCOMM = lib.kernel.yes;

    QCOM_EMAC = lib.kernel.no;

    RMNET = lib.kernel.no;

    NET_VENDOR_RDC = lib.kernel.yes;

    R6040 = lib.kernel.no;

    NET_VENDOR_REALTEK = lib.kernel.yes;

    "8139CP" = lib.kernel.no;

    "8139TOO" = lib.kernel.yes;
    "8139TOO_PIO" = lib.kernel.yes;
    "8139TOO_TUNE_TWISTER" = lib.kernel.no;
    "8139TOO_8129" = lib.kernel.no;

    "8139_OLD_RX_RESET" = lib.kernel.no;

    R8169 = lib.kernel.yes;

    RTASE = lib.kernel.no;

    NET_VENDOR_RENESAS = lib.kernel.yes;
    NET_VENDOR_ROCKER = lib.kernel.yes;
    NET_VENDOR_SAMSUNG = lib.kernel.yes;

    SXGBE_ETH = lib.kernel.no;

    NET_VENDOR_SEEQ = lib.kernel.yes;
    NET_VENDOR_SILAN = lib.kernel.yes;

    SC92031 = lib.kernel.no;

    NET_VENDOR_SIS = lib.kernel.yes;

    SIS900 = lib.kernel.no;

    SIS190 = lib.kernel.no;

    NET_VENDOR_SOLARFLARE = lib.kernel.yes;

    SFC = lib.kernel.no;
    SFC_FALCON = lib.kernel.no;
    SFC_SIENA = lib.kernel.no;

    NET_VENDOR_SMSC = lib.kernel.yes;

    EPIC100 = lib.kernel.no;

    SMSC911X = lib.kernel.no;

    SMSC9420 = lib.kernel.no;

    NET_VENDOR_SOCIONEXT = lib.kernel.yes;
    NET_VENDOR_STMICRO = lib.kernel.yes;

    STMMAC_ETH = lib.kernel.no;

    NET_VENDOR_SUN = lib.kernel.yes;

    HAPPYMEAL = lib.kernel.no;

    SUNGEM = lib.kernel.no;

    CASSINI = lib.kernel.no;

    NIU = lib.kernel.no;

    NET_VENDOR_SYNOPSYS = lib.kernel.yes;

    DWC_XLGMAC = lib.kernel.no;

    NET_VENDOR_TEHUTI = lib.kernel.yes;

    TEHUTI = lib.kernel.no;
    TEHUTI_TN40 = lib.kernel.no;

    NET_VENDOR_TI = lib.kernel.yes;

    TI_CPSW_PHY_SEL = lib.kernel.no;

    TLAN = lib.kernel.no;

    NET_VENDOR_VERTEXCOM = lib.kernel.yes;
    NET_VENDOR_VIA = lib.kernel.yes;

    VIA_RHINE = lib.kernel.no;
    VIA_VELOCITY = lib.kernel.no;

    NET_VENDOR_WANGXUN = lib.kernel.yes;

    NGBE = lib.kernel.no;

    TXGBEVF = lib.kernel.no;

    NGBEVF = lib.kernel.no;

    NET_VENDOR_WIZNET = lib.kernel.yes;
    NET_VENDOR_XILINX = lib.kernel.yes;

    XILINX_EMACLITE = lib.kernel.no;
    XILINX_AXI_EMAC = lib.kernel.no;
    XILINX_LL_TEMAC = lib.kernel.no;

    NET_VENDOR_XIRCOM = lib.kernel.yes;

    PCMCIA_XIRC2PS = lib.kernel.no;

    FDDI = lib.kernel.no;

    PHYLIB = lib.kernel.yes;

    PHY_PACKAGE = lib.kernel.yes;

    LED_TRIGGER_PHY = lib.kernel.no;

    FIXED_PHY = lib.kernel.no;

    AS21XXX_PHY = lib.kernel.no;

    AIR_AN8801_PHY = lib.kernel.no;
    AIR_EN8811H_PHY = lib.kernel.no;

    AMD_PHY = lib.kernel.no;

    ADIN_PHY = lib.kernel.no;

    ADIN1100_PHY = lib.kernel.no;

    AQUANTIA_PHY = lib.kernel.no;

    AX88796B_PHY = lib.kernel.no;

    BROADCOM_PHY = lib.kernel.no;

    BCM54140_PHY = lib.kernel.no;

    BCM7XXX_PHY = lib.kernel.no;

    BCM84881_PHY = lib.kernel.no;

    BCM87XX_PHY = lib.kernel.no;

    CICADA_PHY = lib.kernel.no;

    CORTINA_PHY = lib.kernel.no;

    DAVICOM_PHY = lib.kernel.no;

    ICPLUS_PHY = lib.kernel.no;

    LXT_PHY = lib.kernel.no;

    INTEL_XWAY_PHY = lib.kernel.no;

    LSI_ET1011C_PHY = lib.kernel.no;

    MARVELL_PHY = lib.kernel.no;
    MARVELL_10G_PHY = lib.kernel.no;
    MARVELL_88Q2XXX_PHY = lib.kernel.no;
    MARVELL_88X2222_PHY = lib.kernel.no;

    MAXLINEAR_GPHY = lib.kernel.no;
    MAXLINEAR_86110_PHY = lib.kernel.no;

    MEDIATEK_GE_PHY = lib.kernel.no;

    MICREL_PHY = lib.kernel.no;

    MICROCHIP_T1S_PHY = lib.kernel.no;
    MICROCHIP_PHY = lib.kernel.no;
    MICROCHIP_T1_PHY = lib.kernel.no;

    MICROSEMI_PHY = lib.kernel.no;

    MOTORCOMM_PHY = lib.kernel.no;

    NATIONAL_PHY = lib.kernel.no;

    NXP_CBTX_PHY = lib.kernel.no;
    NXP_C45_TJA11XX_PHY = lib.kernel.no;
    NXP_TJA11XX_PHY = lib.kernel.no;

    NCN26000_PHY = lib.kernel.no;

    AT803X_PHY = lib.kernel.no;

    QCA83XX_PHY = lib.kernel.no;

    QCA808X_PHY = lib.kernel.no;

    QSEMI_PHY = lib.kernel.no;

    REALTEK_PHY = lib.kernel.yes;
    REALTEK_PHY_HWMON = lib.kernel.no;

    RENESAS_PHY = lib.kernel.no;

    ROCKCHIP_PHY = lib.kernel.no;

    SMSC_PHY = lib.kernel.no;

    STE10XP = lib.kernel.no;

    TERANETICS_PHY = lib.kernel.no;

    DP83822_PHY = lib.kernel.no;

    DP83TC811_PHY = lib.kernel.no;

    DP83848_PHY = lib.kernel.no;

    DP83867_PHY = lib.kernel.no;

    DP83869_PHY = lib.kernel.no;

    DP83TD510_PHY = lib.kernel.no;

    DP83TG720_PHY = lib.kernel.no;

    VITESSE_PHY = lib.kernel.no;

    XILINX_GMII2RGMII = lib.kernel.no;

    PSE_CONTROLLER = lib.kernel.no;

    FWNODE_MDIO = lib.kernel.yes;

    ACPI_MDIO = lib.kernel.yes;

    MDIO_BITBANG = lib.kernel.no;
    MDIO_BCM_UNIMAC = lib.kernel.no;
    MDIO_MVUSB = lib.kernel.no;
    MDIO_MSCC_MIIM = lib.kernel.no;
    MDIO_THUNDER = lib.kernel.no;

    PCS_XPCS = lib.kernel.no;

    PPP = lib.kernel.no;

    SLIP = lib.kernel.no;

    USB_NET_DRIVERS = lib.kernel.yes;
    USB_CATC = lib.kernel.no;
    USB_KAWETH = lib.kernel.no;
    USB_PEGASUS = lib.kernel.no;
    USB_RTL8150 = lib.kernel.no;
    USB_RTL8152 = lib.kernel.no;
    USB_LAN78XX = lib.kernel.no;
    USB_USBNET = lib.kernel.no;
    USB_HSO = lib.kernel.no;
    USB_IPHETH = lib.kernel.no;

    WLAN = lib.kernel.yes;
    WLAN_VENDOR_ADMTEK = lib.kernel.yes;

    ADM8211 = lib.kernel.no;

    WLAN_VENDOR_ATH = lib.kernel.yes;

    ATH_DEBUG = lib.kernel.no;

    ATH5K = lib.kernel.no;
    ATH5K_PCI = lib.kernel.no;

    ATH9K = lib.kernel.no;
    ATH9K_HTC = lib.kernel.no;

    CARL9170 = lib.kernel.no;

    ATH6KL = lib.kernel.no;

    AR5523 = lib.kernel.no;

    WIL6210 = lib.kernel.no;

    ATH10K = lib.kernel.no;

    WCN36XX = lib.kernel.no;

    ATH11K = lib.kernel.no;

    ATH12K = lib.kernel.no;

    WLAN_VENDOR_ATMEL = lib.kernel.yes;

    AT76C50X_USB = lib.kernel.no;

    WLAN_VENDOR_BROADCOM = lib.kernel.yes;

    B43 = lib.kernel.no;

    B43LEGACY = lib.kernel.no;

    BRCMSMAC = lib.kernel.no;

    BRCMFMAC = lib.kernel.no;

    WLAN_VENDOR_INTEL = lib.kernel.yes;

    IPW2100 = lib.kernel.no;

    IPW2200 = lib.kernel.no;

    IWL4965 = lib.kernel.no;

    IWL3945 = lib.kernel.no;

    IWLWIFI = lib.kernel.no;

    WLAN_VENDOR_INTERSIL = lib.kernel.yes;

    P54_COMMON = lib.kernel.no;

    WLAN_VENDOR_MARVELL = lib.kernel.yes;

    LIBERTAS = lib.kernel.no;
    LIBERTAS_THINFIRM = lib.kernel.no;

    MWIFIEX = lib.kernel.no;

    MWL8K = lib.kernel.no;

    WLAN_VENDOR_MEDIATEK = lib.kernel.yes;

    MT7601U = lib.kernel.no;

    MT76x0U = lib.kernel.no;

    MT76x0E = lib.kernel.no;

    MT76x2E = lib.kernel.no;

    MT76x2U = lib.kernel.no;

    MT7603E = lib.kernel.no;

    MT7615E = lib.kernel.no;

    MT7663U = lib.kernel.no;

    MT7663S = lib.kernel.no;

    MT7915E = lib.kernel.no;

    MT7921E = lib.kernel.no;

    MT7921S = lib.kernel.no;

    MT7921U = lib.kernel.no;

    MT7996E = lib.kernel.no;

    MT7925E = lib.kernel.no;

    MT7925U = lib.kernel.no;

    WLAN_VENDOR_MICROCHIP = lib.kernel.yes;

    WILC1000_SDIO = lib.kernel.no;

    WLAN_VENDOR_PURELIFI = lib.kernel.yes;

    PLFXLC = lib.kernel.no;

    WLAN_VENDOR_RALINK = lib.kernel.yes;

    RT2X00 = lib.kernel.no;

    WLAN_VENDOR_REALTEK = lib.kernel.yes;

    RTL8180 = lib.kernel.no;

    RTL8187 = lib.kernel.no;

    RTL_CARDS = lib.kernel.yes;

    RTL8192CE = lib.kernel.no;

    RTL8192SE = lib.kernel.no;

    RTL8192DE = lib.kernel.no;

    RTL8723AE = lib.kernel.no;

    RTL8723BE = lib.kernel.no;

    RTL8188EE = lib.kernel.no;

    RTL8192EE = lib.kernel.no;

    RTL8821AE = lib.kernel.no;

    RTL8192CU = lib.kernel.no;

    RTL8192DU = lib.kernel.no;

    RTL8XXXU = lib.kernel.no;

    RTW88 = lib.kernel.no;

    RTW89 = lib.kernel.no;

    WLAN_VENDOR_RSI = lib.kernel.yes;

    RSI_91X = lib.kernel.no;

    WLAN_VENDOR_SILABS = lib.kernel.yes;

    WFX = lib.kernel.no;

    WLAN_VENDOR_ST = lib.kernel.yes;

    CW1200 = lib.kernel.no;

    WLAN_VENDOR_TI = lib.kernel.yes;

    WL1251 = lib.kernel.no;

    WL12XX = lib.kernel.no;

    WL18XX = lib.kernel.no;

    WLCORE = lib.kernel.no;

    WLAN_VENDOR_ZYDAS = lib.kernel.yes;

    ZD1211RW = lib.kernel.no;

    WLAN_VENDOR_QUANTENNA = lib.kernel.yes;

    QTNFMAC_PCIE = lib.kernel.no;

    MAC80211_HWSIM = lib.kernel.no;

    VIRT_WIFI = lib.kernel.no;

    WAN = lib.kernel.no;

    WWAN = lib.kernel.no;

    VMXNET3 = lib.kernel.no;

    FUJITSU_ES = lib.kernel.no;

    USB4_NET = lib.kernel.no;

    HYPERV_NET = lib.kernel.no;

    NETDEVSIM = lib.kernel.no;

    NET_FAILOVER = lib.kernel.yes;

    INPUT = lib.kernel.yes;
    INPUT_LEDS = lib.kernel.yes;
    INPUT_FF_MEMLESS = lib.kernel.yes;
    INPUT_SPARSEKMAP = lib.kernel.yes;
    INPUT_MATRIXKMAP = lib.kernel.yes;
    INPUT_VIVALDIFMAP = lib.kernel.yes;
    INPUT_MOUSEDEV = lib.kernel.yes;
    INPUT_MOUSEDEV_PSAUX = lib.kernel.no;
    INPUT_MOUSEDEV_SCREEN_X = lib.kernel.freeform "1024";
    INPUT_MOUSEDEV_SCREEN_Y = lib.kernel.freeform "768";
    INPUT_JOYDEV = lib.kernel.yes;
    INPUT_EVDEV = lib.kernel.yes;
    INPUT_KEYBOARD = lib.kernel.yes;

    KEYBOARD_ADC = lib.kernel.no;
    KEYBOARD_ADP5588 = lib.kernel.yes;
    KEYBOARD_ATKBD = lib.kernel.yes;
    KEYBOARD_QT1050 = lib.kernel.yes;
    KEYBOARD_QT1070 = lib.kernel.yes;
    KEYBOARD_QT2160 = lib.kernel.yes;
    KEYBOARD_DLINK_DIR685 = lib.kernel.yes;
    KEYBOARD_LKKBD = lib.kernel.yes;
    KEYBOARD_GPIO = lib.kernel.yes;
    KEYBOARD_GPIO_POLLED = lib.kernel.yes;
    KEYBOARD_TCA8418 = lib.kernel.yes;
    KEYBOARD_MATRIX = lib.kernel.yes;
    KEYBOARD_CHARLIEPLEX = lib.kernel.yes;
    KEYBOARD_LM8323 = lib.kernel.yes;
    KEYBOARD_LM8333 = lib.kernel.yes;
    KEYBOARD_MAX7359 = lib.kernel.yes;
    KEYBOARD_MPR121 = lib.kernel.yes;
    KEYBOARD_NEWTON = lib.kernel.yes;
    KEYBOARD_OPENCORES = lib.kernel.yes;
    KEYBOARD_PINEPHONE = lib.kernel.no;
    KEYBOARD_STOWAWAY = lib.kernel.yes;
    KEYBOARD_SUNKBD = lib.kernel.yes;
    KEYBOARD_TM2_TOUCHKEY = lib.kernel.yes;
    KEYBOARD_XTKBD = lib.kernel.yes;
    KEYBOARD_CYPRESS_SF = lib.kernel.yes;

    INPUT_MOUSE = lib.kernel.yes;

    MOUSE_PS2 = lib.kernel.yes;
    MOUSE_PS2_ALPS = lib.kernel.yes;
    MOUSE_PS2_BYD = lib.kernel.yes;
    MOUSE_PS2_LOGIPS2PP = lib.kernel.yes;
    MOUSE_PS2_SYNAPTICS = lib.kernel.yes;
    MOUSE_PS2_SYNAPTICS_SMBUS = lib.kernel.yes;
    MOUSE_PS2_CYPRESS = lib.kernel.yes;
    MOUSE_PS2_LIFEBOOK = lib.kernel.yes;
    MOUSE_PS2_TRACKPOINT = lib.kernel.yes;
    MOUSE_PS2_ELANTECH = lib.kernel.yes;
    MOUSE_PS2_ELANTECH_SMBUS = lib.kernel.yes;
    MOUSE_PS2_SENTELIC = lib.kernel.yes;
    MOUSE_PS2_TOUCHKIT = lib.kernel.yes;
    MOUSE_PS2_FOCALTECH = lib.kernel.yes;
    MOUSE_PS2_VMMOUSE = lib.kernel.yes;
    MOUSE_PS2_SMBUS = lib.kernel.yes;
    MOUSE_SERIAL = lib.kernel.yes;
    MOUSE_APPLETOUCH = lib.kernel.yes;
    MOUSE_BCM5974 = lib.kernel.yes;
    MOUSE_CYAPA = lib.kernel.yes;
    MOUSE_ELAN_I2C = lib.kernel.yes;
    MOUSE_ELAN_I2C_I2C = lib.kernel.yes;
    MOUSE_ELAN_I2C_SMBUS = lib.kernel.yes;
    MOUSE_VSXXXAA = lib.kernel.yes;
    MOUSE_GPIO = lib.kernel.yes;
    MOUSE_SYNAPTICS_I2C = lib.kernel.yes;
    MOUSE_SYNAPTICS_USB = lib.kernel.yes;

    INPUT_JOYSTICK = lib.kernel.yes;

    JOYSTICK_ANALOG = lib.kernel.yes;
    JOYSTICK_A3D = lib.kernel.yes;
    JOYSTICK_ADC = lib.kernel.no;
    JOYSTICK_ADI = lib.kernel.yes;
    JOYSTICK_COBRA = lib.kernel.yes;
    JOYSTICK_GF2K = lib.kernel.yes;
    JOYSTICK_GRIP = lib.kernel.yes;
    JOYSTICK_GRIP_MP = lib.kernel.yes;
    JOYSTICK_GUILLEMOT = lib.kernel.yes;
    JOYSTICK_INTERACT = lib.kernel.yes;
    JOYSTICK_SIDEWINDER = lib.kernel.yes;
    JOYSTICK_TMDC = lib.kernel.yes;
    JOYSTICK_IFORCE = lib.kernel.yes;
    JOYSTICK_IFORCE_USB = lib.kernel.yes;
    JOYSTICK_IFORCE_232 = lib.kernel.yes;
    JOYSTICK_WARRIOR = lib.kernel.yes;
    JOYSTICK_MAGELLAN = lib.kernel.yes;
    JOYSTICK_SPACEORB = lib.kernel.yes;
    JOYSTICK_SPACEBALL = lib.kernel.yes;
    JOYSTICK_STINGER = lib.kernel.yes;
    JOYSTICK_TWIDJOY = lib.kernel.yes;
    JOYSTICK_ZHENHUA = lib.kernel.yes;
    JOYSTICK_AS5011 = lib.kernel.yes;
    JOYSTICK_JOYDUMP = lib.kernel.yes;
    JOYSTICK_XPAD = lib.kernel.yes;
    JOYSTICK_XPAD_FF = lib.kernel.yes;
    JOYSTICK_XPAD_LEDS = lib.kernel.yes;
    JOYSTICK_PXRC = lib.kernel.yes;
    JOYSTICK_QWIIC = lib.kernel.yes;
    JOYSTICK_FSIA6B = lib.kernel.yes;
    JOYSTICK_SENSEHAT = lib.kernel.yes;
    JOYSTICK_SEESAW = lib.kernel.yes;

    INPUT_TABLET = lib.kernel.yes;

    TABLET_USB_ACECAD = lib.kernel.yes;
    TABLET_USB_AIPTEK = lib.kernel.yes;
    TABLET_USB_HANWANG = lib.kernel.yes;
    TABLET_USB_KBTAB = lib.kernel.yes;
    TABLET_USB_PEGASUS = lib.kernel.yes;
    TABLET_SERIAL_WACOM4 = lib.kernel.yes;

    INPUT_TOUCHSCREEN = lib.kernel.yes;

    TOUCHSCREEN_AD7879 = lib.kernel.yes;
    TOUCHSCREEN_AD7879_I2C = lib.kernel.yes;
    TOUCHSCREEN_ADC = lib.kernel.no;
    TOUCHSCREEN_ATMEL_MXT = lib.kernel.yes;
    TOUCHSCREEN_ATMEL_MXT_T37 = lib.kernel.no;
    TOUCHSCREEN_AUO_PIXCIR = lib.kernel.yes;
    TOUCHSCREEN_BU21013 = lib.kernel.yes;
    TOUCHSCREEN_BU21029 = lib.kernel.yes;
    TOUCHSCREEN_CHIPONE_ICN8505 = lib.kernel.yes;
    TOUCHSCREEN_CY8CTMA140 = lib.kernel.yes;
    TOUCHSCREEN_CY8CTMG110 = lib.kernel.yes;
    TOUCHSCREEN_CYTTSP_CORE = lib.kernel.yes;
    TOUCHSCREEN_CYTTSP_I2C = lib.kernel.yes;
    TOUCHSCREEN_CYTTSP5 = lib.kernel.yes;
    TOUCHSCREEN_DYNAPRO = lib.kernel.yes;
    TOUCHSCREEN_HAMPSHIRE = lib.kernel.yes;
    TOUCHSCREEN_EETI = lib.kernel.yes;
    TOUCHSCREEN_EGALAX_SERIAL = lib.kernel.yes;
    TOUCHSCREEN_EXC3000 = lib.kernel.yes;
    TOUCHSCREEN_FUJITSU = lib.kernel.yes;
    TOUCHSCREEN_GOODIX = lib.kernel.yes;
    TOUCHSCREEN_GOODIX_BERLIN_CORE = lib.kernel.yes;
    TOUCHSCREEN_GOODIX_BERLIN_I2C = lib.kernel.yes;
    TOUCHSCREEN_HIDEEP = lib.kernel.yes;
    TOUCHSCREEN_HIMAX_HX852X = lib.kernel.yes;
    TOUCHSCREEN_HYCON_HY46XX = lib.kernel.yes;
    TOUCHSCREEN_HYNITRON_CSTXXX = lib.kernel.yes;
    TOUCHSCREEN_HYNITRON_CST816X = lib.kernel.yes;
    TOUCHSCREEN_ILI210X = lib.kernel.yes;
    TOUCHSCREEN_ILITEK = lib.kernel.yes;
    TOUCHSCREEN_S6SY761 = lib.kernel.yes;
    TOUCHSCREEN_GUNZE = lib.kernel.yes;
    TOUCHSCREEN_EKTF2127 = lib.kernel.yes;
    TOUCHSCREEN_ELAN = lib.kernel.yes;
    TOUCHSCREEN_ELO = lib.kernel.yes;
    TOUCHSCREEN_WACOM_W8001 = lib.kernel.yes;
    TOUCHSCREEN_WACOM_I2C = lib.kernel.yes;
    TOUCHSCREEN_WACOM_W9000 = lib.kernel.yes;
    TOUCHSCREEN_MAX11801 = lib.kernel.yes;
    TOUCHSCREEN_MMS114 = lib.kernel.yes;
    TOUCHSCREEN_MELFAS_MIP4 = lib.kernel.yes;
    TOUCHSCREEN_MSG2638 = lib.kernel.yes;
    TOUCHSCREEN_MTOUCH = lib.kernel.yes;
    TOUCHSCREEN_NOVATEK_NVT_TS = lib.kernel.yes;
    TOUCHSCREEN_IMAGIS = lib.kernel.yes;
    TOUCHSCREEN_INEXIO = lib.kernel.yes;
    TOUCHSCREEN_PENMOUNT = lib.kernel.yes;
    TOUCHSCREEN_EDT_FT5X06 = lib.kernel.yes;
    TOUCHSCREEN_TOUCHRIGHT = lib.kernel.yes;
    TOUCHSCREEN_TOUCHWIN = lib.kernel.yes;
    TOUCHSCREEN_PIXCIR = lib.kernel.yes;
    TOUCHSCREEN_WDT87XX_I2C = lib.kernel.yes;
    TOUCHSCREEN_USB_COMPOSITE = lib.kernel.yes;
    TOUCHSCREEN_USB_EGALAX = lib.kernel.yes;
    TOUCHSCREEN_USB_PANJIT = lib.kernel.yes;
    TOUCHSCREEN_USB_3M = lib.kernel.yes;
    TOUCHSCREEN_USB_ITM = lib.kernel.yes;
    TOUCHSCREEN_USB_ETURBO = lib.kernel.yes;
    TOUCHSCREEN_USB_GUNZE = lib.kernel.yes;
    TOUCHSCREEN_USB_DMC_TSC10 = lib.kernel.yes;
    TOUCHSCREEN_USB_IRTOUCH = lib.kernel.yes;
    TOUCHSCREEN_USB_IDEALTEK = lib.kernel.yes;
    TOUCHSCREEN_USB_GENERAL_TOUCH = lib.kernel.yes;
    TOUCHSCREEN_USB_GOTOP = lib.kernel.yes;
    TOUCHSCREEN_USB_JASTEC = lib.kernel.yes;
    TOUCHSCREEN_USB_ELO = lib.kernel.yes;
    TOUCHSCREEN_USB_E2I = lib.kernel.yes;
    TOUCHSCREEN_USB_ZYTRONIC = lib.kernel.yes;
    TOUCHSCREEN_USB_ETT_TC45USB = lib.kernel.yes;
    TOUCHSCREEN_USB_NEXIO = lib.kernel.yes;
    TOUCHSCREEN_USB_EASYTOUCH = lib.kernel.yes;
    TOUCHSCREEN_TOUCHIT213 = lib.kernel.yes;
    TOUCHSCREEN_TSC_SERIO = lib.kernel.yes;
    TOUCHSCREEN_TSC200X_CORE = lib.kernel.yes;
    TOUCHSCREEN_TSC2004 = lib.kernel.yes;
    TOUCHSCREEN_TSC2007 = lib.kernel.yes;
    TOUCHSCREEN_TSC2007_IIO = lib.kernel.no;
    TOUCHSCREEN_RM_TS = lib.kernel.yes;
    TOUCHSCREEN_SILEAD = lib.kernel.yes;
    TOUCHSCREEN_SIS_I2C = lib.kernel.yes;
    TOUCHSCREEN_ST1232 = lib.kernel.yes;
    TOUCHSCREEN_STMFTS = lib.kernel.yes;
    TOUCHSCREEN_SX8654 = lib.kernel.yes;
    TOUCHSCREEN_TPS6507X = lib.kernel.yes;
    TOUCHSCREEN_ZET6223 = lib.kernel.yes;
    TOUCHSCREEN_ZFORCE = lib.kernel.yes;
    TOUCHSCREEN_COLIBRI_VF50 = lib.kernel.no;
    TOUCHSCREEN_ROHM_BU21023 = lib.kernel.yes;
    TOUCHSCREEN_IQS5XX = lib.kernel.yes;
    TOUCHSCREEN_IQS7211 = lib.kernel.yes;
    TOUCHSCREEN_ZINITIX = lib.kernel.yes;
    TOUCHSCREEN_HIMAX_HX83112B = lib.kernel.yes;

    INPUT_MISC = lib.kernel.yes;
    INPUT_AD714X = lib.kernel.yes;
    INPUT_AD714X_I2C = lib.kernel.yes;
    INPUT_AW86927 = lib.kernel.yes;
    INPUT_BMA150 = lib.kernel.yes;
    INPUT_E3X0_BUTTON = lib.kernel.yes;
    INPUT_PCSPKR = lib.kernel.yes;
    INPUT_MMA8450 = lib.kernel.yes;
    INPUT_APANEL = lib.kernel.yes;
    INPUT_GPIO_BEEPER = lib.kernel.yes;
    INPUT_GPIO_DECODER = lib.kernel.yes;
    INPUT_GPIO_VIBRA = lib.kernel.yes;
    INPUT_ATLAS_BTNS = lib.kernel.yes;
    INPUT_ATI_REMOTE2 = lib.kernel.yes;
    INPUT_KEYSPAN_REMOTE = lib.kernel.yes;
    INPUT_KXTJ9 = lib.kernel.yes;
    INPUT_POWERMATE = lib.kernel.yes;
    INPUT_YEALINK = lib.kernel.yes;
    INPUT_CM109 = lib.kernel.yes;
    INPUT_REGULATOR_HAPTIC = lib.kernel.no;
    INPUT_UINPUT = lib.kernel.yes;
    INPUT_PCF8574 = lib.kernel.yes;
    INPUT_GPIO_ROTARY_ENCODER = lib.kernel.yes;
    INPUT_DA7280_HAPTICS = lib.kernel.yes;
    INPUT_ADXL34X = lib.kernel.yes;
    INPUT_ADXL34X_I2C = lib.kernel.yes;
    INPUT_IMS_PCU = lib.kernel.yes;
    INPUT_IQS269A = lib.kernel.yes;
    INPUT_IQS626A = lib.kernel.yes;
    INPUT_IQS7222 = lib.kernel.yes;
    INPUT_CMA3000 = lib.kernel.yes;
    INPUT_CMA3000_I2C = lib.kernel.yes;
    INPUT_IDEAPAD_SLIDEBAR = lib.kernel.yes;
    INPUT_SOC_BUTTON_ARRAY = lib.kernel.yes;
    INPUT_DRV260X_HAPTICS = lib.kernel.yes;
    INPUT_DRV2665_HAPTICS = lib.kernel.yes;
    INPUT_DRV2667_HAPTICS = lib.kernel.yes;

    RMI4_CORE = lib.kernel.yes;
    RMI4_I2C = lib.kernel.yes;
    RMI4_SMB = lib.kernel.yes;
    RMI4_F03 = lib.kernel.yes;
    RMI4_F03_SERIO = lib.kernel.yes;
    RMI4_2D_SENSOR = lib.kernel.yes;
    RMI4_F11 = lib.kernel.yes;
    RMI4_F12 = lib.kernel.yes;
    RMI4_F1A = lib.kernel.yes;
    RMI4_F21 = lib.kernel.yes;
    RMI4_F30 = lib.kernel.yes;
    RMI4_F34 = lib.kernel.yes;
    RMI4_F3A = lib.kernel.yes;
    RMI4_F54 = lib.kernel.no;
    RMI4_F55 = lib.kernel.yes;

    SERIO = lib.kernel.yes;

    ARCH_MIGHT_HAVE_PC_SERIO = lib.kernel.yes;

    SERIO_I8042 = lib.kernel.yes;
    SERIO_SERPORT = lib.kernel.yes;
    SERIO_PCIPS2 = lib.kernel.no;
    SERIO_LIBPS2 = lib.kernel.yes;
    SERIO_RAW = lib.kernel.no;
    SERIO_ALTERA_PS2 = lib.kernel.no;
    SERIO_PS2MULT = lib.kernel.no;
    SERIO_ARC_PS2 = lib.kernel.no;

    HYPERV_KEYBOARD = lib.kernel.yes;

    SERIO_GPIO_PS2 = lib.kernel.no;

    USERIO = lib.kernel.no;

    GAMEPORT = lib.kernel.yes;
    GAMEPORT_EMU10K1 = lib.kernel.no;
    GAMEPORT_FM801 = lib.kernel.no;

    TTY = lib.kernel.yes;

    VT = lib.kernel.yes;

    CONSOLE_TRANSLATIONS = lib.kernel.yes;

    VT_CONSOLE = lib.kernel.yes;
    VT_CONSOLE_SLEEP = lib.kernel.yes;
    VT_HW_CONSOLE_BINDING = lib.kernel.no;

    UNIX98_PTYS = lib.kernel.yes;

    LEGACY_PTYS = lib.kernel.yes;
    LEGACY_PTY_COUNT = lib.kernel.freeform "256";
    LEGACY_TIOCSTI = lib.kernel.yes;

    LDISC_AUTOLOAD = lib.kernel.yes;

    SERIAL_EARLYCON = lib.kernel.yes;
    SERIAL_8250 = lib.kernel.yes;
    SERIAL_8250_PNP = lib.kernel.yes;
    SERIAL_8250_16550A_VARIANTS = lib.kernel.no;
    SERIAL_8250_FINTEK = lib.kernel.no;
    SERIAL_8250_CONSOLE = lib.kernel.yes;
    SERIAL_8250_DMA = lib.kernel.yes;
    SERIAL_8250_PCILIB = lib.kernel.yes;
    SERIAL_8250_PCI = lib.kernel.yes;
    SERIAL_8250_EXAR = lib.kernel.yes;
    SERIAL_8250_CS = lib.kernel.no;
    SERIAL_8250_NR_UARTS = lib.kernel.freeform "32";
    SERIAL_8250_RUNTIME_UARTS = lib.kernel.freeform "4";
    SERIAL_8250_EXTENDED = lib.kernel.yes;
    SERIAL_8250_SHARE_IRQ = lib.kernel.yes;
    SERIAL_8250_DETECT_IRQ = lib.kernel.yes;
    SERIAL_8250_RSA = lib.kernel.yes;
    SERIAL_8250_MANY_PORTS = lib.kernel.yes;
    SERIAL_8250_PCI1XXXX = lib.kernel.no;
    SERIAL_8250_DW = lib.kernel.no;
    SERIAL_8250_RT288X = lib.kernel.no;
    SERIAL_8250_LPSS = lib.kernel.yes;
    SERIAL_8250_MID = lib.kernel.yes;
    SERIAL_8250_PERICOM = lib.kernel.yes;
    SERIAL_8250_NI = lib.kernel.no;
    SERIAL_8250_DWLIB = lib.kernel.yes;
    SERIAL_MAX310X = lib.kernel.no;
    SERIAL_UARTLITE = lib.kernel.no;
    SERIAL_CORE = lib.kernel.yes;
    SERIAL_CORE_CONSOLE = lib.kernel.yes;
    SERIAL_JSM = lib.kernel.no;
    SERIAL_LANTIQ = lib.kernel.no;
    SERIAL_SCCNXP = lib.kernel.no;
    SERIAL_SC16IS7XX = lib.kernel.no;
    SERIAL_ALTERA_JTAGUART = lib.kernel.no;
    SERIAL_ALTERA_UART = lib.kernel.no;
    SERIAL_ARC = lib.kernel.no;
    SERIAL_RP2 = lib.kernel.no;
    SERIAL_FSL_LPUART = lib.kernel.no;
    SERIAL_FSL_LINFLEXUART = lib.kernel.no;
    SERIAL_MCTRL_GPIO = lib.kernel.yes;
    SERIAL_NONSTANDARD = lib.kernel.yes;

    MOXA_INTELLIO = lib.kernel.no;
    MOXA_SMARTIO = lib.kernel.no;

    N_HDLC = lib.kernel.no;

    IPWIRELESS = lib.kernel.no;

    N_GSM = lib.kernel.no;

    NOZOMI = lib.kernel.no;

    NULL_TTY = lib.kernel.no;

    HVC_DRIVER = lib.kernel.yes;

    SERIAL_DEV_BUS = lib.kernel.no;

    TTY_PRINTK = lib.kernel.no;

    VIRTIO_CONSOLE = lib.kernel.yes;

    IPMI_HANDLER = lib.kernel.no;

    HW_RANDOM = lib.kernel.yes;
    HW_RANDOM_TIMERIOMEM = lib.kernel.no;
    HW_RANDOM_INTEL = lib.kernel.yes;
    HW_RANDOM_AMD = lib.kernel.yes;
    HW_RANDOM_BA431 = lib.kernel.no;
    HW_RANDOM_VIA = lib.kernel.yes;
    HW_RANDOM_VIRTIO = lib.kernel.no;
    HW_RANDOM_XIPHERA = lib.kernel.no;

    DEVMEM = lib.kernel.yes;

    NVRAM = lib.kernel.yes;

    DEVPORT = lib.kernel.yes;

    HPET = lib.kernel.yes;
    HPET_MMAP = lib.kernel.yes;
    HPET_MMAP_DEFAULT = lib.kernel.yes;

    HANGCHECK_TIMER = lib.kernel.no;

    TCG_TPM = lib.kernel.yes;
    TCG_TPM2_HMAC = lib.kernel.yes;

    HW_RANDOM_TPM = lib.kernel.yes;

    TCG_TIS_CORE = lib.kernel.yes;
    TCG_TIS = lib.kernel.yes;
    TCG_TIS_I2C = lib.kernel.yes;
    TCG_TIS_I2C_CR50 = lib.kernel.yes;
    TCG_TIS_I2C_ATMEL = lib.kernel.yes;
    TCG_TIS_I2C_INFINEON = lib.kernel.yes;
    TCG_TIS_I2C_NUVOTON = lib.kernel.yes;
    TCG_NSC = lib.kernel.yes;
    TCG_ATMEL = lib.kernel.yes;
    TCG_INFINEON = lib.kernel.yes;
    TCG_CRB = lib.kernel.yes;
    TCG_VTPM_PROXY = lib.kernel.yes;
    TCG_TIS_ST33ZP24 = lib.kernel.yes;
    TCG_TIS_ST33ZP24_I2C = lib.kernel.yes;

    TELCLOCK = lib.kernel.no;

    XILLYBUS = lib.kernel.no;

    XILLYUSB = lib.kernel.no;

    I2C = lib.kernel.yes;

    ACPI_I2C_OPREGION = lib.kernel.yes;

    I2C_BOARDINFO = lib.kernel.yes;
    I2C_CHARDEV = lib.kernel.no;
    I2C_MUX = lib.kernel.yes;
    I2C_MUX_GPIO = lib.kernel.no;
    I2C_MUX_LTC4306 = lib.kernel.no;
    I2C_MUX_PCA9541 = lib.kernel.no;
    I2C_MUX_PCA954x = lib.kernel.no;
    I2C_MUX_REG = lib.kernel.no;
    I2C_MUX_MLXCPLD = lib.kernel.no;
    I2C_HELPER_AUTO = lib.kernel.yes;
    I2C_SMBUS = lib.kernel.yes;
    I2C_ALGOBIT = lib.kernel.yes;
    I2C_ALI1535 = lib.kernel.no;
    I2C_ALI1563 = lib.kernel.no;
    I2C_ALI15X3 = lib.kernel.no;
    I2C_AMD756 = lib.kernel.no;
    I2C_AMD8111 = lib.kernel.no;
    I2C_AMD_MP2 = lib.kernel.no;
    I2C_I801 = lib.kernel.yes;
    I2C_ISCH = lib.kernel.no;
    I2C_ISMT = lib.kernel.no;
    I2C_PIIX4 = lib.kernel.no;
    I2C_NFORCE2 = lib.kernel.no;
    I2C_NVIDIA_GPU = lib.kernel.no;
    I2C_SIS5595 = lib.kernel.no;
    I2C_SIS630 = lib.kernel.no;
    I2C_SIS96X = lib.kernel.no;
    I2C_VIA = lib.kernel.no;
    I2C_VIAPRO = lib.kernel.no;
    I2C_ZHAOXIN = lib.kernel.no;
    I2C_SCMI = lib.kernel.no;
    I2C_CBUS_GPIO = lib.kernel.no;
    I2C_DESIGNWARE_CORE = lib.kernel.no;
    I2C_GPIO = lib.kernel.no;
    I2C_OCORES = lib.kernel.no;
    I2C_PCA_PLATFORM = lib.kernel.no;
    I2C_SIMTEC = lib.kernel.no;
    I2C_XILINX = lib.kernel.no;
    I2C_DIOLAN_U2C = lib.kernel.no;
    I2C_LJCA = lib.kernel.yes;
    I2C_USBIO = lib.kernel.yes;
    I2C_CP2615 = lib.kernel.no;
    I2C_PCI1XXXX = lib.kernel.no;
    I2C_ROBOTFUZZ_OSIF = lib.kernel.no;
    I2C_TAOS_EVM = lib.kernel.no;
    I2C_TINY_USB = lib.kernel.no;
    I2C_MLXCPLD = lib.kernel.no;
    I2C_VIRTIO = lib.kernel.no;
    I2C_STUB = lib.kernel.no;
    I2C_SLAVE = lib.kernel.no;
    I2C_DEBUG_CORE = lib.kernel.no;
    I2C_DEBUG_ALGO = lib.kernel.no;
    I2C_DEBUG_BUS = lib.kernel.no;

    I3C = lib.kernel.no;
    I3C_OR_I2C = lib.kernel.yes;

    SPI = lib.kernel.no;

    SPMI = lib.kernel.no;

    HSI = lib.kernel.no;

    PPS = lib.kernel.yes;
    PPS_DEBUG = lib.kernel.no;

    NTP_PPS = lib.kernel.no;

    PPS_CLIENT_KTIMER = lib.kernel.no;
    PPS_CLIENT_LDISC = lib.kernel.no;
    PPS_CLIENT_GPIO = lib.kernel.no;
    PPS_GENERATOR = lib.kernel.no;

    PTP_1588_CLOCK = lib.kernel.yes;
    PTP_1588_CLOCK_OPTIONAL = lib.kernel.yes;
    PTP_1588_CLOCK_KVM = lib.kernel.yes;
    PTP_1588_CLOCK_VMCLOCK = lib.kernel.yes;
    PTP_1588_CLOCK_IDT82P33 = lib.kernel.no;
    PTP_1588_CLOCK_IDTCM = lib.kernel.no;
    PTP_1588_CLOCK_FC3W = lib.kernel.no;
    PTP_1588_CLOCK_MOCK = lib.kernel.no;
    PTP_1588_CLOCK_VMW = lib.kernel.no;
    PTP_NETC_V4_TIMER = lib.kernel.no;

    ZL3073X_I2C = lib.kernel.no;

    PINCTRL = lib.kernel.no;

    GPIOLIB_LEGACY = lib.kernel.yes;
    GPIOLIB = lib.kernel.yes;
    GPIOLIB_FASTPATH_LIMIT = lib.kernel.freeform "512";

    GPIO_ACPI = lib.kernel.yes;

    GPIOLIB_IRQCHIP = lib.kernel.yes;

    DEBUG_GPIO = lib.kernel.no;

    GPIO_SYSFS = lib.kernel.no;
    GPIO_CDEV = lib.kernel.yes;
    GPIO_CDEV_V1 = lib.kernel.no;
    GPIO_ALTERA = lib.kernel.no;
    GPIO_AMDPT = lib.kernel.no;
    GPIO_BY_PINCTRL = lib.kernel.no;
    GPIO_DWAPB = lib.kernel.no;
    GPIO_EXAR = lib.kernel.no;
    GPIO_GENERIC_PLATFORM = lib.kernel.no;
    GPIO_GRANITERAPIDS = lib.kernel.no;
    GPIO_MB86S7X = lib.kernel.no;
    GPIO_POLARFIRE_SOC = lib.kernel.no;
    GPIO_WAVESHARE_DSI_TOUCH = lib.kernel.no;
    GPIO_XILINX = lib.kernel.no;
    GPIO_AMD_FCH = lib.kernel.yes;
    GPIO_VX855 = lib.kernel.no;
    GPIO_F7188X = lib.kernel.no;
    GPIO_IT87 = lib.kernel.no;
    GPIO_SCH = lib.kernel.no;
    GPIO_NOVALAKE = lib.kernel.no;
    GPIO_SCH311X = lib.kernel.no;
    GPIO_WINBOND = lib.kernel.no;
    GPIO_WS16C48 = lib.kernel.no;
    GPIO_FXL6408 = lib.kernel.no;
    GPIO_DS4520 = lib.kernel.no;
    GPIO_MAX7300 = lib.kernel.no;
    GPIO_MAX732X = lib.kernel.no;
    GPIO_PCA953X = lib.kernel.no;
    GPIO_PCA9570 = lib.kernel.no;
    GPIO_PCF857X = lib.kernel.no;
    GPIO_TPIC2810 = lib.kernel.no;
    GPIO_ELKHARTLAKE = lib.kernel.no;
    GPIO_LJCA = lib.kernel.yes;
    GPIO_QIXIS_FPGA = lib.kernel.no;
    GPIO_AMD8111 = lib.kernel.no;
    GPIO_BT8XX = lib.kernel.no;
    GPIO_ML_IOH = lib.kernel.no;
    GPIO_PCI_IDIO_16 = lib.kernel.no;
    GPIO_PCIE_IDIO_24 = lib.kernel.no;
    GPIO_RDC321X = lib.kernel.no;
    GPIO_MPSSE = lib.kernel.no;
    GPIO_USBIO = lib.kernel.yes;
    GPIO_AGGREGATOR = lib.kernel.no;
    GPIO_LATCH = lib.kernel.no;
    GPIO_MOCKUP = lib.kernel.no;
    GPIO_VIRTIO = lib.kernel.no;
    GPIO_SIM = lib.kernel.no;
    GPIO_SLOPPY_LOGIC_ANALYZER = lib.kernel.no;
    GPIO_VIRTUSER = lib.kernel.no;

    W1 = lib.kernel.no;

    POWER_RESET = lib.kernel.no;
    POWER_SEQUENCING = lib.kernel.yes;
    POWER_SUPPLY = lib.kernel.yes;
    POWER_SUPPLY_DEBUG = lib.kernel.no;
    POWER_SUPPLY_HWMON = lib.kernel.yes;

    GENERIC_ADC_BATTERY = lib.kernel.no;

    IP5XXX_POWER = lib.kernel.no;

    TEST_POWER = lib.kernel.no;

    CHARGER_ADP5061 = lib.kernel.no;

    BATTERY_CHAGALL = lib.kernel.no;
    BATTERY_CW2015 = lib.kernel.no;
    BATTERY_DS2780 = lib.kernel.no;
    BATTERY_DS2781 = lib.kernel.no;
    BATTERY_DS2782 = lib.kernel.no;
    BATTERY_SAMSUNG_SDI = lib.kernel.no;
    BATTERY_S2MU005 = lib.kernel.no;
    BATTERY_SBS = lib.kernel.no;

    CHARGER_SBS = lib.kernel.no;

    MANAGER_SBS = lib.kernel.no;

    BATTERY_BQ27XXX = lib.kernel.no;
    BATTERY_MAX17040 = lib.kernel.no;
    BATTERY_MAX17042 = lib.kernel.no;
    BATTERY_MAX1720X = lib.kernel.no;

    CHARGER_ISP1704 = lib.kernel.no;
    CHARGER_MAX8903 = lib.kernel.no;
    CHARGER_LP8727 = lib.kernel.no;
    CHARGER_GPIO = lib.kernel.no;
    CHARGER_MANAGER = lib.kernel.no;
    CHARGER_LT3651 = lib.kernel.no;
    CHARGER_LTC4162L = lib.kernel.no;
    CHARGER_MAX77976 = lib.kernel.no;
    CHARGER_MAX8971 = lib.kernel.no;
    CHARGER_BQ2415X = lib.kernel.no;
    CHARGER_BQ24190 = lib.kernel.no;
    CHARGER_BQ24257 = lib.kernel.no;
    CHARGER_BQ24735 = lib.kernel.no;
    CHARGER_BQ2515X = lib.kernel.no;
    CHARGER_BQ25890 = lib.kernel.no;
    CHARGER_BQ25980 = lib.kernel.no;
    CHARGER_BQ256XX = lib.kernel.no;
    CHARGER_SMB347 = lib.kernel.no;

    BATTERY_GAUGE_LTC2941 = lib.kernel.no;
    BATTERY_GOLDFISH = lib.kernel.no;
    BATTERY_RT5033 = lib.kernel.no;

    CHARGER_RT9455 = lib.kernel.no;
    CHARGER_RT9467 = lib.kernel.no;
    CHARGER_RT9471 = lib.kernel.no;
    CHARGER_RT9756 = lib.kernel.no;
    CHARGER_BD99954 = lib.kernel.no;

    BATTERY_UG3105 = lib.kernel.no;
    BATTERY_CHARGER_SURFACE_RT = lib.kernel.no;

    FUEL_GAUGE_MM8013 = lib.kernel.no;

    HWMON = lib.kernel.yes;
    HWMON_DEBUG_CHIP = lib.kernel.no;

    SENSORS_ABITUGURU = lib.kernel.no;
    SENSORS_ABITUGURU3 = lib.kernel.no;
    SENSORS_AD7414 = lib.kernel.no;
    SENSORS_AD7418 = lib.kernel.no;
    SENSORS_ADM1025 = lib.kernel.no;
    SENSORS_ADM1026 = lib.kernel.no;
    SENSORS_ADM1029 = lib.kernel.no;
    SENSORS_ADM1031 = lib.kernel.no;
    SENSORS_ADM1177 = lib.kernel.no;
    SENSORS_ADM9240 = lib.kernel.no;
    SENSORS_ADT7410 = lib.kernel.no;
    SENSORS_ADT7411 = lib.kernel.no;
    SENSORS_ADT7462 = lib.kernel.no;
    SENSORS_ADT7470 = lib.kernel.no;
    SENSORS_ADT7475 = lib.kernel.no;
    SENSORS_AHT10 = lib.kernel.no;
    SENSORS_AQUACOMPUTER_D5NEXT = lib.kernel.no;
    SENSORS_AS370 = lib.kernel.no;
    SENSORS_ASC7621 = lib.kernel.no;
    SENSORS_ASUS_ROG_RYUJIN = lib.kernel.no;
    SENSORS_AXI_FAN_CONTROL = lib.kernel.no;
    SENSORS_K8TEMP = lib.kernel.no;
    SENSORS_K10TEMP = lib.kernel.no;
    SENSORS_FAM15H_POWER = lib.kernel.no;
    SENSORS_APPLESMC = lib.kernel.no;
    SENSORS_ARCTIC_FAN_CONTROLLER = lib.kernel.no;
    SENSORS_ASB100 = lib.kernel.no;
    SENSORS_ATXP1 = lib.kernel.no;
    SENSORS_CHIPCAP2 = lib.kernel.no;
    SENSORS_CORSAIR_CPRO = lib.kernel.no;
    SENSORS_CORSAIR_PSU = lib.kernel.no;
    SENSORS_DRIVETEMP = lib.kernel.no;
    SENSORS_DS620 = lib.kernel.no;
    SENSORS_DS1621 = lib.kernel.no;
    SENSORS_DELL_SMM = lib.kernel.no;
    SENSORS_I5K_AMB = lib.kernel.no;
    SENSORS_F71805F = lib.kernel.no;
    SENSORS_F71882FG = lib.kernel.no;
    SENSORS_F75375S = lib.kernel.no;
    SENSORS_FSCHMD = lib.kernel.no;
    SENSORS_FTSTEUTATES = lib.kernel.no;
    SENSORS_GIGABYTE_WATERFORCE = lib.kernel.no;
    SENSORS_GL518SM = lib.kernel.no;
    SENSORS_GL520SM = lib.kernel.no;
    SENSORS_GPD = lib.kernel.no;
    SENSORS_G760A = lib.kernel.no;
    SENSORS_G762 = lib.kernel.no;
    SENSORS_GPIO_FAN = lib.kernel.no;
    SENSORS_HIH6130 = lib.kernel.no;
    SENSORS_HS3001 = lib.kernel.no;
    SENSORS_HTU31 = lib.kernel.no;
    SENSORS_IIO_HWMON = lib.kernel.no;
    SENSORS_I5500 = lib.kernel.no;
    SENSORS_CORETEMP = lib.kernel.no;
    SENSORS_ISL28022 = lib.kernel.no;
    SENSORS_IT87 = lib.kernel.no;
    SENSORS_JC42 = lib.kernel.no;
    SENSORS_POWERZ = lib.kernel.no;
    SENSORS_POWR1220 = lib.kernel.no;
    SENSORS_PROM21_XHCI = lib.kernel.no;
    SENSORS_LATTEPANDA_SIGMA_EC = lib.kernel.no;
    SENSORS_LENOVO_EC = lib.kernel.no;
    SENSORS_LINEAGE = lib.kernel.no;
    SENSORS_LTC2945 = lib.kernel.no;
    SENSORS_LTC2947_I2C = lib.kernel.no;
    SENSORS_LTC2990 = lib.kernel.no;
    SENSORS_LTC2991 = lib.kernel.no;
    SENSORS_LTC2992 = lib.kernel.no;
    SENSORS_LTC4151 = lib.kernel.no;
    SENSORS_LTC4215 = lib.kernel.no;
    SENSORS_LTC4222 = lib.kernel.no;
    SENSORS_LTC4245 = lib.kernel.no;
    SENSORS_LTC4260 = lib.kernel.no;
    SENSORS_LTC4261 = lib.kernel.no;
    SENSORS_LTC4282 = lib.kernel.no;
    SENSORS_LTC4283 = lib.kernel.no;
    SENSORS_MAX127 = lib.kernel.no;
    SENSORS_MAX16065 = lib.kernel.no;
    SENSORS_MAX1619 = lib.kernel.no;
    SENSORS_MAX1668 = lib.kernel.no;
    SENSORS_MAX197 = lib.kernel.no;
    SENSORS_MAX31730 = lib.kernel.no;
    SENSORS_MAX31760 = lib.kernel.no;

    MAX31827 = lib.kernel.no;

    SENSORS_MAX6620 = lib.kernel.no;
    SENSORS_MAX6621 = lib.kernel.no;
    SENSORS_MAX6639 = lib.kernel.no;
    SENSORS_MAX6650 = lib.kernel.no;
    SENSORS_MAX6697 = lib.kernel.no;
    SENSORS_MAX31790 = lib.kernel.no;
    SENSORS_MC34VR500 = lib.kernel.no;
    SENSORS_MCP3021 = lib.kernel.no;
    SENSORS_MCP9982 = lib.kernel.no;
    SENSORS_TC654 = lib.kernel.no;
    SENSORS_TPS23861 = lib.kernel.no;
    SENSORS_MR75203 = lib.kernel.no;
    SENSORS_LM63 = lib.kernel.no;
    SENSORS_LM73 = lib.kernel.no;
    SENSORS_LM75 = lib.kernel.no;
    SENSORS_LM77 = lib.kernel.no;
    SENSORS_LM78 = lib.kernel.no;
    SENSORS_LM80 = lib.kernel.no;
    SENSORS_LM83 = lib.kernel.no;
    SENSORS_LM85 = lib.kernel.no;
    SENSORS_LM87 = lib.kernel.no;
    SENSORS_LM90 = lib.kernel.no;
    SENSORS_LM92 = lib.kernel.no;
    SENSORS_LM93 = lib.kernel.no;
    SENSORS_LM95234 = lib.kernel.no;
    SENSORS_LM95241 = lib.kernel.no;
    SENSORS_LM95245 = lib.kernel.no;
    SENSORS_PC87360 = lib.kernel.no;
    SENSORS_PC87427 = lib.kernel.no;
    SENSORS_NTC_THERMISTOR = lib.kernel.no;
    SENSORS_NCT6683 = lib.kernel.no;
    SENSORS_NCT6775 = lib.kernel.no;
    SENSORS_NCT6775_I2C = lib.kernel.no;
    SENSORS_NCT7363 = lib.kernel.no;
    SENSORS_NCT7802 = lib.kernel.no;
    SENSORS_NCT7904 = lib.kernel.no;
    SENSORS_NPCM7XX = lib.kernel.no;
    SENSORS_NZXT_KRAKEN2 = lib.kernel.no;
    SENSORS_NZXT_KRAKEN3 = lib.kernel.no;
    SENSORS_NZXT_SMART2 = lib.kernel.no;
    SENSORS_OCC_P8_I2C = lib.kernel.no;
    SENSORS_PCF8591 = lib.kernel.no;

    PMBUS = lib.kernel.no;

    SENSORS_PT5161L = lib.kernel.no;
    SENSORS_SBTSI = lib.kernel.no;
    SENSORS_SHT15 = lib.kernel.no;
    SENSORS_SHT21 = lib.kernel.no;
    SENSORS_SHT3x = lib.kernel.no;
    SENSORS_SHT4x = lib.kernel.no;
    SENSORS_SHTC1 = lib.kernel.no;
    SENSORS_SIS5595 = lib.kernel.no;
    SENSORS_DME1737 = lib.kernel.no;
    SENSORS_EMC1403 = lib.kernel.no;
    SENSORS_EMC1812 = lib.kernel.no;
    SENSORS_EMC2103 = lib.kernel.no;
    SENSORS_EMC2305 = lib.kernel.no;
    SENSORS_EMC6W201 = lib.kernel.no;
    SENSORS_SMSC47M1 = lib.kernel.no;
    SENSORS_SMSC47M192 = lib.kernel.no;
    SENSORS_SMSC47B397 = lib.kernel.no;
    SENSORS_SCH5627 = lib.kernel.no;
    SENSORS_SCH5636 = lib.kernel.no;
    SENSORS_STTS751 = lib.kernel.no;
    SENSORS_ADC128D818 = lib.kernel.no;
    SENSORS_ADS7828 = lib.kernel.no;
    SENSORS_AMC6821 = lib.kernel.no;
    SENSORS_INA209 = lib.kernel.no;
    SENSORS_INA2XX = lib.kernel.no;
    SENSORS_INA238 = lib.kernel.no;
    SENSORS_INA3221 = lib.kernel.no;
    SENSORS_SPD5118 = lib.kernel.no;
    SENSORS_TC74 = lib.kernel.no;
    SENSORS_THMC50 = lib.kernel.no;
    SENSORS_TMP102 = lib.kernel.no;
    SENSORS_TMP103 = lib.kernel.no;
    SENSORS_TMP108 = lib.kernel.no;
    SENSORS_TMP401 = lib.kernel.no;
    SENSORS_TMP421 = lib.kernel.no;
    SENSORS_TMP464 = lib.kernel.no;
    SENSORS_TMP513 = lib.kernel.no;
    SENSORS_TSC1641 = lib.kernel.no;
    SENSORS_VIA_CPUTEMP = lib.kernel.no;
    SENSORS_VIA686A = lib.kernel.no;
    SENSORS_VT1211 = lib.kernel.no;
    SENSORS_VT8231 = lib.kernel.no;
    SENSORS_W83773G = lib.kernel.no;
    SENSORS_W83781D = lib.kernel.no;
    SENSORS_W83791D = lib.kernel.no;
    SENSORS_W83792D = lib.kernel.no;
    SENSORS_W83793 = lib.kernel.no;
    SENSORS_W83795 = lib.kernel.no;
    SENSORS_W83L785TS = lib.kernel.no;
    SENSORS_W83L786NG = lib.kernel.no;
    SENSORS_W83627HF = lib.kernel.no;
    SENSORS_W83627EHF = lib.kernel.no;
    SENSORS_XGENE = lib.kernel.no;
    SENSORS_YOGAFAN = lib.kernel.no;
    SENSORS_ACPI_POWER = lib.kernel.no;
    SENSORS_ATK0110 = lib.kernel.no;
    SENSORS_ASUS_WMI = lib.kernel.no;
    SENSORS_ASUS_EC = lib.kernel.no;
    SENSORS_HP_WMI = lib.kernel.no;

    THERMAL = lib.kernel.yes;
    THERMAL_NETLINK = lib.kernel.yes;
    THERMAL_STATISTICS = lib.kernel.yes;
    THERMAL_DEBUGFS = lib.kernel.no;
    THERMAL_CORE_TESTING = lib.kernel.no;
    THERMAL_EMERGENCY_POWEROFF_DELAY_MS = lib.kernel.freeform "0";
    THERMAL_HWMON = lib.kernel.yes;
    THERMAL_DEFAULT_GOV_STEP_WISE = lib.kernel.yes;
    THERMAL_DEFAULT_GOV_FAIR_SHARE = lib.kernel.no;
    THERMAL_DEFAULT_GOV_USER_SPACE = lib.kernel.no;
    THERMAL_DEFAULT_GOV_BANG_BANG = lib.kernel.no;
    THERMAL_GOV_FAIR_SHARE = lib.kernel.no;
    THERMAL_GOV_STEP_WISE = lib.kernel.yes;
    THERMAL_GOV_BANG_BANG = lib.kernel.yes;
    THERMAL_GOV_USER_SPACE = lib.kernel.no;
    THERMAL_GOV_POWER_ALLOCATOR = lib.kernel.no;

    DEVFREQ_THERMAL = lib.kernel.no;

    PCIE_THERMAL = lib.kernel.no;

    THERMAL_EMULATION = lib.kernel.no;

    INTEL_POWERCLAMP = lib.kernel.no;

    X86_THERMAL_VECTOR = lib.kernel.yes;

    INTEL_TCC = lib.kernel.yes;

    X86_PKG_TEMP_THERMAL = lib.kernel.module;

    INTEL_SOC_DTS_THERMAL = lib.kernel.no;

    INT340X_THERMAL = lib.kernel.no;

    INTEL_PCH_THERMAL = lib.kernel.no;
    INTEL_TCC_COOLING = lib.kernel.no;
    INTEL_HFI_THERMAL = lib.kernel.no;

    GENERIC_ADC_THERMAL = lib.kernel.no;

    WATCHDOG = lib.kernel.yes;
    WATCHDOG_CORE = lib.kernel.yes;
    WATCHDOG_NOWAYOUT = lib.kernel.no;
    WATCHDOG_HANDLE_BOOT_ENABLED = lib.kernel.yes;
    WATCHDOG_OPEN_TIMEOUT = lib.kernel.freeform "0";
    WATCHDOG_SYSFS = lib.kernel.no;
    WATCHDOG_HRTIMER_PRETIMEOUT = lib.kernel.yes;
    WATCHDOG_PRETIMEOUT_GOV = lib.kernel.yes;
    WATCHDOG_PRETIMEOUT_GOV_SEL = lib.kernel.module;
    WATCHDOG_PRETIMEOUT_GOV_NOOP = lib.kernel.yes;
    WATCHDOG_PRETIMEOUT_GOV_PANIC = lib.kernel.yes;
    WATCHDOG_PRETIMEOUT_DEFAULT_GOV_NOOP = lib.kernel.no;
    WATCHDOG_PRETIMEOUT_DEFAULT_GOV_PANIC = lib.kernel.yes;

    SOFT_WATCHDOG = lib.kernel.yes;
    SOFT_WATCHDOG_PRETIMEOUT = lib.kernel.no;

    GPIO_WATCHDOG = lib.kernel.yes;
    GPIO_WATCHDOG_ARCH_INITCALL = lib.kernel.yes;

    LENOVO_SE10_WDT = lib.kernel.yes;
    LENOVO_SE30_WDT = lib.kernel.yes;

    WDAT_WDT = lib.kernel.yes;

    XILINX_WATCHDOG = lib.kernel.yes;

    ZIIRAVE_WATCHDOG = lib.kernel.yes;

    CADENCE_WATCHDOG = lib.kernel.yes;

    DW_WATCHDOG = lib.kernel.yes;

    MAX63XX_WATCHDOG = lib.kernel.yes;

    ACQUIRE_WDT = lib.kernel.yes;

    ADVANTECH_WDT = lib.kernel.yes;
    ADVANTECH_EC_WDT = lib.kernel.yes;

    ALIM1535_WDT = lib.kernel.yes;

    ALIM7101_WDT = lib.kernel.yes;

    EBC_C384_WDT = lib.kernel.yes;

    EXAR_WDT = lib.kernel.yes;

    F71808E_WDT = lib.kernel.yes;

    SP5100_TCO = lib.kernel.yes;

    SBC_FITPC2_WATCHDOG = lib.kernel.yes;

    EUROTECH_WDT = lib.kernel.yes;

    IB700_WDT = lib.kernel.yes;

    IBMASR = lib.kernel.yes;

    WAFER_WDT = lib.kernel.yes;

    I6300ESB_WDT = lib.kernel.yes;

    IE6XX_WDT = lib.kernel.yes;

    INTEL_OC_WATCHDOG = lib.kernel.yes;

    ITCO_WDT = lib.kernel.yes;

    IT8712F_WDT = lib.kernel.yes;

    IT87_WDT = lib.kernel.yes;

    HP_WATCHDOG = lib.kernel.yes;

    HPWDT_NMI_DECODING = lib.kernel.yes;

    SC1200_WDT = lib.kernel.yes;

    PC87413_WDT = lib.kernel.yes;

    NV_TCO = lib.kernel.yes;

    "60XX_WDT" = lib.kernel.yes;

    SMSC_SCH311X_WDT = lib.kernel.yes;

    SMSC37B787_WDT = lib.kernel.yes;

    TQMX86_WDT = lib.kernel.yes;

    VIA_WDT = lib.kernel.yes;

    W83627HF_WDT = lib.kernel.yes;

    W83877F_WDT = lib.kernel.yes;

    W83977F_WDT = lib.kernel.yes;

    SBC_EPX_C3_WATCHDOG = lib.kernel.yes;

    INTEL_MEI_WDT = lib.kernel.yes;

    NI903X_WDT = lib.kernel.yes;

    NIC7018_WDT = lib.kernel.yes;

    SIEMENS_SIMATIC_IPC_WDT = lib.kernel.yes;

    MEN_A21_WDT = lib.kernel.yes;

    PCIPCWATCHDOG = lib.kernel.yes;

    WDTPCI = lib.kernel.yes;

    USBPCWATCHDOG = lib.kernel.yes;

    SSB_POSSIBLE = lib.kernel.yes;
    SSB = lib.kernel.no;

    BCMA_POSSIBLE = lib.kernel.yes;
    BCMA = lib.kernel.no;

    MFD_CORE = lib.kernel.yes;
    MFD_AS3711 = lib.kernel.no;
    MFD_SMPRO = lib.kernel.no;

    PMIC_ADP5520 = lib.kernel.no;

    MFD_AAT2870_CORE = lib.kernel.no;
    MFD_BCM590XX = lib.kernel.no;
    MFD_BD9571MWV = lib.kernel.no;
    MFD_AXP20X_I2C = lib.kernel.no;
    MFD_CGBC = lib.kernel.no;
    MFD_CS40L50_I2C = lib.kernel.no;
    MFD_CS42L43_I2C = lib.kernel.no;
    MFD_MADERA = lib.kernel.no;

    PMIC_DA903X = lib.kernel.no;

    MFD_DA9052_I2C = lib.kernel.no;
    MFD_DA9055 = lib.kernel.no;
    MFD_DA9062 = lib.kernel.no;
    MFD_DA9063 = lib.kernel.no;
    MFD_DA9150 = lib.kernel.no;
    MFD_DLN2 = lib.kernel.no;
    MFD_MC13XXX_I2C = lib.kernel.no;
    MFD_MP2629 = lib.kernel.no;

    LPC_ICH = lib.kernel.no;
    LPC_SCH = lib.kernel.yes;

    INTEL_SOC_PMIC_MRFLD = lib.kernel.no;

    MFD_INTEL_LPSS_ACPI = lib.kernel.no;
    MFD_INTEL_LPSS_PCI = lib.kernel.no;
    MFD_INTEL_PMC_BXT = lib.kernel.no;
    MFD_IQS62X = lib.kernel.no;
    MFD_JANZ_CMODIO = lib.kernel.no;
    MFD_KEMPLD = lib.kernel.no;
    MFD_88PM800 = lib.kernel.no;
    MFD_88PM805 = lib.kernel.no;
    MFD_88PM860X = lib.kernel.no;
    MFD_MAX5970 = lib.kernel.no;
    MFD_MAX14577 = lib.kernel.no;
    MFD_MAX77541 = lib.kernel.no;
    MFD_MAX77693 = lib.kernel.no;
    MFD_MAX77705 = lib.kernel.no;
    MFD_MAX77843 = lib.kernel.no;
    MFD_MAX8907 = lib.kernel.no;
    MFD_MAX8925 = lib.kernel.no;
    MFD_MAX8997 = lib.kernel.no;
    MFD_MAX8998 = lib.kernel.no;
    MFD_MT6360 = lib.kernel.no;
    MFD_MT6370 = lib.kernel.no;
    MFD_MT6397 = lib.kernel.no;
    MFD_MENF21BMC = lib.kernel.no;
    MFD_NCT6694 = lib.kernel.no;
    MFD_VIPERBOARD = lib.kernel.no;
    MFD_RETU = lib.kernel.no;
    MFD_SY7636A = lib.kernel.no;
    MFD_RDC321X = lib.kernel.no;
    MFD_RT4831 = lib.kernel.no;
    MFD_RT5033 = lib.kernel.no;
    MFD_RT5120 = lib.kernel.no;
    MFD_RC5T583 = lib.kernel.no;
    MFD_SI476X_CORE = lib.kernel.no;
    MFD_SIMPLE_MFD_I2C = lib.kernel.yes;
    MFD_SM501 = lib.kernel.no;
    MFD_SKY81452 = lib.kernel.no;
    MFD_SYSCON = lib.kernel.no;
    MFD_LP3943 = lib.kernel.no;
    MFD_LP8788 = lib.kernel.no;
    MFD_TI_LMU = lib.kernel.no;
    MFD_BQ257XX = lib.kernel.no;
    MFD_PALMAS = lib.kernel.no;

    TPS6105X = lib.kernel.no;

    TPS65010 = lib.kernel.no;

    TPS6507X = lib.kernel.no;

    MFD_TPS65086 = lib.kernel.no;
    MFD_TPS65090 = lib.kernel.no;
    MFD_TI_LP873X = lib.kernel.no;
    MFD_TPS6586X = lib.kernel.no;
    MFD_TPS65910 = lib.kernel.no;
    MFD_TPS65912_I2C = lib.kernel.no;
    MFD_TPS6594_I2C = lib.kernel.no;

    TWL4030_CORE = lib.kernel.no;

    TWL6040_CORE = lib.kernel.no;

    MFD_LM3533 = lib.kernel.no;
    MFD_TQMX86 = lib.kernel.no;
    MFD_VX855 = lib.kernel.no;
    MFD_ARIZONA_I2C = lib.kernel.no;
    MFD_WM8400 = lib.kernel.no;
    MFD_WM831X_I2C = lib.kernel.no;
    MFD_WM8350_I2C = lib.kernel.no;
    MFD_WM8994 = lib.kernel.no;
    MFD_ATC260X_I2C = lib.kernel.no;
    MFD_UPBOARD_FPGA = lib.kernel.no;
    MFD_MAX7360 = lib.kernel.no;

    REGULATOR = lib.kernel.yes;
    REGULATOR_DEBUG = lib.kernel.no;
    REGULATOR_FIXED_VOLTAGE = lib.kernel.no;
    REGULATOR_VIRTUAL_CONSUMER = lib.kernel.no;
    REGULATOR_USERSPACE_CONSUMER = lib.kernel.no;
    REGULATOR_NETLINK_EVENTS = lib.kernel.no;
    REGULATOR_88PG86X = lib.kernel.no;
    REGULATOR_ACT8865 = lib.kernel.no;
    REGULATOR_AD5398 = lib.kernel.no;
    REGULATOR_ADP5055 = lib.kernel.no;
    REGULATOR_AW37503 = lib.kernel.no;
    REGULATOR_DA9210 = lib.kernel.no;
    REGULATOR_DA9211 = lib.kernel.no;
    REGULATOR_FAN53555 = lib.kernel.no;
    REGULATOR_GPIO = lib.kernel.no;
    REGULATOR_ISL9305 = lib.kernel.no;
    REGULATOR_ISL6271A = lib.kernel.no;
    REGULATOR_FP9931 = lib.kernel.no;
    REGULATOR_LP3971 = lib.kernel.no;
    REGULATOR_LP3972 = lib.kernel.no;
    REGULATOR_LP872X = lib.kernel.no;
    REGULATOR_LP8755 = lib.kernel.no;
    REGULATOR_LTC3589 = lib.kernel.no;
    REGULATOR_LTC3676 = lib.kernel.no;
    REGULATOR_MAX1586 = lib.kernel.no;
    REGULATOR_MAX77503 = lib.kernel.no;
    REGULATOR_MAX77857 = lib.kernel.no;
    REGULATOR_MAX8649 = lib.kernel.no;
    REGULATOR_MAX8660 = lib.kernel.no;
    REGULATOR_MAX8893 = lib.kernel.no;
    REGULATOR_MAX8952 = lib.kernel.no;
    REGULATOR_MAX20086 = lib.kernel.no;
    REGULATOR_MAX20411 = lib.kernel.no;
    REGULATOR_MAX77826 = lib.kernel.no;
    REGULATOR_MAX77838 = lib.kernel.no;
    REGULATOR_MP8859 = lib.kernel.no;
    REGULATOR_MT6311 = lib.kernel.no;
    REGULATOR_PCA9450 = lib.kernel.no;
    REGULATOR_PF9453 = lib.kernel.no;
    REGULATOR_PF0900 = lib.kernel.no;
    REGULATOR_PV88060 = lib.kernel.no;
    REGULATOR_PV88080 = lib.kernel.no;
    REGULATOR_PV88090 = lib.kernel.no;
    REGULATOR_RT4801 = lib.kernel.no;
    REGULATOR_RT4803 = lib.kernel.no;
    REGULATOR_RT5190A = lib.kernel.no;
    REGULATOR_RT5739 = lib.kernel.no;
    REGULATOR_RT5759 = lib.kernel.no;
    REGULATOR_RT6160 = lib.kernel.no;
    REGULATOR_RT6190 = lib.kernel.no;
    REGULATOR_RT6245 = lib.kernel.no;
    REGULATOR_RT8092 = lib.kernel.no;
    REGULATOR_RTQ2134 = lib.kernel.no;
    REGULATOR_RTMV20 = lib.kernel.no;
    REGULATOR_RTQ6752 = lib.kernel.no;
    REGULATOR_RTQ2208 = lib.kernel.no;
    REGULATOR_SLG51000 = lib.kernel.no;
    REGULATOR_TPS51632 = lib.kernel.no;
    REGULATOR_TPS62360 = lib.kernel.no;
    REGULATOR_TPS65023 = lib.kernel.no;
    REGULATOR_TPS6507X = lib.kernel.no;
    REGULATOR_TPS65132 = lib.kernel.no;
    REGULATOR_TPS65185 = lib.kernel.no;

    RC_CORE = lib.kernel.yes;

    LIRC = lib.kernel.no;

    RC_MAP = lib.kernel.yes;
    RC_DECODERS = lib.kernel.no;
    RC_DEVICES = lib.kernel.no;

    CEC_CORE = lib.kernel.yes;
    CEC_NOTIFIER = lib.kernel.yes;

    MEDIA_CEC_RC = lib.kernel.no;
    MEDIA_CEC_SUPPORT = lib.kernel.yes;

    CEC_CH7322 = lib.kernel.no;
    CEC_NXP_TDA9950 = lib.kernel.yes;
    CEC_GPIO = lib.kernel.no;
    CEC_SECO = lib.kernel.no;

    USB_EXTRON_DA_HD_4K_PLUS_CEC = lib.kernel.no;
    USB_PULSE8_CEC = lib.kernel.no;
    USB_RAINSHADOW_CEC = lib.kernel.no;

    MEDIA_SUPPORT = lib.kernel.yes;
    MEDIA_SUPPORT_FILTER = lib.kernel.no;
    MEDIA_SUBDRV_AUTOSELECT = lib.kernel.yes;
    MEDIA_CAMERA_SUPPORT = lib.kernel.yes;
    MEDIA_ANALOG_TV_SUPPORT = lib.kernel.yes;
    MEDIA_DIGITAL_TV_SUPPORT = lib.kernel.yes;
    MEDIA_RADIO_SUPPORT = lib.kernel.yes;
    MEDIA_SDR_SUPPORT = lib.kernel.yes;
    MEDIA_PLATFORM_SUPPORT = lib.kernel.yes;
    MEDIA_TEST_SUPPORT = lib.kernel.yes;

    VIDEO_DEV = lib.kernel.yes;

    MEDIA_CONTROLLER = lib.kernel.yes;

    DVB_CORE = lib.kernel.yes;

    VIDEO_V4L2_I2C = lib.kernel.yes;
    VIDEO_V4L2_SUBDEV_API = lib.kernel.yes;
    VIDEO_ADV_DEBUG = lib.kernel.no;
    VIDEO_FIXED_MINOR_RANGES = lib.kernel.no;

    V4L2_FLASH_LED_CLASS = lib.kernel.no;
    V4L2_FWNODE = lib.kernel.yes;
    V4L2_ASYNC = lib.kernel.yes;

    MEDIA_CONTROLLER_DVB = lib.kernel.no;

    DVB_MMAP = lib.kernel.no;
    DVB_NET = lib.kernel.yes;
    DVB_MAX_ADAPTERS = lib.kernel.freeform "16";
    DVB_DYNAMIC_MINORS = lib.kernel.yes;
    DVB_DEMUX_SECTION_LOSS_LOG = lib.kernel.no;
    DVB_ULE_DEBUG = lib.kernel.no;

    MEDIA_USB_SUPPORT = lib.kernel.no;
    MEDIA_PCI_SUPPORT = lib.kernel.no;

    RADIO_ADAPTERS = lib.kernel.yes;
    RADIO_MAXIRADIO = lib.kernel.no;
    RADIO_SAA7706H = lib.kernel.no;
    RADIO_SHARK = lib.kernel.no;
    RADIO_SHARK2 = lib.kernel.no;
    RADIO_SI4713 = lib.kernel.no;
    RADIO_TEA5764 = lib.kernel.no;
    RADIO_TEF6862 = lib.kernel.no;

    USB_DSBR = lib.kernel.no;
    USB_KEENE = lib.kernel.no;
    USB_MA901 = lib.kernel.no;
    USB_MR800 = lib.kernel.no;
    USB_RAREMONO = lib.kernel.no;

    RADIO_SI470X = lib.kernel.no;

    MEDIA_PLATFORM_DRIVERS = lib.kernel.yes;

    V4L_PLATFORM_DRIVERS = lib.kernel.no;

    SDR_PLATFORM_DRIVERS = lib.kernel.no;

    DVB_PLATFORM_DRIVERS = lib.kernel.no;

    V4L_MEM2MEM_DRIVERS = lib.kernel.no;

    VIDEO_AMD_ISP4_CAPTURE = lib.kernel.no;
    VIDEO_CADENCE_CSI2RX = lib.kernel.no;
    VIDEO_CADENCE_CSI2TX = lib.kernel.no;
    VIDEO_RP1_CFE = lib.kernel.no;

    SMS_SDIO_DRV = lib.kernel.no;

    V4L_TEST_DRIVERS = lib.kernel.no;

    DVB_TEST_DRIVERS = lib.kernel.no;

    MEDIA_ATTACH = lib.kernel.yes;

    VIDEO_IR_I2C = lib.kernel.yes;
    VIDEO_THP7312 = lib.kernel.no;
    VIDEO_CAMERA_LENS = lib.kernel.yes;
    VIDEO_AD5820 = lib.kernel.no;
    VIDEO_AK7375 = lib.kernel.no;
    VIDEO_DW9714 = lib.kernel.no;
    VIDEO_DW9719 = lib.kernel.no;
    VIDEO_DW9768 = lib.kernel.no;
    VIDEO_DW9807_VCM = lib.kernel.no;
    VIDEO_ADP1653 = lib.kernel.no;
    VIDEO_LM3560 = lib.kernel.no;
    VIDEO_LM3646 = lib.kernel.no;
    VIDEO_CS3308 = lib.kernel.no;
    VIDEO_CS5345 = lib.kernel.no;
    VIDEO_CS53L32A = lib.kernel.no;
    VIDEO_MSP3400 = lib.kernel.no;
    VIDEO_SONY_BTF_MPX = lib.kernel.no;
    VIDEO_TDA7432 = lib.kernel.no;
    VIDEO_TDA9840 = lib.kernel.no;
    VIDEO_TEA6415C = lib.kernel.no;
    VIDEO_TEA6420 = lib.kernel.no;
    VIDEO_TLV320AIC23B = lib.kernel.no;
    VIDEO_TVAUDIO = lib.kernel.no;
    VIDEO_UDA1342 = lib.kernel.no;
    VIDEO_VP27SMPX = lib.kernel.no;
    VIDEO_WM8739 = lib.kernel.no;
    VIDEO_WM8775 = lib.kernel.no;
    VIDEO_SAA6588 = lib.kernel.no;
    VIDEO_ADV7180 = lib.kernel.no;
    VIDEO_ADV7183 = lib.kernel.no;
    VIDEO_ADV7604 = lib.kernel.no;
    VIDEO_ADV7842 = lib.kernel.no;
    VIDEO_BT819 = lib.kernel.no;
    VIDEO_BT856 = lib.kernel.no;
    VIDEO_BT866 = lib.kernel.no;
    VIDEO_ISL7998X = lib.kernel.no;
    VIDEO_LT6911UXE = lib.kernel.no;
    VIDEO_KS0127 = lib.kernel.no;
    VIDEO_MAX9286 = lib.kernel.no;
    VIDEO_ML86V7667 = lib.kernel.no;
    VIDEO_SAA7110 = lib.kernel.no;
    VIDEO_SAA711X = lib.kernel.no;
    VIDEO_TC358743 = lib.kernel.no;
    VIDEO_TC358746 = lib.kernel.no;
    VIDEO_TVP514X = lib.kernel.no;
    VIDEO_TVP5150 = lib.kernel.no;
    VIDEO_TVP7002 = lib.kernel.no;
    VIDEO_TW2804 = lib.kernel.no;
    VIDEO_TW9900 = lib.kernel.no;
    VIDEO_TW9903 = lib.kernel.no;
    VIDEO_TW9906 = lib.kernel.no;
    VIDEO_TW9910 = lib.kernel.no;
    VIDEO_VPX3220 = lib.kernel.no;
    VIDEO_SAA717X = lib.kernel.no;
    VIDEO_CX25840 = lib.kernel.no;
    VIDEO_ADV7170 = lib.kernel.no;
    VIDEO_ADV7175 = lib.kernel.no;
    VIDEO_ADV7343 = lib.kernel.no;
    VIDEO_ADV7393 = lib.kernel.no;
    VIDEO_ADV7511 = lib.kernel.no;
    VIDEO_AK881X = lib.kernel.no;
    VIDEO_SAA7127 = lib.kernel.no;
    VIDEO_SAA7185 = lib.kernel.no;
    VIDEO_THS8200 = lib.kernel.no;
    VIDEO_UPD64031A = lib.kernel.no;
    VIDEO_UPD64083 = lib.kernel.no;
    VIDEO_SAA6752HS = lib.kernel.no;

    SDR_MAX2175 = lib.kernel.no;

    VIDEO_INTEL_CVS = lib.kernel.no;
    VIDEO_I2C = lib.kernel.no;
    VIDEO_M52790 = lib.kernel.no;
    VIDEO_ST_MIPID02 = lib.kernel.no;
    VIDEO_THS7303 = lib.kernel.no;

    MEDIA_TUNER = lib.kernel.yes;
    MEDIA_TUNER_E4000 = lib.kernel.no;
    MEDIA_TUNER_FC0011 = lib.kernel.no;
    MEDIA_TUNER_FC0012 = lib.kernel.no;
    MEDIA_TUNER_FC0013 = lib.kernel.no;
    MEDIA_TUNER_FC2580 = lib.kernel.no;
    MEDIA_TUNER_IT913X = lib.kernel.no;
    MEDIA_TUNER_M88RS6000T = lib.kernel.no;
    MEDIA_TUNER_MAX2165 = lib.kernel.no;
    MEDIA_TUNER_MC44S803 = lib.kernel.yes;
    MEDIA_TUNER_MT2060 = lib.kernel.no;
    MEDIA_TUNER_MT2063 = lib.kernel.no;
    MEDIA_TUNER_MT20XX = lib.kernel.yes;
    MEDIA_TUNER_MT2131 = lib.kernel.no;
    MEDIA_TUNER_MT2266 = lib.kernel.no;
    MEDIA_TUNER_MXL301RF = lib.kernel.no;
    MEDIA_TUNER_MXL5005S = lib.kernel.no;
    MEDIA_TUNER_MXL5007T = lib.kernel.no;
    MEDIA_TUNER_QM1D1B0004 = lib.kernel.no;
    MEDIA_TUNER_QM1D1C0042 = lib.kernel.no;
    MEDIA_TUNER_QT1010 = lib.kernel.no;
    MEDIA_TUNER_R820T = lib.kernel.no;
    MEDIA_TUNER_SI2157 = lib.kernel.no;
    MEDIA_TUNER_SIMPLE = lib.kernel.yes;
    MEDIA_TUNER_TDA18212 = lib.kernel.no;
    MEDIA_TUNER_TDA18218 = lib.kernel.no;
    MEDIA_TUNER_TDA18250 = lib.kernel.no;
    MEDIA_TUNER_TDA18271 = lib.kernel.yes;
    MEDIA_TUNER_TDA827X = lib.kernel.yes;
    MEDIA_TUNER_TDA8290 = lib.kernel.yes;
    MEDIA_TUNER_TDA9887 = lib.kernel.yes;
    MEDIA_TUNER_TEA5761 = lib.kernel.yes;
    MEDIA_TUNER_TEA5767 = lib.kernel.yes;
    MEDIA_TUNER_TUA9001 = lib.kernel.no;
    MEDIA_TUNER_XC2028 = lib.kernel.yes;
    MEDIA_TUNER_XC4000 = lib.kernel.yes;
    MEDIA_TUNER_XC5000 = lib.kernel.yes;

    DVB_M88DS3103 = lib.kernel.no;
    DVB_MXL5XX = lib.kernel.no;
    DVB_STB0899 = lib.kernel.no;
    DVB_STB6100 = lib.kernel.no;
    DVB_STV090x = lib.kernel.no;
    DVB_STV0910 = lib.kernel.no;
    DVB_STV6110x = lib.kernel.no;
    DVB_STV6111 = lib.kernel.no;
    DVB_DRXK = lib.kernel.no;
    DVB_MN88472 = lib.kernel.no;
    DVB_MN88473 = lib.kernel.no;
    DVB_SI2165 = lib.kernel.no;
    DVB_TDA18271C2DD = lib.kernel.no;
    DVB_CX24110 = lib.kernel.no;
    DVB_CX24116 = lib.kernel.no;
    DVB_CX24117 = lib.kernel.no;
    DVB_CX24120 = lib.kernel.no;
    DVB_CX24123 = lib.kernel.no;
    DVB_DS3000 = lib.kernel.no;
    DVB_MB86A16 = lib.kernel.no;
    DVB_MT312 = lib.kernel.no;
    DVB_S5H1420 = lib.kernel.no;
    DVB_SI21XX = lib.kernel.no;
    DVB_STB6000 = lib.kernel.no;
    DVB_STV0288 = lib.kernel.no;
    DVB_STV0299 = lib.kernel.no;
    DVB_STV0900 = lib.kernel.no;
    DVB_STV6110 = lib.kernel.no;
    DVB_TDA10071 = lib.kernel.no;
    DVB_TDA10086 = lib.kernel.no;
    DVB_TDA8083 = lib.kernel.no;
    DVB_TDA8261 = lib.kernel.no;
    DVB_TDA826X = lib.kernel.no;
    DVB_TS2020 = lib.kernel.no;
    DVB_TUA6100 = lib.kernel.no;
    DVB_TUNER_CX24113 = lib.kernel.no;
    DVB_TUNER_ITD1000 = lib.kernel.no;
    DVB_VES1X93 = lib.kernel.no;
    DVB_ZL10036 = lib.kernel.no;
    DVB_ZL10039 = lib.kernel.no;
    DVB_AF9013 = lib.kernel.no;
    DVB_CX22700 = lib.kernel.no;
    DVB_CX22702 = lib.kernel.no;
    DVB_CXD2820R = lib.kernel.no;
    DVB_CXD2841ER = lib.kernel.no;
    DVB_DIB3000MB = lib.kernel.no;
    DVB_DIB3000MC = lib.kernel.no;
    DVB_DIB7000M = lib.kernel.no;
    DVB_DIB7000P = lib.kernel.no;
    DVB_DIB9000 = lib.kernel.no;
    DVB_DRXD = lib.kernel.no;
    DVB_EC100 = lib.kernel.no;
    DVB_L64781 = lib.kernel.no;
    DVB_MT352 = lib.kernel.no;
    DVB_NXT6000 = lib.kernel.no;
    DVB_RTL2830 = lib.kernel.no;
    DVB_RTL2832 = lib.kernel.no;
    DVB_RTL2832_SDR = lib.kernel.no;
    DVB_S5H1432 = lib.kernel.no;
    DVB_SI2168 = lib.kernel.no;
    DVB_SP887X = lib.kernel.no;
    DVB_STV0367 = lib.kernel.no;
    DVB_TDA10048 = lib.kernel.no;
    DVB_TDA1004X = lib.kernel.no;
    DVB_ZD1301_DEMOD = lib.kernel.no;
    DVB_ZL10353 = lib.kernel.no;
    DVB_STV0297 = lib.kernel.no;
    DVB_TDA10021 = lib.kernel.no;
    DVB_TDA10023 = lib.kernel.no;
    DVB_VES1820 = lib.kernel.no;
    DVB_AU8522_DTV = lib.kernel.no;
    DVB_AU8522_V4L = lib.kernel.no;
    DVB_BCM3510 = lib.kernel.no;
    DVB_LG2160 = lib.kernel.no;
    DVB_LGDT3305 = lib.kernel.no;
    DVB_LGDT3306A = lib.kernel.no;
    DVB_LGDT330X = lib.kernel.no;
    DVB_MXL692 = lib.kernel.no;
    DVB_NXT200X = lib.kernel.no;
    DVB_OR51132 = lib.kernel.no;
    DVB_OR51211 = lib.kernel.no;
    DVB_S5H1409 = lib.kernel.no;
    DVB_S5H1411 = lib.kernel.no;
    DVB_DIB8000 = lib.kernel.no;
    DVB_MB86A20S = lib.kernel.no;
    DVB_S921 = lib.kernel.no;
    DVB_MN88443X = lib.kernel.no;
    DVB_TC90522 = lib.kernel.no;
    DVB_PLL = lib.kernel.no;
    DVB_TUNER_DIB0070 = lib.kernel.no;
    DVB_TUNER_DIB0090 = lib.kernel.no;
    DVB_A8293 = lib.kernel.no;
    DVB_AF9033 = lib.kernel.no;
    DVB_ASCOT2E = lib.kernel.no;
    DVB_ATBM8830 = lib.kernel.no;
    DVB_HELENE = lib.kernel.no;
    DVB_HORUS3A = lib.kernel.no;
    DVB_ISL6405 = lib.kernel.no;
    DVB_ISL6421 = lib.kernel.no;
    DVB_ISL6423 = lib.kernel.no;
    DVB_IX2505V = lib.kernel.no;
    DVB_LGS8GL5 = lib.kernel.no;
    DVB_LGS8GXX = lib.kernel.no;
    DVB_LNBH25 = lib.kernel.no;
    DVB_LNBH29 = lib.kernel.no;
    DVB_LNBP21 = lib.kernel.no;
    DVB_LNBP22 = lib.kernel.no;
    DVB_M88RS2000 = lib.kernel.no;
    DVB_TDA665x = lib.kernel.no;
    DVB_DRX39XYJ = lib.kernel.no;
    DVB_CXD2099 = lib.kernel.no;
    DVB_SP2 = lib.kernel.no;
    DVB_DUMMY_FE = lib.kernel.no;

    APERTURE_HELPERS = lib.kernel.yes;

    SCREEN_INFO = lib.kernel.yes;

    VIDEO = lib.kernel.yes;

    AUXDISPLAY = lib.kernel.no;

    AGP = lib.kernel.yes;
    AGP_AMD64 = lib.kernel.yes;
    AGP_INTEL = lib.kernel.yes;
    AGP_SIS = lib.kernel.no;
    AGP_VIA = lib.kernel.no;

    INTEL_GTT = lib.kernel.yes;

    GPU_BUDDY = lib.kernel.yes;

    DRM = lib.kernel.yes;
    DRM_DEBUG_MM = lib.kernel.no;
    DRM_MIPI_DSI = lib.kernel.yes;
    DRM_KMS_HELPER = lib.kernel.yes;
    DRM_DRAW = lib.kernel.yes;
    DRM_PANIC = lib.kernel.yes;
    DRM_PANIC_FOREGROUND_COLOR = lib.kernel.freeform "0xffffff";
    DRM_PANIC_BACKGROUND_COLOR = lib.kernel.freeform "0x000000";
    DRM_PANIC_DEBUG = lib.kernel.no;
    DRM_PANIC_SCREEN = lib.kernel.freeform "user";
    DRM_RAS = lib.kernel.yes;
    DRM_DEBUG_DP_MST_TOPOLOGY_REFS = lib.kernel.no;
    DRM_DEBUG_MODESET_LOCK = lib.kernel.no;
    DRM_CLIENT = lib.kernel.yes;
    DRM_CLIENT_SELECTION = lib.kernel.yes;
    DRM_FBDEV_EMULATION = lib.kernel.no;
    DRM_CLIENT_LOG = lib.kernel.no;
    DRM_CLIENT_DEFAULT = lib.kernel.freeform "";
    DRM_LOAD_EDID_FIRMWARE = lib.kernel.yes;
    DRM_DISPLAY_HELPER = lib.kernel.yes;
    DRM_DISPLAY_DP_AUX_CEC = lib.kernel.yes;
    DRM_DISPLAY_DP_AUX_CHARDEV = lib.kernel.yes;
    DRM_DISPLAY_DP_HELPER = lib.kernel.yes;
    DRM_DISPLAY_DSC_HELPER = lib.kernel.yes;
    DRM_DISPLAY_HDCP_HELPER = lib.kernel.yes;
    DRM_DISPLAY_HDMI_CEC_NOTIFIER_HELPER = lib.kernel.yes;
    DRM_DISPLAY_HDMI_HELPER = lib.kernel.yes;
    DRM_TTM = lib.kernel.yes;
    DRM_EXEC = lib.kernel.yes;
    DRM_GPUVM = lib.kernel.yes;
    DRM_GPUSVM = lib.kernel.yes;
    DRM_BUDDY = lib.kernel.yes;
    DRM_VRAM_HELPER = lib.kernel.yes;
    DRM_TTM_HELPER = lib.kernel.yes;
    DRM_GEM_SHMEM_HELPER = lib.kernel.yes;
    DRM_SUBALLOC_HELPER = lib.kernel.yes;
    DRM_SCHED = lib.kernel.yes;
    DRM_PANEL_BACKLIGHT_QUIRKS = lib.kernel.yes;
    DRM_PRIVACY_SCREEN = lib.kernel.yes;
    DRM_AMDGPU = lib.kernel.yes;
    DRM_AMDGPU_SI = lib.kernel.yes;
    DRM_AMDGPU_CIK = lib.kernel.yes;
    DRM_AMDGPU_USERPTR = lib.kernel.yes;
    DRM_AMD_ISP = lib.kernel.yes;
    DRM_AMDGPU_WERROR = lib.kernel.yes;
    DRM_AMD_ACP = lib.kernel.yes;
    DRM_AMD_DC = lib.kernel.yes;
    DRM_AMD_DC_FP = lib.kernel.yes;
    DRM_AMD_DC_SI = lib.kernel.yes;
    DRM_AMD_SECURE_DISPLAY = lib.kernel.yes;

    HSA_AMD = lib.kernel.yes;

    DRM_AST = lib.kernel.no;
    DRM_BRIDGE = lib.kernel.yes;
    DRM_PANEL_BRIDGE = lib.kernel.yes;
    DRM_I2C_NXP_TDA998X = lib.kernel.yes;
    DRM_ETNAVIV = lib.kernel.yes;
    DRM_ETNAVIV_THERMAL = lib.kernel.yes;
    DRM_GMA500 = lib.kernel.yes;
    DRM_GUD = lib.kernel.yes;
    DRM_HISI_HIBMC = lib.kernel.yes;
    DRM_HYPERV = lib.kernel.no;
    DRM_MGAG200 = lib.kernel.yes;
    DRM_MGAG200_DISABLE_WRITECOMBINE = lib.kernel.no;
    DRM_NOUVEAU = lib.kernel.no;
    DRM_PANEL = lib.kernel.yes;
    DRM_PANEL_FOCALTECH_OTA7290B = lib.kernel.yes;
    DRM_PANEL_RASPBERRYPI_TOUCHSCREEN = lib.kernel.yes;
    DRM_QXL = lib.kernel.yes;
    DRM_RADEON = lib.kernel.yes;
    DRM_RADEON_USERPTR = lib.kernel.yes;
    DRM_ST7571 = lib.kernel.yes;
    DRM_ST7571_I2C = lib.kernel.yes;
    DRM_SSD130X = lib.kernel.yes;
    DRM_SSD130X_I2C = lib.kernel.yes;
    DRM_SYSFB_HELPER = lib.kernel.yes;
    DRM_EFIDRM = lib.kernel.yes;
    DRM_SIMPLEDRM = lib.kernel.no;
    DRM_VESADRM = lib.kernel.no;
    DRM_APPLETBDRM = lib.kernel.yes;
    DRM_BOCHS = lib.kernel.yes;
    DRM_CIRRUS_QEMU = lib.kernel.yes;
    DRM_GM12U320 = lib.kernel.yes;
    DRM_UDL = lib.kernel.yes;
    DRM_VBOXVIDEO = lib.kernel.yes;
    DRM_VGEM = lib.kernel.yes;
    DRM_VIRTIO_GPU = lib.kernel.yes;
    DRM_VIRTIO_GPU_KMS = lib.kernel.yes;
    DRM_VKMS = lib.kernel.yes;
    DRM_VMWGFX = lib.kernel.yes;
    DRM_VMWGFX_MKSSTATS = lib.kernel.yes;
    DRM_XE = lib.kernel.yes;
    DRM_XE_FORCE_PROBE = lib.kernel.freeform "";
    DRM_XE_WERROR = lib.kernel.no;
    DRM_XE_DEBUG = lib.kernel.no;
    DRM_XE_DEBUG_VM = lib.kernel.no;
    DRM_XE_DEBUG_SRIOV = lib.kernel.no;
    DRM_XE_DEBUG_MEMIRQ = lib.kernel.no;
    DRM_XE_DEBUG_MEM = lib.kernel.no;
    DRM_XE_USERPTR_INVAL_INJECT = lib.kernel.no;
    DRM_XE_JOB_TIMEOUT_MAX = lib.kernel.freeform "10000";
    DRM_XE_JOB_TIMEOUT_MIN = lib.kernel.freeform "1";
    DRM_XE_TIMESLICE_MAX = lib.kernel.freeform "10000000";
    DRM_XE_TIMESLICE_MIN = lib.kernel.freeform "1";
    DRM_XE_PREEMPT_TIMEOUT = lib.kernel.freeform "640000";
    DRM_XE_PREEMPT_TIMEOUT_MAX = lib.kernel.freeform "10000000";
    DRM_XE_PREEMPT_TIMEOUT_MIN = lib.kernel.freeform "1";
    DRM_XE_ENABLE_SCHEDTIMEOUT_LIMIT = lib.kernel.yes;
    DRM_PANEL_ORIENTATION_QUIRKS = lib.kernel.yes;

    FB = lib.kernel.no;

    LCD_CLASS_DEVICE = lib.kernel.yes;
    LCD_PLATFORM = lib.kernel.yes;

    BACKLIGHT_CLASS_DEVICE = lib.kernel.yes;
    BACKLIGHT_AW99706 = lib.kernel.yes;
    BACKLIGHT_KTD253 = lib.kernel.yes;
    BACKLIGHT_KTD2801 = lib.kernel.yes;
    BACKLIGHT_KTZ8866 = lib.kernel.yes;
    BACKLIGHT_MAX25014 = lib.kernel.yes;
    BACKLIGHT_APPLE = lib.kernel.yes;
    BACKLIGHT_QCOM_WLED = lib.kernel.yes;
    BACKLIGHT_SAHARA = lib.kernel.yes;
    BACKLIGHT_ADP8860 = lib.kernel.yes;
    BACKLIGHT_ADP8870 = lib.kernel.yes;
    BACKLIGHT_LM3509 = lib.kernel.yes;
    BACKLIGHT_LM3639 = lib.kernel.yes;
    BACKLIGHT_GPIO = lib.kernel.yes;
    BACKLIGHT_LV5207LP = lib.kernel.yes;
    BACKLIGHT_BD6107 = lib.kernel.yes;
    BACKLIGHT_ARCXCNN = lib.kernel.yes;

    VIDEOMODE_HELPERS = lib.kernel.yes;

    HDMI = lib.kernel.yes;

    FIRMWARE_EDID = lib.kernel.yes;

    VGA_CONSOLE = lib.kernel.yes;

    DUMMY_CONSOLE = lib.kernel.yes;
    DUMMY_CONSOLE_COLUMNS = lib.kernel.freeform "80";
    DUMMY_CONSOLE_ROWS = lib.kernel.freeform "25";

    TRACE_GPU_MEM = lib.kernel.yes;

    DRM_ACCEL = lib.kernel.yes;
    DRM_ACCEL_AMDXDNA = lib.kernel.no;
    DRM_ACCEL_HABANALABS = lib.kernel.no;
    DRM_ACCEL_IVPU = lib.kernel.no;

    SOUND = lib.kernel.yes;
    SOUND_OSS_CORE = lib.kernel.yes;
    SOUND_OSS_CORE_PRECLAIM = lib.kernel.yes;

    SND = lib.kernel.yes;
    SND_TIMER = lib.kernel.yes;
    SND_PCM = lib.kernel.yes;
    SND_PCM_ELD = lib.kernel.yes;
    SND_HWDEP = lib.kernel.yes;
    SND_SEQ_DEVICE = lib.kernel.yes;
    SND_RAWMIDI = lib.kernel.yes;
    SND_UMP = lib.kernel.yes;
    SND_UMP_LEGACY_RAWMIDI = lib.kernel.no;
    SND_JACK = lib.kernel.yes;
    SND_JACK_INPUT_DEV = lib.kernel.yes;
    SND_OSSEMUL = lib.kernel.yes;
    SND_MIXER_OSS = lib.kernel.yes;
    SND_PCM_OSS = lib.kernel.yes;
    SND_PCM_OSS_PLUGINS = lib.kernel.yes;
    SND_PCM_TIMER = lib.kernel.yes;
    SND_HRTIMER = lib.kernel.yes;
    SND_DYNAMIC_MINORS = lib.kernel.yes;
    SND_MAX_CARDS = lib.kernel.freeform "32";
    SND_SUPPORT_OLD_API = lib.kernel.no;
    SND_PROC_FS = lib.kernel.yes;
    SND_VERBOSE_PROCFS = lib.kernel.yes;
    SND_CTL_FAST_LOOKUP = lib.kernel.yes;
    SND_DEBUG = lib.kernel.no;
    SND_CTL_INPUT_VALIDATION = lib.kernel.no;
    SND_UTIMER = lib.kernel.no;
    SND_VMASTER = lib.kernel.yes;
    SND_DMA_SGBUF = lib.kernel.yes;
    SND_CTL_LED = lib.kernel.yes;
    SND_SEQUENCER = lib.kernel.yes;
    SND_SEQ_DUMMY = lib.kernel.yes;
    SND_SEQUENCER_OSS = lib.kernel.no;
    SND_SEQ_HRTIMER_DEFAULT = lib.kernel.yes;
    SND_SEQ_MIDI_EVENT = lib.kernel.yes;
    SND_SEQ_MIDI = lib.kernel.yes;
    SND_SEQ_VIRMIDI = lib.kernel.yes;
    SND_SEQ_UMP = lib.kernel.yes;
    SND_SEQ_UMP_CLIENT = lib.kernel.yes;
    SND_MPU401_UART = lib.kernel.yes;
    SND_DRIVERS = lib.kernel.yes;
    SND_PCSP = lib.kernel.no;
    SND_DUMMY = lib.kernel.yes;
    SND_ALOOP = lib.kernel.yes;
    SND_PCMTEST = lib.kernel.yes;
    SND_VIRMIDI = lib.kernel.yes;
    SND_MTPAV = lib.kernel.yes;
    SND_SERIAL_U16550 = lib.kernel.yes;
    SND_MPU401 = lib.kernel.yes;
    SND_PCI = lib.kernel.yes;
    SND_AD1889 = lib.kernel.no;
    SND_ALS300 = lib.kernel.no;
    SND_ALS4000 = lib.kernel.no;
    SND_ALI5451 = lib.kernel.no;
    SND_ASIHPI = lib.kernel.no;
    SND_ATIIXP = lib.kernel.no;
    SND_ATIIXP_MODEM = lib.kernel.no;
    SND_AU8810 = lib.kernel.no;
    SND_AU8820 = lib.kernel.no;
    SND_AU8830 = lib.kernel.no;
    SND_AW2 = lib.kernel.no;
    SND_AZT3328 = lib.kernel.no;
    SND_BT87X = lib.kernel.no;
    SND_CA0106 = lib.kernel.no;
    SND_CMIPCI = lib.kernel.no;
    SND_OXYGEN = lib.kernel.no;
    SND_CS4281 = lib.kernel.no;
    SND_CS46XX = lib.kernel.no;
    SND_CTXFI = lib.kernel.no;
    SND_DARLA20 = lib.kernel.no;
    SND_GINA20 = lib.kernel.no;
    SND_LAYLA20 = lib.kernel.no;
    SND_DARLA24 = lib.kernel.no;
    SND_GINA24 = lib.kernel.no;
    SND_LAYLA24 = lib.kernel.no;
    SND_MONA = lib.kernel.no;
    SND_MIA = lib.kernel.no;
    SND_ECHO3G = lib.kernel.no;
    SND_INDIGO = lib.kernel.no;
    SND_INDIGOIO = lib.kernel.no;
    SND_INDIGODJ = lib.kernel.no;
    SND_INDIGOIOX = lib.kernel.no;
    SND_INDIGODJX = lib.kernel.no;
    SND_EMU10K1 = lib.kernel.no;
    SND_EMU10K1X = lib.kernel.no;
    SND_ENS1370 = lib.kernel.no;
    SND_ENS1371 = lib.kernel.no;
    SND_ES1938 = lib.kernel.no;
    SND_ES1968 = lib.kernel.no;
    SND_FM801 = lib.kernel.no;
    SND_HDSP = lib.kernel.no;
    SND_HDSPM = lib.kernel.no;
    SND_ICE1712 = lib.kernel.no;
    SND_ICE1724 = lib.kernel.no;
    SND_INTEL8X0 = lib.kernel.no;
    SND_INTEL8X0M = lib.kernel.no;
    SND_KORG1212 = lib.kernel.no;
    SND_LOLA = lib.kernel.no;
    SND_LX6464ES = lib.kernel.no;
    SND_MAESTRO3 = lib.kernel.no;
    SND_MIXART = lib.kernel.no;
    SND_NM256 = lib.kernel.no;
    SND_PCXHR = lib.kernel.no;
    SND_RIPTIDE = lib.kernel.no;
    SND_RME32 = lib.kernel.no;
    SND_RME96 = lib.kernel.no;
    SND_RME9652 = lib.kernel.no;
    SND_SE6X = lib.kernel.no;
    SND_SONICVIBES = lib.kernel.no;
    SND_TRIDENT = lib.kernel.no;
    SND_VIA82XX = lib.kernel.no;
    SND_VIA82XX_MODEM = lib.kernel.no;
    SND_VIRTUOSO = lib.kernel.no;
    SND_VX222 = lib.kernel.no;
    SND_YMFPCI = lib.kernel.no;
    SND_HDA = lib.kernel.yes;
    SND_HDA_HWDEP = lib.kernel.yes;
    SND_HDA_RECONFIG = lib.kernel.yes;
    SND_HDA_INPUT_BEEP = lib.kernel.yes;
    SND_HDA_INPUT_BEEP_MODE = lib.kernel.freeform "1";
    SND_HDA_PATCH_LOADER = lib.kernel.yes;
    SND_HDA_POWER_SAVE_DEFAULT = lib.kernel.freeform "0";
    SND_HDA_CTL_DEV_ID = lib.kernel.no;
    SND_HDA_PREALLOC_SIZE = lib.kernel.freeform "0";
    SND_HDA_INTEL = lib.kernel.yes;
    SND_HDA_ACPI = lib.kernel.yes;
    SND_HDA_GENERIC_LEDS = lib.kernel.yes;
    SND_HDA_CODEC_ANALOG = lib.kernel.yes;
    SND_HDA_CODEC_SIGMATEL = lib.kernel.yes;
    SND_HDA_CODEC_VIA = lib.kernel.yes;
    SND_HDA_CODEC_CONEXANT = lib.kernel.yes;
    SND_HDA_CODEC_SENARYTECH = lib.kernel.yes;
    SND_HDA_CODEC_CA0110 = lib.kernel.yes;
    SND_HDA_CODEC_CA0132 = lib.kernel.yes;
    SND_HDA_CODEC_CA0132_DSP = lib.kernel.yes;
    SND_HDA_CODEC_CMEDIA = lib.kernel.yes;
    SND_HDA_CODEC_CM9825 = lib.kernel.yes;
    SND_HDA_CODEC_SI3054 = lib.kernel.yes;
    SND_HDA_GENERIC = lib.kernel.yes;
    SND_HDA_CODEC_REALTEK = lib.kernel.yes;
    SND_HDA_CODEC_REALTEK_LIB = lib.kernel.yes;
    SND_HDA_CODEC_ALC260 = lib.kernel.yes;
    SND_HDA_CODEC_ALC262 = lib.kernel.yes;
    SND_HDA_CODEC_ALC268 = lib.kernel.yes;
    SND_HDA_CODEC_ALC269 = lib.kernel.yes;
    SND_HDA_CODEC_ALC662 = lib.kernel.yes;
    SND_HDA_CODEC_ALC680 = lib.kernel.yes;
    SND_HDA_CODEC_ALC861 = lib.kernel.yes;
    SND_HDA_CODEC_ALC861VD = lib.kernel.yes;
    SND_HDA_CODEC_ALC880 = lib.kernel.yes;
    SND_HDA_CODEC_ALC882 = lib.kernel.yes;
    SND_HDA_CODEC_CIRRUS = lib.kernel.yes;
    SND_HDA_CODEC_CS420X = lib.kernel.yes;
    SND_HDA_CODEC_CS421X = lib.kernel.yes;
    SND_HDA_CODEC_CS8409 = lib.kernel.no;
    SND_HDA_CODEC_HDMI = lib.kernel.yes;
    SND_HDA_CODEC_HDMI_GENERIC = lib.kernel.yes;
    SND_HDA_CODEC_HDMI_SIMPLE = lib.kernel.yes;
    SND_HDA_CODEC_HDMI_INTEL = lib.kernel.yes;
    SND_HDA_INTEL_HDMI_SILENT_STREAM = lib.kernel.no;
    SND_HDA_CODEC_HDMI_ATI = lib.kernel.yes;
    SND_HDA_CODEC_HDMI_NVIDIA = lib.kernel.yes;
    SND_HDA_CODEC_HDMI_NVIDIA_MCP = lib.kernel.yes;
    SND_HDA_CODEC_HDMI_TEGRA = lib.kernel.yes;
    SND_HDA_SCODEC_COMPONENT = lib.kernel.yes;
    SND_HDA_CORE = lib.kernel.yes;
    SND_HDA_DSP_LOADER = lib.kernel.yes;
    SND_HDA_COMPONENT = lib.kernel.yes;
    SND_HDA_I915 = lib.kernel.yes;
    SND_INTEL_NHLT = lib.kernel.yes;
    SND_INTEL_DSP_CONFIG = lib.kernel.yes;
    SND_INTEL_SOUNDWIRE_ACPI = lib.kernel.yes;
    SND_USB = lib.kernel.yes;
    SND_USB_AUDIO = lib.kernel.yes;
    SND_USB_AUDIO_MIDI_V2 = lib.kernel.yes;
    SND_USB_AUDIO_USE_MEDIA_CONTROLLER = lib.kernel.yes;
    SND_USB_UA101 = lib.kernel.yes;
    SND_USB_USX2Y = lib.kernel.yes;
    SND_USB_CAIAQ = lib.kernel.yes;
    SND_USB_CAIAQ_INPUT = lib.kernel.yes;
    SND_USB_US122L = lib.kernel.yes;
    SND_USB_US144MKII = lib.kernel.yes;
    SND_USB_6FIRE = lib.kernel.yes;
    SND_USB_HIFACE = lib.kernel.yes;
    SND_BCD2000 = lib.kernel.yes;
    SND_USB_LINE6 = lib.kernel.yes;
    SND_USB_POD = lib.kernel.yes;
    SND_USB_PODHD = lib.kernel.yes;
    SND_USB_TONEPORT = lib.kernel.yes;
    SND_USB_VARIAX = lib.kernel.yes;
    SND_PCMCIA = lib.kernel.yes;
    SND_VXPOCKET = lib.kernel.no;
    SND_PDAUDIOCF = lib.kernel.no;
    SND_SOC = lib.kernel.no;
    SND_X86 = lib.kernel.yes;
    SND_VIRTIO = lib.kernel.yes;

    HID_SUPPORT = lib.kernel.yes;
    HID = lib.kernel.yes;
    HID_BATTERY_STRENGTH = lib.kernel.yes;

    HIDRAW = lib.kernel.yes;

    UHID = lib.kernel.no;

    HID_GENERIC = lib.kernel.yes;
    HID_HAPTIC = lib.kernel.yes;
    HID_A4TECH = lib.kernel.yes;
    HID_ACCUTOUCH = lib.kernel.yes;
    HID_ACRUX = lib.kernel.yes;
    HID_ACRUX_FF = lib.kernel.yes;
    HID_APPLE = lib.kernel.yes;
    HID_APPLEIR = lib.kernel.yes;
    HID_APPLETB_BL = lib.kernel.yes;
    HID_APPLETB_KBD = lib.kernel.yes;
    HID_ASUS = lib.kernel.yes;
    HID_AUREAL = lib.kernel.yes;
    HID_BELKIN = lib.kernel.yes;
    HID_BETOP_FF = lib.kernel.yes;
    HID_BIGBEN_FF = lib.kernel.yes;
    HID_CHERRY = lib.kernel.yes;
    HID_CHICONY = lib.kernel.yes;
    HID_CORSAIR = lib.kernel.yes;
    HID_COUGAR = lib.kernel.yes;
    HID_MACALLY = lib.kernel.yes;
    HID_PRODIKEYS = lib.kernel.yes;
    HID_CMEDIA = lib.kernel.yes;
    HID_CP2112 = lib.kernel.yes;
    HID_CREATIVE_SB0540 = lib.kernel.yes;
    HID_CYPRESS = lib.kernel.yes;
    HID_DRAGONRISE = lib.kernel.yes;

    DRAGONRISE_FF = lib.kernel.yes;

    HID_EMS_FF = lib.kernel.yes;
    HID_ELAN = lib.kernel.yes;
    HID_ELECOM = lib.kernel.yes;
    HID_ELO = lib.kernel.yes;
    HID_EVISION = lib.kernel.yes;
    HID_EZKEY = lib.kernel.yes;
    HID_FT260 = lib.kernel.yes;
    HID_GEMBIRD = lib.kernel.yes;
    HID_GFRM = lib.kernel.yes;
    HID_GLORIOUS = lib.kernel.yes;
    HID_HOLTEK = lib.kernel.yes;

    HOLTEK_FF = lib.kernel.yes;

    HID_VIVALDI_COMMON = lib.kernel.yes;
    HID_GOOGLE_STADIA_FF = lib.kernel.yes;
    HID_VIVALDI = lib.kernel.yes;
    HID_GT683R = lib.kernel.yes;
    HID_KEYTOUCH = lib.kernel.yes;
    HID_KYE = lib.kernel.yes;
    HID_KYSONA = lib.kernel.yes;
    HID_UCLOGIC = lib.kernel.yes;
    HID_WALTOP = lib.kernel.yes;
    HID_VIEWSONIC = lib.kernel.yes;
    HID_VRC2 = lib.kernel.yes;
    HID_XIAOMI = lib.kernel.yes;
    HID_GYRATION = lib.kernel.yes;
    HID_ICADE = lib.kernel.yes;
    HID_ITE = lib.kernel.yes;
    HID_JABRA = lib.kernel.yes;
    HID_TWINHAN = lib.kernel.yes;
    HID_KENSINGTON = lib.kernel.yes;
    HID_LCPOWER = lib.kernel.yes;
    HID_LED = lib.kernel.yes;
    HID_LENOVO = lib.kernel.yes;
    HID_LENOVO_GO = lib.kernel.yes;
    HID_LENOVO_GO_S = lib.kernel.yes;
    HID_LETSKETCH = lib.kernel.yes;
    HID_LOGITECH = lib.kernel.yes;
    HID_LOGITECH_DJ = lib.kernel.yes;
    HID_LOGITECH_HIDPP = lib.kernel.yes;

    LOGITECH_FF = lib.kernel.yes;

    LOGIRUMBLEPAD2_FF = lib.kernel.yes;

    LOGIG940_FF = lib.kernel.yes;

    LOGIWHEELS_FF = lib.kernel.yes;

    HID_MAGICMOUSE = lib.kernel.yes;
    HID_MALTRON = lib.kernel.yes;
    HID_MAYFLASH = lib.kernel.yes;
    HID_MEGAWORLD_FF = lib.kernel.yes;
    HID_RAKK = lib.kernel.yes;
    HID_REDRAGON = lib.kernel.yes;
    HID_MICROSOFT = lib.kernel.yes;
    HID_MONTEREY = lib.kernel.yes;
    HID_MULTITOUCH = lib.kernel.yes;
    HID_NINTENDO = lib.kernel.yes;

    NINTENDO_FF = lib.kernel.yes;

    HID_NTI = lib.kernel.yes;
    HID_NTRIG = lib.kernel.yes;
    HID_ORTEK = lib.kernel.yes;
    HID_OXP = lib.kernel.yes;
    HID_PANTHERLORD = lib.kernel.yes;

    PANTHERLORD_FF = lib.kernel.yes;

    HID_PENMOUNT = lib.kernel.yes;
    HID_PETALYNX = lib.kernel.yes;
    HID_PICOLCD = lib.kernel.yes;
    HID_PICOLCD_BACKLIGHT = lib.kernel.yes;
    HID_PICOLCD_LCD = lib.kernel.yes;
    HID_PICOLCD_LEDS = lib.kernel.yes;
    HID_PICOLCD_CIR = lib.kernel.yes;
    HID_PLANTRONICS = lib.kernel.yes;
    HID_PLAYSTATION = lib.kernel.yes;

    PLAYSTATION_FF = lib.kernel.no;

    HID_PXRC = lib.kernel.yes;
    HID_RAPOO = lib.kernel.yes;
    HID_RAZER = lib.kernel.yes;
    HID_PRIMAX = lib.kernel.yes;
    HID_RETRODE = lib.kernel.yes;
    HID_ROCCAT = lib.kernel.yes;
    HID_SAITEK = lib.kernel.yes;
    HID_SAMSUNG = lib.kernel.yes;
    HID_SEMITEK = lib.kernel.yes;
    HID_SIGMAMICRO = lib.kernel.yes;
    HID_SONY = lib.kernel.yes;

    SONY_FF = lib.kernel.yes;

    HID_SPEEDLINK = lib.kernel.yes;
    HID_STEAM = lib.kernel.yes;

    STEAM_FF = lib.kernel.yes;

    HID_STEELSERIES = lib.kernel.yes;
    HID_SUNPLUS = lib.kernel.yes;
    HID_RMI = lib.kernel.yes;
    HID_GREENASIA = lib.kernel.yes;

    GREENASIA_FF = lib.kernel.yes;

    HID_HYPERV_MOUSE = lib.kernel.yes;
    HID_SMARTJOYPLUS = lib.kernel.yes;

    SMARTJOYPLUS_FF = lib.kernel.yes;

    HID_TIVO = lib.kernel.yes;
    HID_TOPSEED = lib.kernel.yes;
    HID_TOPRE = lib.kernel.no;
    HID_THINGM = lib.kernel.yes;
    HID_THRUSTMASTER = lib.kernel.yes;

    THRUSTMASTER_FF = lib.kernel.yes;

    HID_UDRAW_PS3 = lib.kernel.yes;
    HID_U2FZERO = lib.kernel.yes;
    HID_UNIVERSAL_PIDFF = lib.kernel.yes;
    HID_WACOM = lib.kernel.yes;
    HID_WIIMOTE = lib.kernel.yes;
    HID_WINWING = lib.kernel.yes;
    HID_XINMO = lib.kernel.yes;
    HID_ZEROPLUS = lib.kernel.yes;

    ZEROPLUS_FF = lib.kernel.yes;

    HID_ZYDACRON = lib.kernel.yes;
    HID_SENSOR_HUB = lib.kernel.yes;
    HID_SENSOR_CUSTOM_SENSOR = lib.kernel.yes;
    HID_ALPS = lib.kernel.yes;
    HID_MCP2200 = lib.kernel.yes;
    HID_MCP2221 = lib.kernel.yes;
    HID_HUAWEI = lib.kernel.yes;

    I2C_HID = lib.kernel.yes;
    I2C_HID_ACPI = lib.kernel.yes;
    I2C_HID_OF = lib.kernel.yes;
    I2C_HID_CORE = lib.kernel.yes;

    INTEL_ISH_HID = lib.kernel.yes;
    INTEL_ISH_FIRMWARE_DOWNLOADER = lib.kernel.yes;

    AMD_SFH_HID = lib.kernel.yes;

    INTEL_THC_HID = lib.kernel.yes;
    INTEL_QUICKSPI = lib.kernel.yes;
    INTEL_QUICKI2C = lib.kernel.yes;

    USB_HID = lib.kernel.yes;

    HID_PID = lib.kernel.yes;

    USB_HIDDEV = lib.kernel.yes;
    USB_OHCI_LITTLE_ENDIAN = lib.kernel.yes;
    USB_SUPPORT = lib.kernel.yes;
    USB_COMMON = lib.kernel.yes;
    USB_LED_TRIG = lib.kernel.yes;
    USB_ULPI_BUS = lib.kernel.yes;
    USB_CONN_GPIO = lib.kernel.yes;
    USB_ARCH_HAS_HCD = lib.kernel.yes;
    USB = lib.kernel.yes;
    USB_PCI = lib.kernel.yes;
    USB_PCI_AMD = lib.kernel.yes;
    USB_ANNOUNCE_NEW_DEVICES = lib.kernel.yes;
    USB_DEFAULT_PERSIST = lib.kernel.yes;
    USB_FEW_INIT_RETRIES = lib.kernel.no;
    USB_DYNAMIC_MINORS = lib.kernel.yes;
    USB_OTG = lib.kernel.yes;
    USB_OTG_PRODUCTLIST = lib.kernel.yes;
    USB_OTG_DISABLE_EXTERNAL_HUB = lib.kernel.no;
    USB_OTG_FSM = lib.kernel.yes;
    USB_LEDS_TRIGGER_USBPORT = lib.kernel.yes;
    USB_AUTOSUSPEND_DELAY = lib.kernel.freeform "2";
    USB_DEFAULT_AUTHORIZATION_MODE = lib.kernel.freeform "1";
    USB_MON = lib.kernel.yes;
    USB_C67X00_HCD = lib.kernel.yes;
    USB_XHCI_HCD = lib.kernel.yes;
    USB_XHCI_DBGCAP = lib.kernel.no;
    USB_XHCI_PCI = lib.kernel.yes;
    USB_XHCI_PCI_RENESAS = lib.kernel.yes;
    USB_XHCI_PLATFORM = lib.kernel.yes;
    USB_XHCI_SIDEBAND = lib.kernel.yes;
    USB_EHCI_HCD = lib.kernel.yes;
    USB_EHCI_ROOT_HUB_TT = lib.kernel.yes;
    USB_EHCI_TT_NEWSCHED = lib.kernel.yes;
    USB_EHCI_PCI = lib.kernel.yes;
    USB_EHCI_FSL = lib.kernel.yes;
    USB_EHCI_HCD_PLATFORM = lib.kernel.yes;
    USB_OXU210HP_HCD = lib.kernel.yes;
    USB_ISP116X_HCD = lib.kernel.yes;
    USB_OHCI_HCD = lib.kernel.yes;
    USB_OHCI_HCD_PCI = lib.kernel.yes;
    USB_OHCI_HCD_PLATFORM = lib.kernel.yes;
    USB_UHCI_HCD = lib.kernel.yes;
    USB_SL811_HCD = lib.kernel.yes;
    USB_SL811_HCD_ISO = lib.kernel.yes;
    USB_SL811_CS = lib.kernel.yes;
    USB_R8A66597_HCD = lib.kernel.yes;
    USB_HCD_TEST_MODE = lib.kernel.no;
    USB_ACM = lib.kernel.yes;
    USB_PRINTER = lib.kernel.yes;
    USB_WDM = lib.kernel.yes;
    USB_TMC = lib.kernel.no;
    USB_STORAGE = lib.kernel.yes;
    USB_STORAGE_DEBUG = lib.kernel.no;
    USB_STORAGE_REALTEK = lib.kernel.yes;

    REALTEK_AUTOPM = lib.kernel.yes;

    USB_STORAGE_DATAFAB = lib.kernel.yes;
    USB_STORAGE_FREECOM = lib.kernel.yes;
    USB_STORAGE_ISD200 = lib.kernel.yes;
    USB_STORAGE_USBAT = lib.kernel.yes;
    USB_STORAGE_SDDR09 = lib.kernel.yes;
    USB_STORAGE_SDDR55 = lib.kernel.yes;
    USB_STORAGE_JUMPSHOT = lib.kernel.yes;
    USB_STORAGE_ALAUDA = lib.kernel.yes;
    USB_STORAGE_ONETOUCH = lib.kernel.yes;
    USB_STORAGE_KARMA = lib.kernel.yes;
    USB_STORAGE_CYPRESS_ATACB = lib.kernel.yes;
    USB_STORAGE_ENE_UB6250 = lib.kernel.yes;
    USB_UAS = lib.kernel.yes;
    USB_MDC800 = lib.kernel.yes;
    USB_MICROTEK = lib.kernel.yes;

    USBIP_CORE = lib.kernel.yes;
    USBIP_VHCI_HCD = lib.kernel.yes;
    USBIP_VHCI_HC_PORTS = lib.kernel.freeform "8";
    USBIP_VHCI_NR_HCS = lib.kernel.freeform "1";
    USBIP_HOST = lib.kernel.yes;
    USBIP_VUDC = lib.kernel.yes;
    USBIP_DEBUG = lib.kernel.no;

    USB_CDNS_SUPPORT = lib.kernel.yes;
    USB_CDNS3 = lib.kernel.yes;
    USB_CDNS3_HOST = lib.kernel.yes;
    USB_CDNS3_GADGET = lib.kernel.yes;
    USB_CDNS3_PCI_WRAP = lib.kernel.yes;
    USB_CDNSP_PCI = lib.kernel.yes;
    USB_MUSB_HDRC = lib.kernel.yes;
    USB_MUSB_HOST = lib.kernel.no;
    USB_MUSB_GADGET = lib.kernel.no;
    USB_MUSB_DUAL_ROLE = lib.kernel.yes;

    MUSB_PIO_ONLY = lib.kernel.no;

    USB_DWC3 = lib.kernel.yes;
    USB_DWC3_ULPI = lib.kernel.no;
    USB_DWC3_HOST = lib.kernel.no;
    USB_DWC3_GADGET = lib.kernel.no;
    USB_DWC3_DUAL_ROLE = lib.kernel.yes;
    USB_DWC3_PCI = lib.kernel.yes;
    USB_DWC3_HAPS = lib.kernel.yes;
    USB_DWC3_GOOGLE = lib.kernel.no;
    USB_DWC2 = lib.kernel.yes;
    USB_DWC2_HOST = lib.kernel.no;
    USB_DWC2_PERIPHERAL = lib.kernel.no;
    USB_DWC2_DUAL_ROLE = lib.kernel.yes;
    USB_DWC2_PCI = lib.kernel.no;
    USB_DWC2_DEBUG = lib.kernel.no;
    USB_DWC2_TRACK_MISSED_SOFS = lib.kernel.no;
    USB_CHIPIDEA = lib.kernel.yes;
    USB_CHIPIDEA_UDC = lib.kernel.yes;
    USB_CHIPIDEA_HOST = lib.kernel.yes;
    USB_CHIPIDEA_PCI = lib.kernel.yes;
    USB_CHIPIDEA_MSM = lib.kernel.yes;
    USB_CHIPIDEA_NPCM = lib.kernel.yes;
    USB_CHIPIDEA_GENERIC = lib.kernel.yes;
    USB_ISP1760 = lib.kernel.yes;
    USB_ISP1760_HCD = lib.kernel.yes;
    USB_ISP1761_UDC = lib.kernel.yes;
    USB_ISP1760_HOST_ROLE = lib.kernel.no;
    USB_ISP1760_GADGET_ROLE = lib.kernel.no;
    USB_ISP1760_DUAL_ROLE = lib.kernel.yes;
    USB_SERIAL = lib.kernel.yes;
    USB_SERIAL_CONSOLE = lib.kernel.no;
    USB_SERIAL_GENERIC = lib.kernel.no;
    USB_SERIAL_SIMPLE = lib.kernel.no;
    USB_SERIAL_AIRCABLE = lib.kernel.no;
    USB_SERIAL_ARK3116 = lib.kernel.no;
    USB_SERIAL_BELKIN = lib.kernel.no;
    USB_SERIAL_CH341 = lib.kernel.no;
    USB_SERIAL_WHITEHEAT = lib.kernel.no;
    USB_SERIAL_DIGI_ACCELEPORT = lib.kernel.no;
    USB_SERIAL_CP210X = lib.kernel.no;
    USB_SERIAL_CYPRESS_M8 = lib.kernel.no;
    USB_SERIAL_EMPEG = lib.kernel.no;
    USB_SERIAL_FTDI_SIO = lib.kernel.no;
    USB_SERIAL_VISOR = lib.kernel.no;
    USB_SERIAL_IPAQ = lib.kernel.no;
    USB_SERIAL_IR = lib.kernel.no;
    USB_SERIAL_EDGEPORT = lib.kernel.no;
    USB_SERIAL_EDGEPORT_TI = lib.kernel.no;
    USB_SERIAL_F81232 = lib.kernel.no;
    USB_SERIAL_F8153X = lib.kernel.no;
    USB_SERIAL_GARMIN = lib.kernel.no;
    USB_SERIAL_IPW = lib.kernel.no;
    USB_SERIAL_IUU = lib.kernel.no;
    USB_SERIAL_KEYSPAN_PDA = lib.kernel.no;
    USB_SERIAL_KEYSPAN = lib.kernel.no;
    USB_SERIAL_KLSI = lib.kernel.no;
    USB_SERIAL_KOBIL_SCT = lib.kernel.no;
    USB_SERIAL_MCT_U232 = lib.kernel.no;
    USB_SERIAL_METRO = lib.kernel.no;
    USB_SERIAL_MOS7720 = lib.kernel.no;
    USB_SERIAL_MOS7840 = lib.kernel.no;
    USB_SERIAL_MXUPORT = lib.kernel.no;
    USB_SERIAL_NAVMAN = lib.kernel.no;
    USB_SERIAL_PL2303 = lib.kernel.no;
    USB_SERIAL_OTI6858 = lib.kernel.no;
    USB_SERIAL_QCAUX = lib.kernel.no;
    USB_SERIAL_QUALCOMM = lib.kernel.no;
    USB_SERIAL_SPCP8X5 = lib.kernel.no;
    USB_SERIAL_SAFE = lib.kernel.no;
    USB_SERIAL_SIERRAWIRELESS = lib.kernel.no;
    USB_SERIAL_SYMBOL = lib.kernel.no;
    USB_SERIAL_TI = lib.kernel.no;
    USB_SERIAL_CYBERJACK = lib.kernel.no;
    USB_SERIAL_OPTION = lib.kernel.no;
    USB_SERIAL_OMNINET = lib.kernel.no;
    USB_SERIAL_OPTICON = lib.kernel.no;
    USB_SERIAL_XSENS_MT = lib.kernel.no;
    USB_SERIAL_WISHBONE = lib.kernel.no;
    USB_SERIAL_SSU100 = lib.kernel.no;
    USB_SERIAL_QT2 = lib.kernel.no;
    USB_SERIAL_UPD78F0730 = lib.kernel.no;
    USB_SERIAL_XR = lib.kernel.no;
    USB_SERIAL_DEBUG = lib.kernel.no;
    USB_EMI62 = lib.kernel.yes;
    USB_EMI26 = lib.kernel.yes;
    USB_ADUTUX = lib.kernel.yes;
    USB_SEVSEG = lib.kernel.yes;
    USB_LEGOTOWER = lib.kernel.yes;
    USB_LCD = lib.kernel.yes;
    USB_CYPRESS_CY7C63 = lib.kernel.yes;
    USB_CYTHERM = lib.kernel.yes;
    USB_IDMOUSE = lib.kernel.yes;
    USB_APPLEDISPLAY = lib.kernel.yes;

    APPLE_MFI_FASTCHARGE = lib.kernel.yes;

    USB_LJCA = lib.kernel.yes;
    USB_USBIO = lib.kernel.yes;
    USB_SISUSBVGA = lib.kernel.yes;
    USB_LD = lib.kernel.yes;
    USB_TRANCEVIBRATOR = lib.kernel.yes;
    USB_IOWARRIOR = lib.kernel.yes;
    USB_TEST = lib.kernel.yes;
    USB_EHSET_TEST_FIXTURE = lib.kernel.yes;
    USB_ISIGHTFW = lib.kernel.yes;
    USB_YUREX = lib.kernel.yes;
    USB_EZUSB_FX2 = lib.kernel.yes;
    USB_HUB_USB251XB = lib.kernel.yes;
    USB_HSIC_USB3503 = lib.kernel.yes;
    USB_HSIC_USB4604 = lib.kernel.yes;
    USB_LINK_LAYER_TEST = lib.kernel.yes;
    USB_CHAOSKEY = lib.kernel.yes;
    USB_PHY = lib.kernel.yes;

    NOP_USB_XCEIV = lib.kernel.yes;

    USB_ISP1301 = lib.kernel.yes;
    USB_GADGET = lib.kernel.yes;
    USB_GADGET_DEBUG = lib.kernel.no;
    USB_GADGET_DEBUG_FILES = lib.kernel.no;
    USB_GADGET_DEBUG_FS = lib.kernel.no;
    USB_GADGET_VBUS_DRAW = lib.kernel.freeform "2";
    USB_GADGET_STORAGE_NUM_BUFFERS = lib.kernel.freeform "2";
    USB_GR_UDC = lib.kernel.no;
    USB_R8A66597 = lib.kernel.no;
    USB_PXA27X = lib.kernel.no;
    USB_M66592 = lib.kernel.no;
    USB_BDC_UDC = lib.kernel.no;
    USB_AMD5536UDC = lib.kernel.no;
    USB_NET2280 = lib.kernel.no;
    USB_GOKU = lib.kernel.no;
    USB_EG20T = lib.kernel.no;
    USB_CDNS2_UDC = lib.kernel.no;
    USB_DUMMY_HCD = lib.kernel.no;
    USB_CONFIGFS = lib.kernel.no;
    USB_ZERO = lib.kernel.no;
    USB_AUDIO = lib.kernel.no;
    USB_ETH = lib.kernel.no;
    USB_G_NCM = lib.kernel.no;
    USB_GADGETFS = lib.kernel.no;
    USB_FUNCTIONFS = lib.kernel.no;
    USB_MASS_STORAGE = lib.kernel.no;
    USB_G_SERIAL = lib.kernel.no;
    USB_MIDI_GADGET = lib.kernel.no;
    USB_G_PRINTER = lib.kernel.no;
    USB_CDC_COMPOSITE = lib.kernel.no;
    USB_G_ACM_MS = lib.kernel.no;
    USB_G_MULTI = lib.kernel.no;
    USB_G_HID = lib.kernel.no;
    USB_G_DBGP = lib.kernel.no;
    USB_G_WEBCAM = lib.kernel.no;
    USB_RAW_GADGET = lib.kernel.no;

    TYPEC = lib.kernel.yes;
    TYPEC_TCPM = lib.kernel.no;
    TYPEC_UCSI = lib.kernel.no;
    TYPEC_TPS6598X = lib.kernel.no;
    TYPEC_ANX7411 = lib.kernel.no;
    TYPEC_RT1719 = lib.kernel.no;
    TYPEC_HD3SS3220 = lib.kernel.no;
    TYPEC_STUSB160X = lib.kernel.no;
    TYPEC_WUSB3801 = lib.kernel.no;
    TYPEC_MUX_FSA4480 = lib.kernel.no;
    TYPEC_MUX_GPIO_SBU = lib.kernel.no;
    TYPEC_MUX_PI3USB30532 = lib.kernel.no;
    TYPEC_MUX_INTEL_PMC = lib.kernel.no;
    TYPEC_MUX_IT5205 = lib.kernel.no;
    TYPEC_MUX_NB7VPQ904M = lib.kernel.no;
    TYPEC_MUX_PS883X = lib.kernel.no;
    TYPEC_MUX_PTN36502 = lib.kernel.no;
    TYPEC_MUX_TUSB1046 = lib.kernel.no;
    TYPEC_MUX_WCD939X_USBSS = lib.kernel.no;
    TYPEC_DP_ALTMODE = lib.kernel.no;
    TYPEC_TBT_ALTMODE = lib.kernel.no;

    USB_ROLE_SWITCH = lib.kernel.yes;
    USB_ROLES_INTEL_XHCI = lib.kernel.yes;

    MMC = lib.kernel.yes;
    MMC_BLOCK = lib.kernel.yes;
    MMC_BLOCK_MINORS = lib.kernel.freeform "8";

    SDIO_UART = lib.kernel.no;

    MMC_TEST = lib.kernel.no;
    MMC_DEBUG = lib.kernel.no;
    MMC_SDHCI = lib.kernel.no;
    MMC_WBSD = lib.kernel.no;
    MMC_TIFM_SD = lib.kernel.no;
    MMC_SDRICOH_CS = lib.kernel.no;
    MMC_CB710 = lib.kernel.no;
    MMC_VIA_SDMMC = lib.kernel.no;
    MMC_VUB300 = lib.kernel.no;
    MMC_USHC = lib.kernel.no;
    MMC_USDHI6ROL0 = lib.kernel.no;
    MMC_REALTEK_PCI = lib.kernel.no;
    MMC_REALTEK_USB = lib.kernel.no;
    MMC_CQHCI = lib.kernel.no;
    MMC_HSQ = lib.kernel.no;
    MMC_TOSHIBA_PCI = lib.kernel.no;

    SCSI_UFSHCD = lib.kernel.yes;
    SCSI_UFS_BSG = lib.kernel.yes;
    SCSI_UFS_HWMON = lib.kernel.yes;
    SCSI_UFSHCD_PCI = lib.kernel.yes;
    SCSI_UFS_DWC_TC_PCI = lib.kernel.no;
    SCSI_UFSHCD_PLATFORM = lib.kernel.no;

    MEMSTICK = lib.kernel.yes;
    MEMSTICK_DEBUG = lib.kernel.no;
    MEMSTICK_UNSAFE_RESUME = lib.kernel.no;

    MSPRO_BLOCK = lib.kernel.yes;

    MS_BLOCK = lib.kernel.yes;

    MEMSTICK_TIFM_MS = lib.kernel.yes;
    MEMSTICK_JMICRON_38X = lib.kernel.yes;
    MEMSTICK_R592 = lib.kernel.yes;
    MEMSTICK_REALTEK_USB = lib.kernel.yes;

    LEDS_EXPRESSWIRE = lib.kernel.yes;

    NEW_LEDS = lib.kernel.yes;

    LEDS_CLASS = lib.kernel.yes;
    LEDS_CLASS_FLASH = lib.kernel.yes;
    LEDS_CLASS_MULTICOLOR = lib.kernel.yes;
    LEDS_BRIGHTNESS_HW_CHANGED = lib.kernel.no;
    LEDS_APU = lib.kernel.yes;
    LEDS_OSRAM_AMS_AS3668 = lib.kernel.yes;
    LEDS_AW200XX = lib.kernel.yes;
    LEDS_LM3530 = lib.kernel.yes;
    LEDS_LM3532 = lib.kernel.yes;
    LEDS_LM3642 = lib.kernel.yes;
    LEDS_PCA9532 = lib.kernel.yes;
    LEDS_PCA9532_GPIO = lib.kernel.yes;
    LEDS_GPIO = lib.kernel.yes;
    LEDS_LP3944 = lib.kernel.yes;
    LEDS_LP3952 = lib.kernel.yes;
    LEDS_LP50XX = lib.kernel.yes;
    LEDS_PCA955X = lib.kernel.yes;
    LEDS_PCA955X_GPIO = lib.kernel.yes;
    LEDS_PCA963X = lib.kernel.yes;
    LEDS_PCA995X = lib.kernel.yes;
    LEDS_REGULATOR = lib.kernel.yes;
    LEDS_BD2606MVV = lib.kernel.yes;
    LEDS_BD2802 = lib.kernel.yes;
    LEDS_INTEL_SS4200 = lib.kernel.yes;
    LEDS_LT3593 = lib.kernel.yes;
    LEDS_TCA6507 = lib.kernel.yes;
    LEDS_TLC591XX = lib.kernel.yes;
    LEDS_LM355x = lib.kernel.yes;
    LEDS_IS31FL319X = lib.kernel.yes;
    LEDS_BLINKM = lib.kernel.yes;
    LEDS_BLINKM_MULTICOLOR = lib.kernel.yes;
    LEDS_MLXCPLD = lib.kernel.yes;
    LEDS_MLXREG = lib.kernel.yes;
    LEDS_USER = lib.kernel.yes;
    LEDS_NIC78BX = lib.kernel.yes;
    LEDS_AS3645A = lib.kernel.yes;
    LEDS_LM3601X = lib.kernel.yes;
    LEDS_RT8515 = lib.kernel.yes;
    LEDS_SGM3140 = lib.kernel.yes;
    LEDS_KTD202X = lib.kernel.yes;
    LEDS_LP5812 = lib.kernel.yes;
    LEDS_TRIGGERS = lib.kernel.yes;
    LEDS_TRIGGER_TIMER = lib.kernel.no;
    LEDS_TRIGGER_ONESHOT = lib.kernel.no;
    LEDS_TRIGGER_DISK = lib.kernel.no;
    LEDS_TRIGGER_HEARTBEAT = lib.kernel.no;
    LEDS_TRIGGER_BACKLIGHT = lib.kernel.no;
    LEDS_TRIGGER_ACTIVITY = lib.kernel.no;
    LEDS_TRIGGER_GPIO = lib.kernel.no;
    LEDS_TRIGGER_DEFAULT_ON = lib.kernel.no;
    LEDS_TRIGGER_TRANSIENT = lib.kernel.no;
    LEDS_TRIGGER_CAMERA = lib.kernel.no;
    LEDS_TRIGGER_PANIC = lib.kernel.no;
    LEDS_TRIGGER_NETDEV = lib.kernel.no;
    LEDS_TRIGGER_PATTERN = lib.kernel.no;
    LEDS_TRIGGER_TTY = lib.kernel.no;
    LEDS_TRIGGER_INPUT_EVENTS = lib.kernel.no;
    LEDS_SIEMENS_SIMATIC_IPC = lib.kernel.yes;

    ACCESSIBILITY = lib.kernel.no;

    INFINIBAND = lib.kernel.no;

    EDAC_ATOMIC_SCRUB = lib.kernel.yes;
    EDAC_SUPPORT = lib.kernel.yes;

    RTC_LIB = lib.kernel.yes;
    RTC_MC146818_LIB = lib.kernel.yes;
    RTC_CLASS = lib.kernel.yes;
    RTC_HCTOSYS = lib.kernel.yes;
    RTC_HCTOSYS_DEVICE = lib.kernel.freeform "rtc0";
    RTC_SYSTOHC = lib.kernel.yes;
    RTC_SYSTOHC_DEVICE = lib.kernel.freeform "rtc0";
    RTC_DEBUG = lib.kernel.no;
    RTC_NVMEM = lib.kernel.yes;
    RTC_INTF_SYSFS = lib.kernel.yes;
    RTC_INTF_PROC = lib.kernel.yes;
    RTC_INTF_DEV = lib.kernel.yes;
    RTC_INTF_DEV_UIE_EMUL = lib.kernel.no;
    RTC_DRV_TEST = lib.kernel.no;
    RTC_DRV_ABB5ZES3 = lib.kernel.yes;
    RTC_DRV_ABEOZ9 = lib.kernel.yes;
    RTC_DRV_ABX80X = lib.kernel.yes;
    RTC_DRV_DS1307 = lib.kernel.yes;
    RTC_DRV_DS1307_CENTURY = lib.kernel.yes;
    RTC_DRV_DS1374 = lib.kernel.yes;
    RTC_DRV_DS1374_WDT = lib.kernel.yes;
    RTC_DRV_DS1672 = lib.kernel.yes;
    RTC_DRV_MAX6900 = lib.kernel.yes;
    RTC_DRV_RS5C372 = lib.kernel.yes;
    RTC_DRV_ISL1208 = lib.kernel.yes;
    RTC_DRV_ISL12022 = lib.kernel.yes;
    RTC_DRV_X1205 = lib.kernel.yes;
    RTC_DRV_PCF8523 = lib.kernel.yes;
    RTC_DRV_PCF85363 = lib.kernel.yes;
    RTC_DRV_PCF8563 = lib.kernel.yes;
    RTC_DRV_PCF8583 = lib.kernel.yes;
    RTC_DRV_M41T80 = lib.kernel.yes;
    RTC_DRV_M41T80_WDT = lib.kernel.yes;
    RTC_DRV_BQ32K = lib.kernel.yes;
    RTC_DRV_S35390A = lib.kernel.yes;
    RTC_DRV_FM3130 = lib.kernel.yes;
    RTC_DRV_RX8010 = lib.kernel.yes;
    RTC_DRV_RX8111 = lib.kernel.yes;
    RTC_DRV_RX8581 = lib.kernel.yes;
    RTC_DRV_RX8025 = lib.kernel.yes;
    RTC_DRV_EM3027 = lib.kernel.yes;
    RTC_DRV_RV3028 = lib.kernel.yes;
    RTC_DRV_RV3032 = lib.kernel.yes;
    RTC_DRV_RV8803 = lib.kernel.yes;
    RTC_DRV_SD2405AL = lib.kernel.yes;
    RTC_DRV_SD3078 = lib.kernel.yes;
    RTC_I2C_AND_SPI = lib.kernel.yes;
    RTC_DRV_DS3232 = lib.kernel.yes;
    RTC_DRV_DS3232_HWMON = lib.kernel.yes;
    RTC_DRV_PCF2127 = lib.kernel.yes;
    RTC_DRV_PCF85063 = lib.kernel.yes;
    RTC_DRV_RV3029C2 = lib.kernel.yes;
    RTC_DRV_RV3029_HWMON = lib.kernel.yes;
    RTC_DRV_RX6110 = lib.kernel.yes;
    RTC_DRV_CMOS = lib.kernel.yes;
    RTC_DRV_DS1286 = lib.kernel.yes;
    RTC_DRV_DS1511 = lib.kernel.yes;
    RTC_DRV_DS1553 = lib.kernel.yes;
    RTC_DRV_DS1685_FAMILY = lib.kernel.yes;
    RTC_DRV_DS1685 = lib.kernel.yes;
    RTC_DRV_DS1689 = lib.kernel.no;
    RTC_DRV_DS17285 = lib.kernel.no;
    RTC_DRV_DS17485 = lib.kernel.no;
    RTC_DRV_DS17885 = lib.kernel.no;
    RTC_DRV_DS1742 = lib.kernel.yes;
    RTC_DRV_DS2404 = lib.kernel.yes;
    RTC_DRV_STK17TA8 = lib.kernel.yes;
    RTC_DRV_M48T86 = lib.kernel.yes;
    RTC_DRV_M48T35 = lib.kernel.yes;
    RTC_DRV_M48T59 = lib.kernel.yes;
    RTC_DRV_MSM6242 = lib.kernel.yes;
    RTC_DRV_RP5C01 = lib.kernel.yes;
    RTC_DRV_FTRTC010 = lib.kernel.yes;
    RTC_DRV_GOLDFISH = lib.kernel.yes;
    RTC_DRV_HID_SENSOR_TIME = lib.kernel.no;

    DMADEVICES = lib.kernel.yes;
    DMADEVICES_DEBUG = lib.kernel.no;

    DMA_ENGINE = lib.kernel.yes;
    DMA_VIRTUAL_CHANNELS = lib.kernel.yes;
    DMA_ACPI = lib.kernel.yes;

    ALTERA_MSGDMA = lib.kernel.yes;

    INTEL_IDMA64 = lib.kernel.yes;
    INTEL_IDXD_BUS = lib.kernel.yes;
    INTEL_IDXD = lib.kernel.yes;
    INTEL_IDXD_COMPAT = lib.kernel.no;
    INTEL_IDXD_SVM = lib.kernel.no;
    INTEL_IDXD_PERFMON = lib.kernel.no;
    INTEL_IOATDMA = lib.kernel.yes;

    PLX_DMA = lib.kernel.yes;

    SWITCHTEC_DMA = lib.kernel.yes;

    XILINX_DMA = lib.kernel.yes;
    XILINX_XDMA = lib.kernel.yes;

    AMD_AE4DMA = lib.kernel.yes;
    AMD_PTDMA = lib.kernel.yes;
    AMD_QDMA = lib.kernel.yes;

    QCOM_HIDMA_MGMT = lib.kernel.yes;
    QCOM_HIDMA = lib.kernel.yes;

    DW_DMAC_CORE = lib.kernel.yes;
    DW_DMAC = lib.kernel.yes;
    DW_DMAC_PCI = lib.kernel.yes;
    DW_EDMA = lib.kernel.yes;
    DW_EDMA_PCIE = lib.kernel.yes;

    HSU_DMA = lib.kernel.yes;

    SF_PDMA = lib.kernel.yes;

    INTEL_LDMA = lib.kernel.no;

    ASYNC_TX_DMA = lib.kernel.yes;

    DMATEST = lib.kernel.no;

    DMA_ENGINE_RAID = lib.kernel.yes;

    SYNC_FILE = lib.kernel.yes;

    SW_SYNC = lib.kernel.yes;

    UDMABUF = lib.kernel.yes;

    DMABUF_DEBUG = lib.kernel.no;
    DMABUF_HEAPS = lib.kernel.no;

    DCA = lib.kernel.yes;

    UIO = lib.kernel.no;

    VFIO = lib.kernel.no;

    IRQ_BYPASS_MANAGER = lib.kernel.yes;

    VIRT_DRIVERS = lib.kernel.yes;

    VMGENID = lib.kernel.yes;

    VBOXGUEST = lib.kernel.yes;

    NITRO_ENCLAVES = lib.kernel.yes;

    EFI_SECRET = lib.kernel.yes;

    TSM = lib.kernel.yes;

    VIRTIO_ANCHOR = lib.kernel.yes;
    VIRTIO = lib.kernel.yes;
    VIRTIO_PCI_LIB = lib.kernel.yes;
    VIRTIO_PCI_LIB_LEGACY = lib.kernel.yes;
    VIRTIO_MENU = lib.kernel.yes;
    VIRTIO_PCI = lib.kernel.yes;
    VIRTIO_PCI_ADMIN_LEGACY = lib.kernel.yes;
    VIRTIO_PCI_LEGACY = lib.kernel.yes;
    VIRTIO_BALLOON = lib.kernel.yes;
    VIRTIO_INPUT = lib.kernel.yes;
    VIRTIO_MMIO = lib.kernel.no;
    VIRTIO_DMA_SHARED_BUFFER = lib.kernel.yes;
    VIRTIO_DEBUG = lib.kernel.no;
    VIRTIO_RTC = lib.kernel.yes;
    VIRTIO_RTC_PTP = lib.kernel.yes;
    VIRTIO_RTC_CLASS = lib.kernel.yes;

    VDPA = lib.kernel.no;

    VHOST_TASK = lib.kernel.yes;
    VHOST_MENU = lib.kernel.yes;
    VHOST_NET = lib.kernel.no;
    VHOST_CROSS_ENDIAN_LEGACY = lib.kernel.no;
    VHOST_ENABLE_FORK_OWNER_CONTROL = lib.kernel.yes;

    HYPERV = lib.kernel.yes;
    HYPERV_VTL_MODE = lib.kernel.yes;
    HYPERV_TIMER = lib.kernel.yes;
    HYPERV_UTILS = lib.kernel.yes;
    HYPERV_BALLOON = lib.kernel.yes;
    HYPERV_VMBUS = lib.kernel.yes;

    GREYBUS = lib.kernel.no;

    COMEDI = lib.kernel.no;

    GPIB = lib.kernel.no;

    STAGING = lib.kernel.no;

    GOLDFISH = lib.kernel.no;

    CHROME_PLATFORMS = lib.kernel.no;

    MELLANOX_PLATFORM = lib.kernel.no;

    SURFACE_PLATFORMS = lib.kernel.yes;
    SURFACE_3_POWER_OPREGION = lib.kernel.no;
    SURFACE_GPE = lib.kernel.no;
    SURFACE_HOTPLUG = lib.kernel.no;
    SURFACE_PRO3_BUTTON = lib.kernel.no;

    X86_PLATFORM_DEVICES = lib.kernel.yes;

    WMI_BMOF = lib.kernel.yes;

    HUAWEI_WMI = lib.kernel.yes;

    X86_PLATFORM_DRIVERS_UNIWILL = lib.kernel.yes;

    UNIWILL_LAPTOP = lib.kernel.module;

    MXM_WMI = lib.kernel.yes;

    NVIDIA_WMI_EC_BACKLIGHT = lib.kernel.yes;

    XIAOMI_WMI = lib.kernel.yes;

    REDMI_WMI = lib.kernel.yes;

    GIGABYTE_WMI = lib.kernel.yes;

    BITLAND_MIFS_WMI = lib.kernel.yes;

    ACERHDF = lib.kernel.yes;

    ACER_WIRELESS = lib.kernel.yes;
    ACER_WMI = lib.kernel.yes;

    AMD_HSMP = lib.kernel.yes;
    AMD_HSMP_ACPI = lib.kernel.yes;
    AMD_HSMP_PLAT = lib.kernel.yes;
    AMD_PMC = lib.kernel.yes;
    AMD_MP2_STB = lib.kernel.yes;
    AMD_HFI = lib.kernel.yes;
    AMD_3D_VCACHE = lib.kernel.yes;
    AMD_WBRF = lib.kernel.yes;
    AMD_ISP_PLATFORM = lib.kernel.yes;

    ADV_SWBUTTON = lib.kernel.yes;

    APPLE_GMUX = lib.kernel.yes;

    ASUS_LAPTOP = lib.kernel.yes;
    ASUS_WIRELESS = lib.kernel.yes;
    ASUS_ARMOURY = lib.kernel.yes;
    ASUS_WMI = lib.kernel.yes;
    ASUS_WMI_DEPRECATED_ATTRS = lib.kernel.yes;
    ASUS_NB_WMI = lib.kernel.yes;
    ASUS_TF103C_DOCK = lib.kernel.yes;

    AYANEO_EC = lib.kernel.yes;

    EEEPC_LAPTOP = lib.kernel.yes;
    EEEPC_WMI = lib.kernel.yes;

    X86_PLATFORM_DRIVERS_DELL = lib.kernel.yes;

    ALIENWARE_WMI = lib.kernel.module;
    ALIENWARE_WMI_LEGACY = lib.kernel.yes;
    ALIENWARE_WMI_WMAX = lib.kernel.yes;

    DCDBAS = lib.kernel.module;

    DELL_LAPTOP = lib.kernel.module;
    DELL_RBU = lib.kernel.module;
    DELL_RBTN = lib.kernel.module;
    DELL_PC = lib.kernel.module;
    DELL_SMBIOS = lib.kernel.module;
    DELL_SMBIOS_WMI = lib.kernel.yes;
    DELL_SMBIOS_SMM = lib.kernel.yes;
    DELL_SMO8800 = lib.kernel.module;
    DELL_WMI = lib.kernel.module;
    DELL_WMI_PRIVACY = lib.kernel.no;
    DELL_WMI_AIO = lib.kernel.module;
    DELL_WMI_DESCRIPTOR = lib.kernel.module;
    DELL_WMI_DDV = lib.kernel.module;
    DELL_WMI_LED = lib.kernel.module;
    DELL_WMI_SYSMAN = lib.kernel.module;
    DELL_DW5826E_RESET = lib.kernel.no;

    AMILO_RFKILL = lib.kernel.yes;

    FUJITSU_LAPTOP = lib.kernel.yes;
    FUJITSU_TABLET = lib.kernel.yes;

    GPD_POCKET_FAN = lib.kernel.yes;

    X86_PLATFORM_DRIVERS_HP = lib.kernel.yes;

    HP_ACCEL = lib.kernel.module;
    HP_WMI = lib.kernel.module;
    HP_BIOSCFG = lib.kernel.module;

    WIRELESS_HOTKEY = lib.kernel.yes;

    IBM_RTL = lib.kernel.yes;

    SENSORS_HDAPS = lib.kernel.yes;

    INTEL_ATOMISP2_PDX86 = lib.kernel.yes;
    INTEL_ATOMISP2_LED = lib.kernel.yes;
    INTEL_IFS = lib.kernel.yes;
    INTEL_SAR_INT1092 = lib.kernel.yes;
    INTEL_PMT_TELEMETRY = lib.kernel.no;
    INTEL_PMT_CRASHLOG = lib.kernel.no;
    INTEL_PMT_DISCOVERY = lib.kernel.no;
    INTEL_SPEED_SELECT_INTERFACE = lib.kernel.no;
    INTEL_WMI = lib.kernel.yes;
    INTEL_WMI_SBL_FW_UPDATE = lib.kernel.yes;
    INTEL_WMI_THUNDERBOLT = lib.kernel.yes;
    INTEL_UNCORE_FREQ_CONTROL = lib.kernel.no;
    INTEL_HID_EVENT = lib.kernel.yes;
    INTEL_VBTN = lib.kernel.yes;
    INTEL_EHL_PSE_IO = lib.kernel.yes;
    INTEL_INT0002_VGPIO = lib.kernel.yes;
    INTEL_OAKTRAIL = lib.kernel.yes;
    INTEL_ISHTP_ECLITE = lib.kernel.no;
    INTEL_PUNIT_IPC = lib.kernel.yes;
    INTEL_RST = lib.kernel.yes;
    INTEL_SDSI = lib.kernel.no;
    INTEL_SMARTCONNECT = lib.kernel.yes;
    INTEL_TPMI = lib.kernel.no;
    INTEL_TURBO_MAX_3 = lib.kernel.yes;
    INTEL_VSEC = lib.kernel.yes;

    IDEAPAD_LAPTOP = lib.kernel.yes;

    LENOVO_WMI_HOTKEY_UTILITIES = lib.kernel.yes;
    LENOVO_WMI_CAMERA = lib.kernel.yes;
    LENOVO_YMC = lib.kernel.yes;

    THINKPAD_ACPI = lib.kernel.yes;
    THINKPAD_ACPI_ALSA_SUPPORT = lib.kernel.yes;
    THINKPAD_ACPI_DEBUGFACILITIES = lib.kernel.no;
    THINKPAD_ACPI_DEBUG = lib.kernel.no;
    THINKPAD_ACPI_UNSAFE_LEDS = lib.kernel.no;
    THINKPAD_ACPI_VIDEO = lib.kernel.yes;
    THINKPAD_ACPI_HOTKEY_POLL = lib.kernel.yes;
    THINKPAD_LMI = lib.kernel.yes;

    YOGABOOK = lib.kernel.yes;

    LENOVO_WMI_CAPDATA = lib.kernel.yes;
    LENOVO_WMI_EVENTS = lib.kernel.yes;
    LENOVO_WMI_HELPERS = lib.kernel.yes;
    LENOVO_WMI_GAMEZONE = lib.kernel.yes;
    LENOVO_WMI_TUNING = lib.kernel.yes;

    ACPI_QUICKSTART = lib.kernel.yes;

    MEEGOPAD_ANX7428 = lib.kernel.yes;

    MSI_EC = lib.kernel.yes;
    MSI_LAPTOP = lib.kernel.yes;
    MSI_WMI = lib.kernel.yes;
    MSI_WMI_PLATFORM = lib.kernel.yes;

    PCENGINES_APU2 = lib.kernel.yes;

    PORTWELL_EC = lib.kernel.yes;

    BARCO_P50_GPIO = lib.kernel.yes;

    SAMSUNG_GALAXYBOOK = lib.kernel.yes;
    SAMSUNG_LAPTOP = lib.kernel.yes;
    SAMSUNG_Q10 = lib.kernel.yes;

    ACPI_TOSHIBA = lib.kernel.no;

    TOSHIBA_BT_RFKILL = lib.kernel.yes;
    TOSHIBA_HAPS = lib.kernel.yes;
    TOSHIBA_WMI = lib.kernel.yes;

    ACPI_CMPC = lib.kernel.yes;

    COMPAL_LAPTOP = lib.kernel.yes;

    LG_LAPTOP = lib.kernel.yes;

    PANASONIC_LAPTOP = lib.kernel.yes;

    SONY_LAPTOP = lib.kernel.yes;

    SONYPI_COMPAT = lib.kernel.yes;

    SYSTEM76_ACPI = lib.kernel.yes;

    TOPSTAR_LAPTOP = lib.kernel.yes;

    SERIAL_MULTI_INSTANTIATE = lib.kernel.yes;

    TOUCHSCREEN_DMI = lib.kernel.yes;

    INSPUR_PLATFORM_PROFILE = lib.kernel.yes;

    DASHARO_ACPI = lib.kernel.yes;

    FW_ATTR_CLASS = lib.kernel.yes;

    INTEL_IPS = lib.kernel.yes;
    INTEL_SCU_IPC = lib.kernel.yes;
    INTEL_SCU = lib.kernel.yes;
    INTEL_SCU_PCI = lib.kernel.yes;
    INTEL_SCU_PLATFORM = lib.kernel.yes;
    INTEL_SCU_IPC_UTIL = lib.kernel.yes;

    SIEMENS_SIMATIC_IPC = lib.kernel.yes;
    SIEMENS_SIMATIC_IPC_BATT = lib.kernel.yes;

    SILICOM_PLATFORM = lib.kernel.yes;

    WINMATE_FM07_KEYS = lib.kernel.yes;

    OXP_EC = lib.kernel.yes;

    TUXEDO_NB04_WMI_AB = lib.kernel.yes;

    P2SB = lib.kernel.yes;

    ACPI_WMI = lib.kernel.yes;
    ACPI_WMI_LEGACY_DEVICE_NAMES = lib.kernel.no;

    COMMON_CLK = lib.kernel.no;

    HWSPINLOCK = lib.kernel.no;

    CLKEVT_I8253 = lib.kernel.yes;

    I8253_LOCK = lib.kernel.yes;

    CLKBLD_I8253 = lib.kernel.yes;

    MAILBOX = lib.kernel.yes;

    PCC = lib.kernel.yes;

    ALTERA_MBOX = lib.kernel.no;

    IOMMU_IOVA = lib.kernel.yes;
    IOMMU_API = lib.kernel.yes;
    IOMMU_SUPPORT = lib.kernel.yes;
    IOMMU_DEBUGFS = lib.kernel.no;
    IOMMU_DEFAULT_DMA_STRICT = lib.kernel.no;
    IOMMU_DEFAULT_DMA_LAZY = lib.kernel.yes;
    IOMMU_DEFAULT_PASSTHROUGH = lib.kernel.no;
    IOMMU_DMA = lib.kernel.yes;
    IOMMU_SVA = lib.kernel.yes;
    IOMMU_IOPF = lib.kernel.yes;

    AMD_IOMMU = lib.kernel.yes;

    DMAR_TABLE = lib.kernel.yes;

    INTEL_IOMMU = lib.kernel.yes;
    INTEL_IOMMU_SVM = lib.kernel.yes;
    INTEL_IOMMU_DEFAULT_ON = lib.kernel.yes;
    INTEL_IOMMU_SCALABLE_MODE_DEFAULT_ON = lib.kernel.yes;
    INTEL_IOMMU_PERF_EVENTS = lib.kernel.yes;

    IOMMUFD = lib.kernel.no;

    IRQ_REMAP = lib.kernel.yes;

    VIRTIO_IOMMU = lib.kernel.yes;

    GENERIC_PT = lib.kernel.yes;

    DEBUG_GENERIC_PT = lib.kernel.no;

    IOMMU_PT = lib.kernel.yes;
    IOMMU_PT_AMDV1 = lib.kernel.yes;
    IOMMU_PT_VTDSS = lib.kernel.yes;
    IOMMU_PT_RISCV64 = lib.kernel.no;
    IOMMU_PT_X86_64 = lib.kernel.yes;

    REMOTEPROC = lib.kernel.no;

    RPMSG_QCOM_GLINK_RPM = lib.kernel.no;
    RPMSG_VIRTIO = lib.kernel.no;

    WPCM450_SOC = lib.kernel.yes;

    SOC_TI = lib.kernel.yes;

    PM_DEVFREQ = lib.kernel.yes;

    DEVFREQ_GOV_SIMPLE_ONDEMAND = lib.kernel.yes;
    DEVFREQ_GOV_PERFORMANCE = lib.kernel.yes;
    DEVFREQ_GOV_POWERSAVE = lib.kernel.yes;
    DEVFREQ_GOV_USERSPACE = lib.kernel.yes;
    DEVFREQ_GOV_PASSIVE = lib.kernel.yes;

    PM_DEVFREQ_EVENT = lib.kernel.yes;

    EXTCON = lib.kernel.yes;
    EXTCON_ADC_JACK = lib.kernel.no;
    EXTCON_FSA9480 = lib.kernel.yes;
    EXTCON_GPIO = lib.kernel.yes;
    EXTCON_INTEL_INT3496 = lib.kernel.yes;
    EXTCON_LC824206XA = lib.kernel.yes;
    EXTCON_MAX3355 = lib.kernel.yes;
    EXTCON_MAX14526 = lib.kernel.yes;
    EXTCON_PTN5150 = lib.kernel.yes;
    EXTCON_RT8973A = lib.kernel.yes;
    EXTCON_SM5502 = lib.kernel.yes;
    EXTCON_USB_GPIO = lib.kernel.yes;
    EXTCON_USBC_TUSB320 = lib.kernel.yes;

    MEMORY = lib.kernel.yes;

    IIO = lib.kernel.yes;
    IIO_BUFFER = lib.kernel.no;
    IIO_CONFIGFS = lib.kernel.no;
    IIO_TRIGGER = lib.kernel.no;
    IIO_SW_DEVICE = lib.kernel.no;
    IIO_SW_TRIGGER = lib.kernel.no;
    IIO_TRIGGERED_EVENT = lib.kernel.no;

    ADXL313_I2C = lib.kernel.no;

    ADXL355_I2C = lib.kernel.no;

    ADXL367_I2C = lib.kernel.no;

    ADXL372_I2C = lib.kernel.no;

    ADXL380_I2C = lib.kernel.no;

    BMA220 = lib.kernel.no;

    BMA400 = lib.kernel.no;

    BMC150_ACCEL = lib.kernel.no;

    BMI088_ACCEL = lib.kernel.no;

    DA280 = lib.kernel.no;

    DA311 = lib.kernel.no;

    DMARD06 = lib.kernel.no;

    DMARD09 = lib.kernel.no;

    DMARD10 = lib.kernel.no;

    FXLS8962AF_I2C = lib.kernel.no;

    HID_SENSOR_ACCEL_3D = lib.kernel.no;

    IIO_ST_ACCEL_3AXIS = lib.kernel.no;
    IIO_KX022A_I2C = lib.kernel.no;

    KXSD9 = lib.kernel.no;

    KXCJK1013 = lib.kernel.no;

    MC3230 = lib.kernel.no;

    MMA7455_I2C = lib.kernel.no;

    MMA7660 = lib.kernel.no;

    MMA8452 = lib.kernel.no;

    MMA9551 = lib.kernel.no;

    MMA9553 = lib.kernel.no;

    MSA311 = lib.kernel.no;

    MXC4005 = lib.kernel.no;

    MXC6255 = lib.kernel.no;

    STK8312 = lib.kernel.no;

    STK8BA50 = lib.kernel.no;

    AD7091R5 = lib.kernel.no;

    AD7291 = lib.kernel.no;

    AD7606_IFACE_PARALLEL = lib.kernel.no;

    AD799X = lib.kernel.no;

    ENVELOPE_DETECTOR = lib.kernel.no;

    GEHC_PMC_ADC = lib.kernel.no;

    HX711 = lib.kernel.no;

    INA2XX_ADC = lib.kernel.no;

    LTC2309 = lib.kernel.no;

    LTC2471 = lib.kernel.no;

    LTC2485 = lib.kernel.no;

    LTC2497 = lib.kernel.no;

    MAX1363 = lib.kernel.no;

    MAX34408 = lib.kernel.no;

    MAX9611 = lib.kernel.no;

    MCP3422 = lib.kernel.no;

    NAU7802 = lib.kernel.no;

    NCT7201 = lib.kernel.no;

    PAC1921 = lib.kernel.no;

    PAC1934 = lib.kernel.no;

    ROHM_BD79124 = lib.kernel.no;

    RICHTEK_RTQ6056 = lib.kernel.no;

    SD_ADC_MODULATOR = lib.kernel.no;

    TI_ADC081C = lib.kernel.no;
    TI_ADS1015 = lib.kernel.no;
    TI_ADS1100 = lib.kernel.no;
    TI_ADS1119 = lib.kernel.no;
    TI_ADS7138 = lib.kernel.no;
    TI_ADS7924 = lib.kernel.no;

    VF610_ADC = lib.kernel.no;

    XILINX_XADC = lib.kernel.no;

    IIO_RESCALE = lib.kernel.no;

    ADL8113 = lib.kernel.no;

    HMC425 = lib.kernel.no;

    AD7150 = lib.kernel.no;

    AD7746 = lib.kernel.no;

    AOSONG_AGS02MA = lib.kernel.no;

    ATLAS_PH_SENSOR = lib.kernel.no;
    ATLAS_EZO_SENSOR = lib.kernel.no;

    BME680 = lib.kernel.no;

    CCS811 = lib.kernel.no;

    ENS160 = lib.kernel.no;

    IAQCORE = lib.kernel.no;

    SCD30_CORE = lib.kernel.no;

    SCD4X = lib.kernel.no;

    SEN0322 = lib.kernel.no;

    SENSIRION_SGP30 = lib.kernel.no;
    SENSIRION_SGP40 = lib.kernel.no;

    SPS30_I2C = lib.kernel.no;

    SENSEAIR_SUNRISE_CO2 = lib.kernel.no;

    VZ89X = lib.kernel.no;

    HID_SENSOR_IIO_COMMON = lib.kernel.no;

    AD3552R_HS = lib.kernel.no;

    AD5064 = lib.kernel.no;

    AD5380 = lib.kernel.no;

    AD5446_I2C = lib.kernel.no;

    AD5593R = lib.kernel.no;

    AD5696_I2C = lib.kernel.no;

    DPOT_DAC = lib.kernel.no;

    DS4424 = lib.kernel.no;

    M62332 = lib.kernel.no;

    MAX517 = lib.kernel.no;

    MAX5821 = lib.kernel.no;

    MCP4725 = lib.kernel.no;

    MCP4728 = lib.kernel.no;

    MCP47FEB02 = lib.kernel.no;

    TI_DAC5571 = lib.kernel.no;

    VF610_DAC = lib.kernel.no;

    ADMFM2000 = lib.kernel.no;

    BMG160 = lib.kernel.no;

    FXAS21002C = lib.kernel.no;

    HID_SENSOR_GYRO_3D = lib.kernel.no;

    MPU3050_I2C = lib.kernel.no;

    IIO_ST_GYRO_3AXIS = lib.kernel.no;

    ITG3200 = lib.kernel.no;

    AFE4404 = lib.kernel.no;

    MAX30100 = lib.kernel.no;

    MAX30102 = lib.kernel.no;

    AM2315 = lib.kernel.no;

    DHT11 = lib.kernel.no;

    ENS210 = lib.kernel.no;

    HDC100X = lib.kernel.no;

    HDC2010 = lib.kernel.no;

    HDC3020 = lib.kernel.no;

    HID_SENSOR_HUMIDITY = lib.kernel.no;

    HTS221 = lib.kernel.no;

    HTU21 = lib.kernel.no;

    SI7005 = lib.kernel.no;

    SI7020 = lib.kernel.no;

    BMI160_I2C = lib.kernel.no;

    BMI270_I2C = lib.kernel.no;

    BMI323_I2C = lib.kernel.no;

    BOSCH_BNO055_I2C = lib.kernel.no;

    FXOS8700_I2C = lib.kernel.no;

    KMX61 = lib.kernel.no;

    INV_ICM42600_I2C = lib.kernel.no;
    INV_ICM45600_I2C = lib.kernel.no;
    INV_MPU6050_I2C = lib.kernel.no;

    SMI330_I2C = lib.kernel.no;

    IIO_ST_LSM6DSX = lib.kernel.no;
    IIO_ST_LSM9DS0 = lib.kernel.no;

    ACPI_ALS = lib.kernel.no;

    ADJD_S311 = lib.kernel.no;

    ADUX1020 = lib.kernel.no;

    AL3000A = lib.kernel.no;

    AL3010 = lib.kernel.no;

    AL3320A = lib.kernel.no;

    APDS9160 = lib.kernel.no;

    APDS9300 = lib.kernel.no;

    APDS9306 = lib.kernel.no;

    APDS9960 = lib.kernel.no;

    APDS9999 = lib.kernel.no;

    AS73211 = lib.kernel.no;

    BH1745 = lib.kernel.no;

    BH1750 = lib.kernel.no;

    BH1780 = lib.kernel.no;

    CM32181 = lib.kernel.no;

    CM3232 = lib.kernel.no;

    CM3323 = lib.kernel.no;

    CM3605 = lib.kernel.no;

    CM36651 = lib.kernel.no;

    GP2AP002 = lib.kernel.no;

    GP2AP020A00F = lib.kernel.no;

    SENSORS_ISL29018 = lib.kernel.no;
    SENSORS_ISL29028 = lib.kernel.no;

    ISL29125 = lib.kernel.no;

    ISL76682 = lib.kernel.no;

    HID_SENSOR_ALS = lib.kernel.no;
    HID_SENSOR_PROX = lib.kernel.no;

    JSA1212 = lib.kernel.no;

    ROHM_BU27034 = lib.kernel.no;

    RPR0521 = lib.kernel.no;

    LTR390 = lib.kernel.no;

    LTR501 = lib.kernel.no;

    LTRF216A = lib.kernel.no;

    LV0104CS = lib.kernel.no;

    MAX44000 = lib.kernel.no;

    MAX44009 = lib.kernel.no;

    NOA1305 = lib.kernel.no;

    OPT3001 = lib.kernel.no;

    OPT4001 = lib.kernel.no;

    OPT4060 = lib.kernel.no;

    PA12203001 = lib.kernel.no;

    SI1133 = lib.kernel.no;

    SI1145 = lib.kernel.no;

    STK3310 = lib.kernel.no;

    ST_UVIS25 = lib.kernel.no;

    TCS3414 = lib.kernel.no;

    TCS3472 = lib.kernel.no;

    SENSORS_TSL2563 = lib.kernel.no;

    TSL2583 = lib.kernel.no;

    TSL2591 = lib.kernel.no;

    TSL2772 = lib.kernel.no;

    TSL4531 = lib.kernel.no;

    US5182D = lib.kernel.no;

    VCNL4000 = lib.kernel.no;

    VCNL4035 = lib.kernel.no;

    VEML3235 = lib.kernel.no;

    VEML3328 = lib.kernel.no;

    VEML6030 = lib.kernel.no;

    VEML6040 = lib.kernel.no;

    VEML6046X00 = lib.kernel.no;

    VEML6070 = lib.kernel.no;

    VEML6075 = lib.kernel.no;

    VL6180 = lib.kernel.no;

    ZOPT2201 = lib.kernel.no;

    AK8974 = lib.kernel.no;

    AK8975 = lib.kernel.no;

    AK09911 = lib.kernel.no;

    ALS31300 = lib.kernel.no;

    BMC150_MAGN_I2C = lib.kernel.no;

    MAG3110 = lib.kernel.no;

    HID_SENSOR_MAGNETOMETER_3D = lib.kernel.no;

    MMC35240 = lib.kernel.no;

    MMC5633 = lib.kernel.no;

    MMC5983 = lib.kernel.no;

    IIO_ST_MAGN_3AXIS = lib.kernel.no;

    INFINEON_TLV493D = lib.kernel.no;

    SENSORS_HMC5843_I2C = lib.kernel.no;
    SENSORS_RM3100_I2C = lib.kernel.no;

    SI7210 = lib.kernel.no;

    TI_TMAG5273 = lib.kernel.no;

    YAMAHA_YAS530 = lib.kernel.no;

    IIO_MUX = lib.kernel.no;

    HID_SENSOR_INCLINOMETER_3D = lib.kernel.no;
    HID_SENSOR_DEVICE_ROTATION = lib.kernel.no;
    HID_SENSOR_CUSTOM_INTEL_HINGE = lib.kernel.no;

    AD5110 = lib.kernel.no;

    AD5272 = lib.kernel.no;

    DS1803 = lib.kernel.no;

    MAX5432 = lib.kernel.no;

    MCP4018 = lib.kernel.no;

    MCP4531 = lib.kernel.no;

    TPL0102 = lib.kernel.no;

    LMP91000 = lib.kernel.no;

    ABP060MG = lib.kernel.no;

    ABP2030PA_I2C = lib.kernel.no;

    ROHM_BM1390 = lib.kernel.no;

    BMP280 = lib.kernel.no;

    DLHL60D = lib.kernel.no;

    DPS310 = lib.kernel.no;

    HID_SENSOR_PRESS = lib.kernel.no;

    HP03 = lib.kernel.no;

    HSC030PA = lib.kernel.no;

    ICP10100 = lib.kernel.no;

    MPL115_I2C = lib.kernel.no;

    MPL3115 = lib.kernel.no;

    MPRLS0025PA_I2C = lib.kernel.no;

    MS5611 = lib.kernel.no;

    MS5637 = lib.kernel.no;

    SDP500 = lib.kernel.no;

    IIO_ST_PRESS = lib.kernel.no;

    T5403 = lib.kernel.no;

    HP206C = lib.kernel.no;

    ZPA2326 = lib.kernel.no;

    ADP810 = lib.kernel.no;

    D3323AA = lib.kernel.no;

    HX9023S = lib.kernel.no;

    IRSD200 = lib.kernel.no;

    ISL29501 = lib.kernel.no;

    LIDAR_LITE_V2 = lib.kernel.no;

    MB1232 = lib.kernel.no;

    PING = lib.kernel.no;

    RFD77402 = lib.kernel.no;

    SRF04 = lib.kernel.no;

    SX9310 = lib.kernel.no;

    SX9324 = lib.kernel.no;

    SX9360 = lib.kernel.no;

    SX9500 = lib.kernel.no;

    SRF08 = lib.kernel.no;

    VCNL3020 = lib.kernel.no;

    VL53L0X_I2C = lib.kernel.no;

    VL53L1X_I2C = lib.kernel.no;

    AW96103 = lib.kernel.no;

    HID_SENSOR_TEMP = lib.kernel.no;

    MLX90614 = lib.kernel.no;

    MLX90632 = lib.kernel.no;

    MLX90635 = lib.kernel.no;

    TMP006 = lib.kernel.no;

    TMP007 = lib.kernel.no;

    TMP117 = lib.kernel.no;

    TSYS01 = lib.kernel.no;

    TSYS02D = lib.kernel.no;

    MAX30208 = lib.kernel.no;

    MCP9600 = lib.kernel.no;

    NTB = lib.kernel.no;

    PWM = lib.kernel.no;

    IRQ_MSI_LIB = lib.kernel.yes;

    IPACK_BUS = lib.kernel.no;

    RESET_CONTROLLER = lib.kernel.yes;
    RESET_GPIO = lib.kernel.no;
    RESET_SIMPLE = lib.kernel.no;
    RESET_TI_SYSCON = lib.kernel.no;
    RESET_TI_TPS380X = lib.kernel.no;

    GENERIC_PHY = lib.kernel.yes;

    PHY_CAN_TRANSCEIVER = lib.kernel.no;
    PHY_GOOGLE_USB = lib.kernel.no;

    USB_LGM_PHY = lib.kernel.no;

    BCM_KONA_USB2_PHY = lib.kernel.no;

    PHY_INTEL_LGM_EMMC = lib.kernel.no;
    PHY_PXA_28NM_HSIC = lib.kernel.no;
    PHY_PXA_28NM_USB2 = lib.kernel.no;
    PHY_CPCAP_USB = lib.kernel.no;
    PHY_QCOM_USB_HS = lib.kernel.no;
    PHY_QCOM_USB_HSIC = lib.kernel.no;
    PHY_SAMSUNG_USB2 = lib.kernel.no;
    PHY_TUSB1210 = lib.kernel.no;

    POWERCAP = lib.kernel.yes;

    INTEL_RAPL = lib.kernel.no;

    IDLE_INJECT = lib.kernel.no;

    MCB = lib.kernel.no;

    DWC_PCIE_PMU = lib.kernel.no;

    CXL_PMU = lib.kernel.no;

    RAS = lib.kernel.no;

    USB4 = lib.kernel.yes;
    USB4_CONFIGFS = lib.kernel.yes;
    USB4_DEBUGFS_WRITE = lib.kernel.no;
    USB4_DMA_TEST = lib.kernel.no;
    USB4_STREAM = lib.kernel.no;

    ANDROID_BINDER_IPC = lib.kernel.no;

    LIBNVDIMM = lib.kernel.no;

    DAX = lib.kernel.no;

    NVMEM = lib.kernel.yes;
    NVMEM_SYSFS = lib.kernel.yes;
    NVMEM_LAYOUTS = lib.kernel.no;
    NVMEM_RMEM = lib.kernel.no;

    STM = lib.kernel.no;

    INTEL_TH = lib.kernel.no;

    FPGA = lib.kernel.no;

    TEE = lib.kernel.yes;

    MUX_CORE = lib.kernel.no;

    PM_OPP = lib.kernel.yes;

    SIOX = lib.kernel.no;

    SLIMBUS = lib.kernel.no;

    INTERCONNECT = lib.kernel.yes;

    COUNTER = lib.kernel.no;

    MOST = lib.kernel.no;

    PECI = lib.kernel.no;

    HTE = lib.kernel.no;

    DCACHE_WORD_ACCESS = lib.kernel.yes;

    VALIDATE_FS_PARSER = lib.kernel.no;

    FS_IOMAP = lib.kernel.yes;
    FS_STACK = lib.kernel.yes;

    BUFFER_HEAD = lib.kernel.yes;

    LEGACY_DIRECT_IO = lib.kernel.yes;

    EXT2_FS = lib.kernel.no;

    EXT4_FS = lib.kernel.yes;
    EXT4_USE_FOR_EXT2 = lib.kernel.yes;
    EXT4_FS_POSIX_ACL = lib.kernel.yes;
    EXT4_FS_SECURITY = lib.kernel.yes;
    EXT4_DEBUG = lib.kernel.no;

    JBD2 = lib.kernel.yes;
    JBD2_DEBUG = lib.kernel.no;

    FS_MBCACHE = lib.kernel.yes;

    JFS_FS = lib.kernel.no;

    XFS_FS = lib.kernel.no;
    XFS_SUPPORT_V4 = lib.kernel.no;
    XFS_SUPPORT_ASCII_CI = lib.kernel.no;
    XFS_QUOTA = lib.kernel.no;
    XFS_POSIX_ACL = lib.kernel.no;
    XFS_RT = lib.kernel.no;
    XFS_DRAIN_INTENTS = lib.kernel.no;
    XFS_LIVE_HOOKS = lib.kernel.no;
    XFS_MEMORY_BUFS = lib.kernel.no;
    XFS_BTREE_IN_MEM = lib.kernel.no;
    XFS_ONLINE_SCRUB = lib.kernel.no;
    XFS_ONLINE_SCRUB_STATS = lib.kernel.no;
    XFS_ONLINE_REPAIR = lib.kernel.no;
    XFS_WARN = lib.kernel.no;
    XFS_DEBUG = lib.kernel.no;

    GFS2_FS = lib.kernel.no;

    OCFS2_FS = lib.kernel.no;

    BTRFS_FS = lib.kernel.yes;
    BTRFS_FS_POSIX_ACL = lib.kernel.yes;
    BTRFS_FS_RUN_SANITY_TESTS = lib.kernel.no;
    BTRFS_DEBUG = lib.kernel.no;
    BTRFS_ASSERT = lib.kernel.no;
    BTRFS_EXPERIMENTAL = lib.kernel.no;

    NILFS2_FS = lib.kernel.no;

    F2FS_FS = lib.kernel.no;

    FS_POSIX_ACL = lib.kernel.yes;

    EXPORTFS = lib.kernel.yes;
    EXPORTFS_BLOCK_OPS = lib.kernel.no;

    FILE_LOCKING = lib.kernel.yes;

    FS_ENCRYPTION = lib.kernel.yes;
    FS_ENCRYPTION_ALGS = lib.kernel.yes;
    FS_VERITY = lib.kernel.no;

    FSNOTIFY = lib.kernel.yes;

    DNOTIFY = lib.kernel.yes;

    INOTIFY_USER = lib.kernel.yes;

    FANOTIFY = lib.kernel.no;

    QUOTA = lib.kernel.yes;
    QUOTA_NETLINK_INTERFACE = lib.kernel.yes;
    QUOTA_DEBUG = lib.kernel.no;
    QUOTA_TREE = lib.kernel.yes;

    QFMT_V1 = lib.kernel.no;
    QFMT_V2 = lib.kernel.yes;

    QUOTACTL = lib.kernel.yes;

    AUTOFS_FS = lib.kernel.yes;

    FUSE_FS = lib.kernel.yes;

    CUSE = lib.kernel.yes;

    VIRTIO_FS = lib.kernel.yes;

    FUSE_PASSTHROUGH = lib.kernel.yes;
    FUSE_IO_URING = lib.kernel.yes;

    OVERLAY_FS = lib.kernel.yes;
    OVERLAY_FS_REDIRECT_DIR = lib.kernel.no;
    OVERLAY_FS_REDIRECT_ALWAYS_FOLLOW = lib.kernel.yes;
    OVERLAY_FS_INDEX = lib.kernel.no;
    OVERLAY_FS_XINO_AUTO = lib.kernel.no;
    OVERLAY_FS_METACOPY = lib.kernel.no;
    OVERLAY_FS_DEBUG = lib.kernel.no;

    NETFS_SUPPORT = lib.kernel.yes;
    NETFS_STATS = lib.kernel.no;
    NETFS_DEBUG = lib.kernel.no;

    FSCACHE = lib.kernel.yes;
    FSCACHE_STATS = lib.kernel.no;

    CACHEFILES = lib.kernel.yes;
    CACHEFILES_DEBUG = lib.kernel.no;
    CACHEFILES_ERROR_INJECTION = lib.kernel.no;
    CACHEFILES_ONDEMAND = lib.kernel.yes;

    ISO9660_FS = lib.kernel.yes;

    JOLIET = lib.kernel.yes;

    ZISOFS = lib.kernel.yes;

    UDF_FS = lib.kernel.yes;

    FAT_FS = lib.kernel.yes;

    MSDOS_FS = lib.kernel.yes;

    VFAT_FS = lib.kernel.yes;

    FAT_DEFAULT_CODEPAGE = lib.kernel.freeform "437";
    FAT_DEFAULT_IOCHARSET = lib.kernel.freeform "iso8859-1";
    FAT_DEFAULT_UTF8 = lib.kernel.yes;

    EXFAT_FS = lib.kernel.yes;
    EXFAT_DEFAULT_IOCHARSET = lib.kernel.freeform "utf8";

    NTFS_FS = lib.kernel.no;

    NTFS3_FS = lib.kernel.no;

    PROC_FS = lib.kernel.yes;
    PROC_KCORE = lib.kernel.yes;
    PROC_VMCORE = lib.kernel.yes;
    PROC_VMCORE_DEVICE_DUMP = lib.kernel.yes;
    PROC_SYSCTL = lib.kernel.yes;
    PROC_PAGE_MONITOR = lib.kernel.yes;
    PROC_CHILDREN = lib.kernel.yes;
    PROC_PID_ARCH_STATUS = lib.kernel.yes;

    KERNFS = lib.kernel.yes;

    SYSFS = lib.kernel.yes;

    TMPFS = lib.kernel.yes;
    TMPFS_POSIX_ACL = lib.kernel.yes;
    TMPFS_XATTR = lib.kernel.yes;
    TMPFS_INODE64 = lib.kernel.no;
    TMPFS_QUOTA = lib.kernel.yes;

    ARCH_SUPPORTS_HUGETLBFS = lib.kernel.yes;

    HUGETLBFS = lib.kernel.yes;

    HUGETLB_PAGE_OPTIMIZE_VMEMMAP_DEFAULT_ON = lib.kernel.no;
    HUGETLB_PAGE = lib.kernel.yes;
    HUGETLB_PAGE_OPTIMIZE_VMEMMAP = lib.kernel.yes;
    HUGETLB_PMD_PAGE_TABLE_SHARING = lib.kernel.yes;

    ARCH_HAS_GIGANTIC_PAGE = lib.kernel.yes;

    CONFIGFS_FS = lib.kernel.yes;

    EFIVAR_FS = lib.kernel.yes;

    MISC_FILESYSTEMS = lib.kernel.yes;

    ORANGEFS_FS = lib.kernel.no;

    ADFS_FS = lib.kernel.no;

    AFFS_FS = lib.kernel.no;

    ECRYPT_FS = lib.kernel.no;

    HFS_FS = lib.kernel.no;

    HFSPLUS_FS = lib.kernel.no;

    BEFS_FS = lib.kernel.no;

    BFS_FS = lib.kernel.no;

    EFS_FS = lib.kernel.no;

    CRAMFS = lib.kernel.no;

    SQUASHFS = lib.kernel.yes;
    SQUASHFS_FILE_CACHE = lib.kernel.yes;
    SQUASHFS_FILE_DIRECT = lib.kernel.no;
    SQUASHFS_DECOMP_MULTI = lib.kernel.yes;
    SQUASHFS_CHOICE_DECOMP_BY_MOUNT = lib.kernel.no;
    SQUASHFS_COMPILE_DECOMP_SINGLE = lib.kernel.no;
    SQUASHFS_COMPILE_DECOMP_MULTI = lib.kernel.yes;
    SQUASHFS_COMPILE_DECOMP_MULTI_PERCPU = lib.kernel.no;
    SQUASHFS_MOUNT_DECOMP_THREADS = lib.kernel.no;
    SQUASHFS_XATTR = lib.kernel.yes;
    SQUASHFS_COMP_CACHE_FULL = lib.kernel.no;
    SQUASHFS_ZLIB = lib.kernel.no;
    SQUASHFS_LZ4 = lib.kernel.no;
    SQUASHFS_LZO = lib.kernel.no;
    SQUASHFS_XZ = lib.kernel.no;
    SQUASHFS_ZSTD = lib.kernel.yes;
    SQUASHFS_4K_DEVBLK_SIZE = lib.kernel.yes;
    SQUASHFS_EMBEDDED = lib.kernel.no;
    SQUASHFS_FRAGMENT_CACHE_SIZE = lib.kernel.freeform "3";

    VXFS_FS = lib.kernel.no;

    MINIX_FS = lib.kernel.no;

    OMFS_FS = lib.kernel.no;

    HPFS_FS = lib.kernel.no;

    QNX4FS_FS = lib.kernel.no;

    QNX6FS_FS = lib.kernel.no;

    ROMFS_FS = lib.kernel.no;

    PSTORE = lib.kernel.yes;
    PSTORE_DEFAULT_KMSG_BYTES = lib.kernel.freeform "10240";
    PSTORE_COMPRESS = lib.kernel.yes;
    PSTORE_CONSOLE = lib.kernel.no;
    PSTORE_PMSG = lib.kernel.no;
    PSTORE_RAM = lib.kernel.no;
    PSTORE_BLK = lib.kernel.no;

    UFS_FS = lib.kernel.yes;
    UFS_FS_WRITE = lib.kernel.no;
    UFS_DEBUG = lib.kernel.no;

    EROFS_FS = lib.kernel.no;

    VBOXSF_FS = lib.kernel.yes;

    NETWORK_FILESYSTEMS = lib.kernel.yes;

    NFS_FS = lib.kernel.yes;
    NFS_V2 = lib.kernel.no;
    NFS_V3 = lib.kernel.yes;
    NFS_V3_ACL = lib.kernel.yes;
    NFS_V4 = lib.kernel.yes;
    NFS_SWAP = lib.kernel.no;
    NFS_V4_0 = lib.kernel.yes;
    NFS_V4_2 = lib.kernel.no;

    PNFS_FILE_LAYOUT = lib.kernel.yes;
    PNFS_BLOCK = lib.kernel.yes;
    PNFS_FLEXFILE_LAYOUT = lib.kernel.yes;

    NFS_V4_1_IMPLEMENTATION_ID_DOMAIN = lib.kernel.freeform "kernel.org";
    NFS_V4_1_MIGRATION = lib.kernel.no;

    ROOT_NFS = lib.kernel.yes;

    NFS_FSCACHE = lib.kernel.no;
    NFS_USE_LEGACY_DNS = lib.kernel.no;
    NFS_USE_KERNEL_DNS = lib.kernel.yes;
    NFS_DISABLE_UDP_SUPPORT = lib.kernel.yes;

    NFSD = lib.kernel.no;

    GRACE_PERIOD = lib.kernel.yes;

    LOCKD = lib.kernel.yes;
    LOCKD_V4 = lib.kernel.yes;

    NFS_ACL_SUPPORT = lib.kernel.yes;
    NFS_COMMON = lib.kernel.yes;

    SUNRPC = lib.kernel.yes;
    SUNRPC_GSS = lib.kernel.yes;
    SUNRPC_BACKCHANNEL = lib.kernel.yes;

    RPCSEC_GSS_KRB5 = lib.kernel.yes;

    SUNRPC_DEBUG = lib.kernel.no;

    CEPH_FS = lib.kernel.no;

    CIFS = lib.kernel.no;

    SMB_SERVER = lib.kernel.yes;
    SMB_SERVER_CHECK_CAP_NET_ADMIN = lib.kernel.yes;
    SMB_SERVER_KERBEROS5 = lib.kernel.yes;

    SMBFS = lib.kernel.yes;

    CODA_FS = lib.kernel.no;

    AFS_FS = lib.kernel.no;

    "9P_FS" = lib.kernel.yes;
    "9P_FSCACHE" = lib.kernel.no;
    "9P_FS_POSIX_ACL" = lib.kernel.no;
    "9P_FS_SECURITY" = lib.kernel.no;

    NLS = lib.kernel.yes;
    NLS_DEFAULT = lib.kernel.freeform "utf8";
    NLS_CODEPAGE_437 = lib.kernel.yes;
    NLS_CODEPAGE_737 = lib.kernel.no;
    NLS_CODEPAGE_775 = lib.kernel.no;
    NLS_CODEPAGE_850 = lib.kernel.no;
    NLS_CODEPAGE_852 = lib.kernel.no;
    NLS_CODEPAGE_855 = lib.kernel.no;
    NLS_CODEPAGE_857 = lib.kernel.no;
    NLS_CODEPAGE_860 = lib.kernel.no;
    NLS_CODEPAGE_861 = lib.kernel.no;
    NLS_CODEPAGE_862 = lib.kernel.no;
    NLS_CODEPAGE_863 = lib.kernel.no;
    NLS_CODEPAGE_864 = lib.kernel.no;
    NLS_CODEPAGE_865 = lib.kernel.no;
    NLS_CODEPAGE_866 = lib.kernel.no;
    NLS_CODEPAGE_869 = lib.kernel.no;
    NLS_CODEPAGE_936 = lib.kernel.no;
    NLS_CODEPAGE_950 = lib.kernel.no;
    NLS_CODEPAGE_932 = lib.kernel.no;
    NLS_CODEPAGE_949 = lib.kernel.no;
    NLS_CODEPAGE_874 = lib.kernel.no;
    NLS_ISO8859_8 = lib.kernel.no;
    NLS_CODEPAGE_1250 = lib.kernel.no;
    NLS_CODEPAGE_1251 = lib.kernel.no;
    NLS_ASCII = lib.kernel.yes;
    NLS_ISO8859_1 = lib.kernel.yes;
    NLS_ISO8859_2 = lib.kernel.no;
    NLS_ISO8859_3 = lib.kernel.no;
    NLS_ISO8859_4 = lib.kernel.no;
    NLS_ISO8859_5 = lib.kernel.no;
    NLS_ISO8859_6 = lib.kernel.no;
    NLS_ISO8859_7 = lib.kernel.no;
    NLS_ISO8859_9 = lib.kernel.no;
    NLS_ISO8859_13 = lib.kernel.no;
    NLS_ISO8859_14 = lib.kernel.no;
    NLS_ISO8859_15 = lib.kernel.no;
    NLS_KOI8_R = lib.kernel.no;
    NLS_KOI8_U = lib.kernel.no;
    NLS_MAC_ROMAN = lib.kernel.no;
    NLS_MAC_CELTIC = lib.kernel.no;
    NLS_MAC_CENTEURO = lib.kernel.no;
    NLS_MAC_CROATIAN = lib.kernel.no;
    NLS_MAC_CYRILLIC = lib.kernel.no;
    NLS_MAC_GAELIC = lib.kernel.no;
    NLS_MAC_GREEK = lib.kernel.no;
    NLS_MAC_ICELAND = lib.kernel.no;
    NLS_MAC_INUIT = lib.kernel.no;
    NLS_MAC_ROMANIAN = lib.kernel.no;
    NLS_MAC_TURKISH = lib.kernel.no;
    NLS_UTF8 = lib.kernel.yes;
    NLS_UCS2_UTILS = lib.kernel.yes;

    DLM = lib.kernel.yes;
    DLM_DEBUG = lib.kernel.no;

    UNICODE = lib.kernel.yes;

    IO_WQ = lib.kernel.yes;

    KEYS = lib.kernel.yes;
    KEYS_REQUEST_CACHE = lib.kernel.no;

    PERSISTENT_KEYRINGS = lib.kernel.no;

    BIG_KEYS = lib.kernel.no;

    TRUSTED_KEYS = lib.kernel.no;

    ENCRYPTED_KEYS = lib.kernel.no;

    KEY_DH_OPERATIONS = lib.kernel.no;
    KEY_NOTIFICATIONS = lib.kernel.no;

    SECURITY_DMESG_RESTRICT = lib.kernel.yes;

    PROC_MEM_ALWAYS_FORCE = lib.kernel.no;
    PROC_MEM_FORCE_PTRACE = lib.kernel.yes;
    PROC_MEM_NO_FORCE = lib.kernel.no;

    SECURITY = lib.kernel.yes;

    HAS_SECURITY_AUDIT = lib.kernel.yes;

    SECURITYFS = lib.kernel.yes;

    SECURITY_NETWORK = lib.kernel.yes;
    SECURITY_NETWORK_XFRM = lib.kernel.no;
    SECURITY_PATH = lib.kernel.no;

    INTEL_TXT = lib.kernel.yes;

    STATIC_USERMODEHELPER = lib.kernel.no;

    SECURITY_SELINUX = lib.kernel.yes;
    SECURITY_SMACK = lib.kernel.no;
    SECURITY_TOMOYO = lib.kernel.no;
    SECURITY_APPARMOR = lib.kernel.no;
    SECURITY_LOADPIN = lib.kernel.no;
    SECURITY_YAMA = lib.kernel.no;
    SECURITY_SAFESETID = lib.kernel.no;
    SECURITY_LOCKDOWN_LSM = lib.kernel.no;
    SECURITY_LANDLOCK = lib.kernel.no;
    SECURITY_IPE = lib.kernel.no;

    INTEGRITY = lib.kernel.yes;
    INTEGRITY_SIGNATURE = lib.kernel.no;
    INTEGRITY_AUDIT = lib.kernel.yes;

    IMA = lib.kernel.no;
    IMA_SECURE_AND_OR_TRUSTED_BOOT = lib.kernel.no;

    EVM = lib.kernel.no;

    DEFAULT_SECURITY_DAC = lib.kernel.yes;

    LSM = lib.kernel.freeform "landlock,lockdown,yama,loadpin,safesetid,ipe,bpf";

    CC_HAS_AUTO_VAR_INIT_PATTERN = lib.kernel.yes;
    CC_HAS_AUTO_VAR_INIT_ZERO_BARE = lib.kernel.yes;
    CC_HAS_AUTO_VAR_INIT_ZERO = lib.kernel.yes;

    INIT_STACK_NONE = lib.kernel.no;
    INIT_STACK_ALL_PATTERN = lib.kernel.no;
    INIT_STACK_ALL_ZERO = lib.kernel.yes;

    KSTACK_ERASE = lib.kernel.yes;

    GCC_PLUGIN_STACKLEAK = lib.kernel.yes;
    GCC_PLUGIN_STACKLEAK_VERBOSE = lib.kernel.no;

    KSTACK_ERASE_TRACK_MIN_SIZE = lib.kernel.freeform "100";
    KSTACK_ERASE_METRICS = lib.kernel.no;
    KSTACK_ERASE_RUNTIME_DISABLE = lib.kernel.no;

    INIT_ON_ALLOC_DEFAULT_ON = lib.kernel.no;
    INIT_ON_FREE_DEFAULT_ON = lib.kernel.no;

    CC_HAS_ZERO_CALL_USED_REGS = lib.kernel.yes;

    ZERO_CALL_USED_REGS = lib.kernel.no;

    FORTIFY_SOURCE = lib.kernel.yes;

    HARDENED_USERCOPY = lib.kernel.yes;
    HARDENED_USERCOPY_DEFAULT_ON = lib.kernel.yes;

    LIST_HARDENED = lib.kernel.yes;

    BUG_ON_DATA_CORRUPTION = lib.kernel.yes;

    RANDSTRUCT_NONE = lib.kernel.no;
    RANDSTRUCT_FULL = lib.kernel.yes;
    RANDSTRUCT_PERFORMANCE = lib.kernel.no;
    RANDSTRUCT = lib.kernel.yes;

    GCC_PLUGIN_RANDSTRUCT = lib.kernel.yes;

    CRYPTO = lib.kernel.yes;
    CRYPTO_ALGAPI = lib.kernel.yes;
    CRYPTO_ALGAPI2 = lib.kernel.yes;
    CRYPTO_AEAD = lib.kernel.yes;
    CRYPTO_AEAD2 = lib.kernel.yes;
    CRYPTO_SIG = lib.kernel.yes;
    CRYPTO_SIG2 = lib.kernel.yes;
    CRYPTO_SKCIPHER = lib.kernel.yes;
    CRYPTO_SKCIPHER2 = lib.kernel.yes;
    CRYPTO_HASH = lib.kernel.yes;
    CRYPTO_HASH2 = lib.kernel.yes;
    CRYPTO_AKCIPHER2 = lib.kernel.yes;
    CRYPTO_AKCIPHER = lib.kernel.yes;
    CRYPTO_KPP2 = lib.kernel.yes;
    CRYPTO_KPP = lib.kernel.yes;
    CRYPTO_ACOMP2 = lib.kernel.yes;
    CRYPTO_MANAGER = lib.kernel.yes;
    CRYPTO_MANAGER2 = lib.kernel.yes;
    CRYPTO_USER = lib.kernel.no;
    CRYPTO_SELFTESTS = lib.kernel.no;
    CRYPTO_NULL = lib.kernel.no;
    CRYPTO_PCRYPT = lib.kernel.no;
    CRYPTO_CRYPTD = lib.kernel.no;
    CRYPTO_AUTHENC = lib.kernel.yes;
    CRYPTO_KRB5ENC = lib.kernel.yes;
    CRYPTO_BENCHMARK = lib.kernel.no;
    CRYPTO_RSA = lib.kernel.yes;
    CRYPTO_DH = lib.kernel.no;
    CRYPTO_ECC = lib.kernel.yes;
    CRYPTO_ECDH = lib.kernel.yes;
    CRYPTO_ECDSA = lib.kernel.no;
    CRYPTO_ECRDSA = lib.kernel.no;
    CRYPTO_MLDSA = lib.kernel.no;
    CRYPTO_AES = lib.kernel.yes;
    CRYPTO_ARIA = lib.kernel.no;
    CRYPTO_BLOWFISH = lib.kernel.no;
    CRYPTO_CAMELLIA = lib.kernel.yes;
    CRYPTO_CAST5 = lib.kernel.no;
    CRYPTO_CAST6 = lib.kernel.no;
    CRYPTO_DES = lib.kernel.no;
    CRYPTO_SERPENT = lib.kernel.no;
    CRYPTO_SM4_GENERIC = lib.kernel.no;
    CRYPTO_TWOFISH = lib.kernel.no;
    CRYPTO_ADIANTUM = lib.kernel.no;
    CRYPTO_CHACHA20 = lib.kernel.no;
    CRYPTO_CBC = lib.kernel.yes;
    CRYPTO_CTR = lib.kernel.yes;
    CRYPTO_CTS = lib.kernel.yes;
    CRYPTO_ECB = lib.kernel.yes;
    CRYPTO_HCTR2 = lib.kernel.no;
    CRYPTO_LRW = lib.kernel.no;
    CRYPTO_XTS = lib.kernel.yes;
    CRYPTO_AEGIS128 = lib.kernel.no;
    CRYPTO_CHACHA20POLY1305 = lib.kernel.no;
    CRYPTO_CCM = lib.kernel.yes;
    CRYPTO_GCM = lib.kernel.yes;
    CRYPTO_GENIV = lib.kernel.yes;
    CRYPTO_SEQIV = lib.kernel.yes;
    CRYPTO_ECHAINIV = lib.kernel.yes;
    CRYPTO_ESSIV = lib.kernel.no;
    CRYPTO_BLAKE2B = lib.kernel.no;
    CRYPTO_CMAC = lib.kernel.yes;
    CRYPTO_HMAC = lib.kernel.yes;
    CRYPTO_MD4 = lib.kernel.no;
    CRYPTO_MD5 = lib.kernel.no;
    CRYPTO_RMD160 = lib.kernel.no;
    CRYPTO_SHA1 = lib.kernel.yes;
    CRYPTO_SHA256 = lib.kernel.yes;
    CRYPTO_SHA512 = lib.kernel.yes;
    CRYPTO_SHA3 = lib.kernel.no;
    CRYPTO_SM3 = lib.kernel.no;
    CRYPTO_STREEBOG = lib.kernel.no;
    CRYPTO_WP512 = lib.kernel.no;
    CRYPTO_XCBC = lib.kernel.no;
    CRYPTO_XXHASH = lib.kernel.no;
    CRYPTO_CRC32C = lib.kernel.no;
    CRYPTO_CRC32 = lib.kernel.no;
    CRYPTO_DEFLATE = lib.kernel.no;
    CRYPTO_LZO = lib.kernel.yes;
    CRYPTO_842 = lib.kernel.no;
    CRYPTO_LZ4 = lib.kernel.yes;
    CRYPTO_LZ4HC = lib.kernel.no;
    CRYPTO_ZSTD = lib.kernel.no;
    CRYPTO_DRBG = lib.kernel.no;
    CRYPTO_JITTERENTROPY = lib.kernel.no;
    CRYPTO_USER_API_HASH = lib.kernel.no;
    CRYPTO_USER_API_SKCIPHER = lib.kernel.no;
    CRYPTO_USER_API_RNG = lib.kernel.no;
    CRYPTO_USER_API_AEAD = lib.kernel.no;
    CRYPTO_AES_NI_INTEL = lib.kernel.no;
    CRYPTO_BLOWFISH_X86_64 = lib.kernel.no;
    CRYPTO_CAMELLIA_X86_64 = lib.kernel.no;
    CRYPTO_CAMELLIA_AESNI_AVX_X86_64 = lib.kernel.no;
    CRYPTO_CAMELLIA_AESNI_AVX2_X86_64 = lib.kernel.no;
    CRYPTO_CAST5_AVX_X86_64 = lib.kernel.no;
    CRYPTO_CAST6_AVX_X86_64 = lib.kernel.no;
    CRYPTO_SERPENT_SSE2_X86_64 = lib.kernel.no;
    CRYPTO_SERPENT_AVX_X86_64 = lib.kernel.no;
    CRYPTO_SERPENT_AVX2_X86_64 = lib.kernel.no;
    CRYPTO_SM4_AESNI_AVX_X86_64 = lib.kernel.no;
    CRYPTO_SM4_AESNI_AVX2_X86_64 = lib.kernel.no;
    CRYPTO_TWOFISH_X86_64 = lib.kernel.no;
    CRYPTO_TWOFISH_X86_64_3WAY = lib.kernel.no;
    CRYPTO_TWOFISH_AVX_X86_64 = lib.kernel.no;
    CRYPTO_ARIA_AESNI_AVX_X86_64 = lib.kernel.no;
    CRYPTO_ARIA_AESNI_AVX2_X86_64 = lib.kernel.no;
    CRYPTO_ARIA_GFNI_AVX512_X86_64 = lib.kernel.no;
    CRYPTO_AEGIS128_AESNI_SSE2 = lib.kernel.no;
    CRYPTO_HW = lib.kernel.yes;
    CRYPTO_DEV_PADLOCK = lib.kernel.no;
    CRYPTO_DEV_ATMEL_ECC = lib.kernel.no;
    CRYPTO_DEV_ATMEL_SHA204A = lib.kernel.no;
    CRYPTO_DEV_CCP = lib.kernel.no;
    CRYPTO_DEV_NITROX_CNN55XX = lib.kernel.no;
    CRYPTO_DEV_QAT_DH895xCC = lib.kernel.no;
    CRYPTO_DEV_QAT_C3XXX = lib.kernel.no;
    CRYPTO_DEV_QAT_C62X = lib.kernel.no;
    CRYPTO_DEV_QAT_4XXX = lib.kernel.no;
    CRYPTO_DEV_QAT_420XX = lib.kernel.no;
    CRYPTO_DEV_QAT_6XXX = lib.kernel.no;
    CRYPTO_DEV_QAT_DH895xCCVF = lib.kernel.no;
    CRYPTO_DEV_QAT_C3XXXVF = lib.kernel.no;
    CRYPTO_DEV_QAT_C62XVF = lib.kernel.no;
    CRYPTO_DEV_VIRTIO = lib.kernel.no;
    CRYPTO_DEV_SAFEXCEL = lib.kernel.no;
    CRYPTO_DEV_AMLOGIC_GXL = lib.kernel.no;

    ASYMMETRIC_KEY_TYPE = lib.kernel.yes;
    ASYMMETRIC_PUBLIC_KEY_SUBTYPE = lib.kernel.yes;

    X509_CERTIFICATE_PARSER = lib.kernel.yes;

    PKCS8_PRIVATE_KEY_PARSER = lib.kernel.no;

    PKCS7_MESSAGE_PARSER = lib.kernel.yes;
    PKCS7_TEST_KEY = lib.kernel.no;

    SIGNED_PE_FILE_VERIFICATION = lib.kernel.no;

    FIPS_SIGNATURE_SELFTEST = lib.kernel.no;

    SYSTEM_TRUSTED_KEYRING = lib.kernel.yes;
    SYSTEM_TRUSTED_KEYS = lib.kernel.freeform "";
    SYSTEM_EXTRA_CERTIFICATE = lib.kernel.no;

    SECONDARY_TRUSTED_KEYRING = lib.kernel.no;

    SYSTEM_BLACKLIST_KEYRING = lib.kernel.no;

    OPENSSL_SUPPORTS_ML_DSA = lib.kernel.yes;

    CRYPTO_KRB5 = lib.kernel.yes;
    CRYPTO_KRB5_SELFTESTS = lib.kernel.no;

    BINARY_PRINTF = lib.kernel.yes;

    LINEAR_RANGES = lib.kernel.yes;

    PACKING = lib.kernel.no;

    BITREVERSE = lib.kernel.yes;

    GENERIC_BITREVERSE = lib.kernel.yes;
    GENERIC_STRNCPY_FROM_USER = lib.kernel.yes;
    GENERIC_STRNLEN_USER = lib.kernel.yes;
    GENERIC_NET_UTILS = lib.kernel.yes;

    CORDIC = lib.kernel.no;

    PRIME_NUMBERS = lib.kernel.no;

    RATIONAL = lib.kernel.yes;

    GENERIC_IOMAP = lib.kernel.yes;

    ARCH_USE_CMPXCHG_LOCKREF = lib.kernel.yes;
    ARCH_HAS_FAST_MULTIPLIER = lib.kernel.yes;
    ARCH_USE_SYM_ANNOTATIONS = lib.kernel.yes;

    CRC16 = lib.kernel.yes;

    CRC_CCITT = lib.kernel.yes;
    CRC_ITU_T = lib.kernel.yes;

    CRC32 = lib.kernel.yes;
    CRC32_ARCH = lib.kernel.yes;

    CRC_OPTIMIZATIONS = lib.kernel.yes;

    CRYPTO_HASH_INFO = lib.kernel.yes;
    CRYPTO_LIB_UTILS = lib.kernel.yes;
    CRYPTO_LIB_AES = lib.kernel.yes;
    CRYPTO_LIB_AES_ARCH = lib.kernel.yes;
    CRYPTO_LIB_AESCFB = lib.kernel.yes;
    CRYPTO_LIB_AES_CBC_MACS = lib.kernel.yes;
    CRYPTO_LIB_ARC4 = lib.kernel.yes;
    CRYPTO_LIB_BLAKE2B = lib.kernel.yes;
    CRYPTO_LIB_BLAKE2S_ARCH = lib.kernel.yes;
    CRYPTO_LIB_DES = lib.kernel.yes;
    CRYPTO_LIB_GF128HASH = lib.kernel.yes;
    CRYPTO_LIB_GF128HASH_ARCH = lib.kernel.yes;
    CRYPTO_LIB_MD5 = lib.kernel.yes;
    CRYPTO_LIB_POLY1305_RSIZE = lib.kernel.freeform "11";
    CRYPTO_LIB_SHA1 = lib.kernel.yes;
    CRYPTO_LIB_SHA1_ARCH = lib.kernel.yes;
    CRYPTO_LIB_SHA256 = lib.kernel.yes;
    CRYPTO_LIB_SHA256_ARCH = lib.kernel.yes;
    CRYPTO_LIB_SHA512 = lib.kernel.yes;
    CRYPTO_LIB_SHA512_ARCH = lib.kernel.yes;

    XOR_BLOCKS = lib.kernel.yes;
    XOR_BLOCKS_ARCH = lib.kernel.yes;

    RAID6_PQ = lib.kernel.yes;
    RAID6_PQ_ARCH = lib.kernel.yes;
    RAID6_PQ_BENCHMARK = lib.kernel.yes;

    XXHASH = lib.kernel.yes;

    RANDOM32_SELFTEST = lib.kernel.no;

    ZLIB_INFLATE = lib.kernel.yes;
    ZLIB_DEFLATE = lib.kernel.yes;

    LZO_COMPRESS = lib.kernel.yes;
    LZO_DECOMPRESS = lib.kernel.yes;

    LZ4_COMPRESS = lib.kernel.yes;
    LZ4_DECOMPRESS = lib.kernel.yes;

    ZSTD_COMMON = lib.kernel.yes;
    ZSTD_COMPRESS = lib.kernel.yes;
    ZSTD_DECOMPRESS = lib.kernel.yes;

    XZ_DEC = lib.kernel.yes;
    XZ_DEC_X86 = lib.kernel.yes;
    XZ_DEC_POWERPC = lib.kernel.yes;
    XZ_DEC_ARM = lib.kernel.yes;
    XZ_DEC_ARMTHUMB = lib.kernel.yes;
    XZ_DEC_ARM64 = lib.kernel.yes;
    XZ_DEC_SPARC = lib.kernel.yes;
    XZ_DEC_RISCV = lib.kernel.yes;
    XZ_DEC_MICROLZMA = lib.kernel.no;
    XZ_DEC_BCJ = lib.kernel.yes;
    XZ_DEC_TEST = lib.kernel.no;

    DECOMPRESS_GZIP = lib.kernel.yes;
    DECOMPRESS_BZIP2 = lib.kernel.yes;
    DECOMPRESS_LZMA = lib.kernel.yes;
    DECOMPRESS_XZ = lib.kernel.yes;
    DECOMPRESS_LZO = lib.kernel.yes;
    DECOMPRESS_LZ4 = lib.kernel.yes;
    DECOMPRESS_ZSTD = lib.kernel.yes;

    GENERIC_ALLOCATOR = lib.kernel.yes;

    INTERVAL_TREE = lib.kernel.yes;

    XARRAY_MULTI = lib.kernel.yes;

    ASSOCIATIVE_ARRAY = lib.kernel.yes;

    HAS_IOMEM = lib.kernel.yes;
    HAS_IOPORT = lib.kernel.yes;
    HAS_IOPORT_MAP = lib.kernel.yes;
    HAS_DMA = lib.kernel.yes;

    DMA_OPS_HELPERS = lib.kernel.yes;

    NEED_SG_DMA_FLAGS = lib.kernel.yes;
    NEED_SG_DMA_LENGTH = lib.kernel.yes;
    NEED_DMA_MAP_STATE = lib.kernel.yes;

    ARCH_DMA_ADDR_T_64BIT = lib.kernel.yes;

    SWIOTLB = lib.kernel.yes;
    SWIOTLB_DYNAMIC = lib.kernel.no;

    DMA_NEED_SYNC = lib.kernel.yes;
    DMA_CMA = lib.kernel.yes;
    DMA_NUMA_CMA = lib.kernel.no;

    CMA_SIZE_MBYTES = lib.kernel.freeform "0";
    CMA_SIZE_SEL_MBYTES = lib.kernel.yes;
    CMA_SIZE_SEL_PERCENTAGE = lib.kernel.no;
    CMA_SIZE_SEL_MIN = lib.kernel.no;
    CMA_SIZE_SEL_MAX = lib.kernel.no;
    CMA_ALIGNMENT = lib.kernel.freeform "8";

    DMA_API_DEBUG = lib.kernel.no;
    DMA_MAP_BENCHMARK = lib.kernel.no;

    SGL_ALLOC = lib.kernel.yes;

    CHECK_SIGNATURE = lib.kernel.yes;

    CPU_RMAP = lib.kernel.yes;

    DQL = lib.kernel.yes;

    GLOB = lib.kernel.yes;

    NLATTR = lib.kernel.yes;

    CLZ_TAB = lib.kernel.yes;

    IRQ_POLL = lib.kernel.no;

    MPILIB = lib.kernel.yes;

    DIMLIB = lib.kernel.yes;

    LIBFDT = lib.kernel.yes;

    OID_REGISTRY = lib.kernel.yes;

    UCS2_STRING = lib.kernel.yes;

    HAVE_GENERIC_VDSO = lib.kernel.yes;

    GENERIC_GETTIMEOFDAY = lib.kernel.yes;
    GENERIC_VDSO_OVERFLOW_PROTECT = lib.kernel.yes;

    VDSO_GETRANDOM = lib.kernel.yes;

    FONT_SUPPORT = lib.kernel.yes;

    FONTS = lib.kernel.no;

    FONT_8x8 = lib.kernel.yes;
    FONT_8x16 = lib.kernel.yes;

    SG_POOL = lib.kernel.yes;

    ARCH_HAS_PMEM_API = lib.kernel.yes;

    MEMREGION = lib.kernel.yes;

    ARCH_HAS_CPU_CACHE_INVALIDATE_MEMREGION = lib.kernel.yes;
    ARCH_HAS_UACCESS_FLUSHCACHE = lib.kernel.yes;
    ARCH_HAS_COPY_MC = lib.kernel.yes;
    ARCH_STACKWALK = lib.kernel.yes;

    STACKDEPOT = lib.kernel.yes;
    STACKDEPOT_MAX_FRAMES = lib.kernel.freeform "64";

    SBITMAP = lib.kernel.yes;

    LWQ_TEST = lib.kernel.no;

    FIRMWARE_TABLE = lib.kernel.yes;

    UNION_FIND = lib.kernel.yes;

    PRINTK_TIME = lib.kernel.yes;
    PRINTK_CALLER = lib.kernel.no;

    STACKTRACE_BUILD_ID = lib.kernel.no;

    CONSOLE_LOGLEVEL_DEFAULT = lib.kernel.freeform "7";
    CONSOLE_LOGLEVEL_QUIET = lib.kernel.freeform "4";

    MESSAGE_LOGLEVEL_DEFAULT = lib.kernel.freeform "4";

    BOOT_PRINTK_DELAY = lib.kernel.no;

    DYNAMIC_DEBUG = lib.kernel.no;
    DYNAMIC_DEBUG_CORE = lib.kernel.no;

    SYMBOLIC_ERRNAME = lib.kernel.yes;

    DEBUG_BUGVERBOSE = lib.kernel.yes;
    DEBUG_BUGVERBOSE_DETAILED = lib.kernel.no;
    DEBUG_KERNEL = lib.kernel.yes;
    DEBUG_MISC = lib.kernel.yes;

    AS_HAS_NON_CONST_ULEB128 = lib.kernel.yes;

    DEBUG_INFO_NONE = lib.kernel.yes;
    DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT = lib.kernel.no;
    DEBUG_INFO_DWARF4 = lib.kernel.no;
    DEBUG_INFO_DWARF5 = lib.kernel.no;

    FRAME_WARN = lib.kernel.freeform "2048";

    STRIP_ASM_SYMS = lib.kernel.no;

    READABLE_ASM = lib.kernel.no;

    HEADERS_INSTALL = lib.kernel.no;

    DEBUG_SECTION_MISMATCH = lib.kernel.no;

    SECTION_MISMATCH_WARN_ONLY = lib.kernel.yes;

    DEBUG_FORCE_FUNCTION_ALIGN_64B = lib.kernel.no;

    OBJTOOL = lib.kernel.yes;
    OBJTOOL_WERROR = lib.kernel.no;

    NOINSTR_VALIDATION = lib.kernel.yes;

    VMLINUX_MAP = lib.kernel.no;

    DEBUG_FORCE_WEAK_PER_CPU = lib.kernel.no;

    MAGIC_SYSRQ = lib.kernel.yes;
    MAGIC_SYSRQ_DEFAULT_ENABLE = lib.kernel.freeform "0x1";
    MAGIC_SYSRQ_SERIAL = lib.kernel.yes;
    MAGIC_SYSRQ_SERIAL_SEQUENCE = lib.kernel.freeform "";

    DEBUG_FS = lib.kernel.yes;
    DEBUG_FS_ALLOW_ALL = lib.kernel.yes;
    DEBUG_FS_ALLOW_NONE = lib.kernel.no;

    HAVE_ARCH_KGDB = lib.kernel.yes;

    KGDB = lib.kernel.no;

    ARCH_HAS_UBSAN = lib.kernel.yes;

    UBSAN = lib.kernel.no;

    HAVE_ARCH_KCSAN = lib.kernel.yes;
    HAVE_KCSAN_COMPILER = lib.kernel.yes;

    KCSAN = lib.kernel.no;

    NET_DEV_REFCNT_TRACKER = lib.kernel.no;
    NET_NS_REFCNT_TRACKER = lib.kernel.no;

    DEBUG_NET = lib.kernel.no;
    DEBUG_NET_SMALL_RTNL = lib.kernel.no;

    PAGE_EXTENSION = lib.kernel.no;

    DEBUG_PAGEALLOC = lib.kernel.no;

    SLUB_DEBUG = lib.kernel.yes;
    SLUB_DEBUG_ON = lib.kernel.no;

    PAGE_OWNER = lib.kernel.no;
    PAGE_TABLE_CHECK = lib.kernel.no;
    PAGE_POISONING = lib.kernel.no;

    DEBUG_PAGE_REF = lib.kernel.no;
    DEBUG_RODATA_TEST = lib.kernel.no;

    ARCH_HAS_DEBUG_WX = lib.kernel.yes;

    DEBUG_WX = lib.kernel.yes;

    ARCH_HAS_PTDUMP = lib.kernel.yes;

    PTDUMP = lib.kernel.yes;
    PTDUMP_DEBUGFS = lib.kernel.no;

    HAVE_DEBUG_KMEMLEAK = lib.kernel.yes;

    DEBUG_KMEMLEAK = lib.kernel.no;

    PER_VMA_LOCK_STATS = lib.kernel.no;

    DEBUG_OBJECTS = lib.kernel.no;

    SHRINKER_DEBUG = lib.kernel.no;

    DEBUG_STACK_USAGE = lib.kernel.yes;

    SCHED_STACK_END_CHECK = lib.kernel.no;

    ARCH_HAS_DEBUG_VM_PGTABLE = lib.kernel.yes;

    DEBUG_VFS = lib.kernel.no;
    DEBUG_VM = lib.kernel.no;
    DEBUG_VM_PGTABLE = lib.kernel.no;

    ARCH_HAS_DEBUG_VIRTUAL = lib.kernel.yes;

    DEBUG_VIRTUAL = lib.kernel.no;
    DEBUG_MEMORY_INIT = lib.kernel.no;
    DEBUG_PER_CPU_MAPS = lib.kernel.no;

    ARCH_SUPPORTS_KMAP_LOCAL_FORCE_MAP = lib.kernel.yes;

    DEBUG_KMAP_LOCAL_FORCE_MAP = lib.kernel.no;

    MEM_ALLOC_PROFILING = lib.kernel.no;

    HAVE_ARCH_KASAN = lib.kernel.yes;
    HAVE_ARCH_KASAN_VMALLOC = lib.kernel.yes;

    CC_HAS_KASAN_GENERIC = lib.kernel.yes;
    CC_HAS_KASAN_SW_TAGS = lib.kernel.yes;
    CC_HAS_WORKING_NOSANITIZE_ADDRESS = lib.kernel.yes;

    KASAN = lib.kernel.no;

    HAVE_ARCH_KFENCE = lib.kernel.yes;

    KFENCE = lib.kernel.no;

    HAVE_ARCH_KMSAN = lib.kernel.yes;

    DEBUG_SHIRQ = lib.kernel.no;

    PANIC_ON_OOPS = lib.kernel.no;
    PANIC_TIMEOUT = lib.kernel.freeform "0";

    SOFTLOCKUP_DETECTOR = lib.kernel.no;

    HAVE_HARDLOCKUP_DETECTOR_BUDDY = lib.kernel.yes;

    HARDLOCKUP_DETECTOR = lib.kernel.no;
    HARDLOCKUP_CHECK_TIMESTAMP = lib.kernel.yes;

    DETECT_HUNG_TASK = lib.kernel.no;

    WQ_WATCHDOG = lib.kernel.no;
    WQ_CPU_INTENSIVE_REPORT = lib.kernel.no;

    TEST_LOCKUP = lib.kernel.no;

    SCHED_INFO = lib.kernel.yes;

    SCHEDSTATS = lib.kernel.yes;

    DEBUG_PREEMPT = lib.kernel.no;
    DEBUG_ATOMIC = lib.kernel.no;

    LOCK_DEBUGGING_SUPPORT = lib.kernel.yes;

    PROVE_LOCKING = lib.kernel.no;

    LOCK_STAT = lib.kernel.no;

    DEBUG_RT_MUTEXES = lib.kernel.no;
    DEBUG_SPINLOCK = lib.kernel.no;
    DEBUG_WW_MUTEX_SLOWPATH = lib.kernel.no;
    DEBUG_LOCK_ALLOC = lib.kernel.no;
    DEBUG_ATOMIC_SLEEP = lib.kernel.no;
    DEBUG_LOCKING_API_SELFTESTS = lib.kernel.no;

    LOCK_TORTURE_TEST = lib.kernel.no;

    WW_MUTEX_SELFTEST = lib.kernel.no;

    SCF_TORTURE_TEST = lib.kernel.no;

    CSD_LOCK_WAIT_DEBUG = lib.kernel.no;

    NMI_CHECK_CPU = lib.kernel.no;

    DEBUG_IRQFLAGS = lib.kernel.no;

    STACKTRACE = lib.kernel.yes;

    DEBUG_KOBJECT = lib.kernel.no;
    DEBUG_LIST = lib.kernel.no;
    DEBUG_PLIST = lib.kernel.no;
    DEBUG_SG = lib.kernel.no;
    DEBUG_NOTIFIERS = lib.kernel.no;
    DEBUG_MAPLE_TREE = lib.kernel.no;

    RCU_SCALE_TEST = lib.kernel.no;
    RCU_TORTURE_TEST = lib.kernel.no;
    RCU_REF_SCALE_TEST = lib.kernel.no;
    RCU_CPU_STALL_TIMEOUT = lib.kernel.freeform "21";
    RCU_EXP_CPU_STALL_TIMEOUT = lib.kernel.freeform "0";
    RCU_CPU_STALL_CPUTIME = lib.kernel.no;
    RCU_TRACE = lib.kernel.yes;
    RCU_EQS_DEBUG = lib.kernel.no;

    DEBUG_WQ_FORCE_RR_CPU = lib.kernel.no;

    CPU_HOTPLUG_STATE_CONTROL = lib.kernel.no;

    LATENCYTOP = lib.kernel.no;

    DEBUG_CGROUP_REF = lib.kernel.no;

    USER_STACKTRACE_SUPPORT = lib.kernel.yes;

    NOP_TRACER = lib.kernel.yes;

    HAVE_RETHOOK = lib.kernel.yes;

    RETHOOK = lib.kernel.yes;

    HAVE_FUNCTION_TRACER = lib.kernel.yes;
    HAVE_DYNAMIC_FTRACE = lib.kernel.yes;
    HAVE_DYNAMIC_FTRACE_WITH_REGS = lib.kernel.yes;
    HAVE_DYNAMIC_FTRACE_WITH_DIRECT_CALLS = lib.kernel.yes;
    HAVE_DYNAMIC_FTRACE_WITH_ARGS = lib.kernel.yes;
    HAVE_FTRACE_REGS_HAVING_PT_REGS = lib.kernel.yes;
    HAVE_DYNAMIC_FTRACE_NO_PATCHABLE = lib.kernel.yes;
    HAVE_DYNAMIC_FTRACE_WITH_JMP = lib.kernel.yes;
    HAVE_SYSCALL_TRACEPOINTS = lib.kernel.yes;
    HAVE_FENTRY = lib.kernel.yes;
    HAVE_OBJTOOL_MCOUNT = lib.kernel.yes;
    HAVE_OBJTOOL_NOP_MCOUNT = lib.kernel.yes;
    HAVE_C_RECORDMCOUNT = lib.kernel.yes;
    HAVE_BUILDTIME_MCOUNT_SORT = lib.kernel.yes;

    TRACE_CLOCK = lib.kernel.yes;

    RING_BUFFER = lib.kernel.yes;

    EVENT_TRACING = lib.kernel.yes;

    CONTEXT_SWITCH_TRACER = lib.kernel.yes;

    TRACING = lib.kernel.yes;

    GENERIC_TRACER = lib.kernel.yes;

    TRACING_SUPPORT = lib.kernel.yes;

    FTRACE = lib.kernel.yes;

    TRACEFS_AUTOMOUNT_DEPRECATED = lib.kernel.yes;

    BOOTTIME_TRACING = lib.kernel.no;

    FUNCTION_TRACER = lib.kernel.no;

    STACK_TRACER = lib.kernel.no;

    IRQSOFF_TRACER = lib.kernel.no;

    PREEMPT_TRACER = lib.kernel.no;

    SCHED_TRACER = lib.kernel.no;

    HWLAT_TRACER = lib.kernel.no;

    OSNOISE_TRACER = lib.kernel.no;

    TIMERLAT_TRACER = lib.kernel.no;

    MMIOTRACE = lib.kernel.no;

    FTRACE_SYSCALLS = lib.kernel.no;

    TRACER_SNAPSHOT = lib.kernel.no;

    BRANCH_PROFILE_NONE = lib.kernel.yes;

    PROFILE_ANNOTATED_BRANCHES = lib.kernel.no;

    BLK_DEV_IO_TRACE = lib.kernel.yes;

    KPROBE_EVENTS = lib.kernel.yes;

    UPROBE_EVENTS = lib.kernel.yes;

    EPROBE_EVENTS = lib.kernel.yes;

    DYNAMIC_EVENTS = lib.kernel.yes;

    PROBE_EVENTS = lib.kernel.yes;

    SYNTH_EVENTS = lib.kernel.no;

    USER_EVENTS = lib.kernel.no;

    HIST_TRIGGERS = lib.kernel.no;

    TRACE_EVENT_INJECT = lib.kernel.no;

    TRACEPOINT_BENCHMARK = lib.kernel.no;

    RING_BUFFER_BENCHMARK = lib.kernel.no;

    TRACE_EVAL_MAP_FILE = lib.kernel.no;

    FTRACE_STARTUP_TEST = lib.kernel.no;

    RING_BUFFER_STARTUP_TEST = lib.kernel.no;
    RING_BUFFER_VALIDATE_TIME_DELTAS = lib.kernel.no;
    RING_BUFFER_PERSISTENT_INJECT = lib.kernel.no;

    PREEMPTIRQ_DELAY_TEST = lib.kernel.no;

    KPROBE_EVENT_GEN_TEST = lib.kernel.no;

    RV = lib.kernel.no;

    TRACE_REMOTE_TEST = lib.kernel.no;

    PROVIDE_OHCI1394_DMA_INIT = lib.kernel.yes;

    SAMPLES = lib.kernel.no;

    HAVE_SAMPLE_FTRACE_DIRECT = lib.kernel.yes;
    HAVE_SAMPLE_FTRACE_DIRECT_MULTI = lib.kernel.yes;

    ARCH_HAS_DEVMEM_IS_ALLOWED = lib.kernel.yes;

    STRICT_DEVMEM = lib.kernel.yes;

    IO_STRICT_DEVMEM = lib.kernel.no;

    EARLY_PRINTK_USB = lib.kernel.yes;

    X86_VERBOSE_BOOTUP = lib.kernel.yes;

    EARLY_PRINTK = lib.kernel.yes;
    EARLY_PRINTK_DBGP = lib.kernel.yes;
    EARLY_PRINTK_USB_XDBC = lib.kernel.no;

    EFI_PGT_DUMP = lib.kernel.no;

    DEBUG_TLBFLUSH = lib.kernel.no;

    HAVE_MMIOTRACE_SUPPORT = lib.kernel.yes;

    X86_DECODER_SELFTEST = lib.kernel.no;

    IO_DELAY_0X80 = lib.kernel.yes;
    IO_DELAY_0XED = lib.kernel.no;
    IO_DELAY_UDELAY = lib.kernel.no;
    IO_DELAY_NONE = lib.kernel.no;

    DEBUG_BOOT_PARAMS = lib.kernel.yes;

    CPA_DEBUG = lib.kernel.no;

    DEBUG_ENTRY = lib.kernel.yes;
    DEBUG_NMI_SELFTEST = lib.kernel.no;

    X86_DEBUG_FPU = lib.kernel.yes;

    PUNIT_ATOM_DEBUG = lib.kernel.no;

    UNWINDER_ORC = lib.kernel.yes;
    UNWINDER_FRAME_POINTER = lib.kernel.no;

    KUNIT = lib.kernel.no;

    NOTIFIER_ERROR_INJECTION = lib.kernel.no;

    FUNCTION_ERROR_INJECTION = lib.kernel.no;

    FAULT_INJECTION = lib.kernel.no;

    ARCH_HAS_KCOV = lib.kernel.yes;

    KCOV = lib.kernel.no;

    RUNTIME_TESTING_MENU = lib.kernel.yes;

    TEST_DHRY = lib.kernel.no;

    LKDTM = lib.kernel.no;

    TEST_DIV64 = lib.kernel.no;
    TEST_MULDIV64 = lib.kernel.no;

    BACKTRACE_SELF_TEST = lib.kernel.no;

    TEST_REF_TRACKER = lib.kernel.no;

    RBTREE_TEST = lib.kernel.no;

    REED_SOLOMON_TEST = lib.kernel.no;

    INTERVAL_TREE_TEST = lib.kernel.no;

    PERCPU_TEST = lib.kernel.no;

    ATOMIC64_SELFTEST = lib.kernel.no;

    TEST_HEXDUMP = lib.kernel.no;
    TEST_KSTRTOX = lib.kernel.no;
    TEST_BITMAP = lib.kernel.no;
    TEST_XARRAY = lib.kernel.no;
    TEST_MAPLE_TREE = lib.kernel.no;
    TEST_RHASHTABLE = lib.kernel.no;
    TEST_IDA = lib.kernel.no;
    TEST_LKM = lib.kernel.no;
    TEST_BITOPS = lib.kernel.no;
    TEST_VMALLOC = lib.kernel.no;
    TEST_WORKQUEUE = lib.kernel.no;
    TEST_BPF = lib.kernel.no;

    FIND_BIT_BENCHMARK = lib.kernel.no;

    TEST_FIRMWARE = lib.kernel.no;
    TEST_SYSCTL = lib.kernel.no;

    CONTEXT_ANALYSIS_TEST = lib.kernel.no;

    LIVEUPDATE_TEST = lib.kernel.no;

    TEST_UDELAY = lib.kernel.no;
    TEST_STATIC_KEYS = lib.kernel.no;
    TEST_KMOD = lib.kernel.no;
    TEST_KALLSYMS = lib.kernel.no;
    TEST_MEMCAT_P = lib.kernel.no;
    TEST_MEMINIT = lib.kernel.no;
    TEST_FREE_PAGES = lib.kernel.no;
    TEST_FPU = lib.kernel.no;
    TEST_CLOCKSOURCE_WATCHDOG = lib.kernel.no;
    TEST_OBJPOOL = lib.kernel.no;
    TEST_KEXEC_HANDOVER = lib.kernel.no;

    ARCH_USE_MEMTEST = lib.kernel.yes;

    MEMTEST = lib.kernel.no;

    HYPERV_TESTING = lib.kernel.no;

    IO_URING_BPF = lib.kernel.yes;
}
