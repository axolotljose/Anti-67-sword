/* Linker script for Anti-67 Sword mod */

SECTIONS
{
    /* Code section */
    .text : {
        *(.text)
        *(.text.*)
    }

    /* Read-only data */
    .rodata : {
        *(.rodata)
        *(.rodata.*)
    }

    /* Initialized data */
    .data : {
        *(.data)
        *(.data.*)
    }

    /* Uninitialized data */
    .bss : {
        *(.bss)
        *(.bss.*)
        *(COMMON)
    }

    /* Discard unnecessary sections */
    /DISCARD/ : {
        *(.MIPS.abiflags)
        *(.MIPS.options)
        *(.pdr)
        *(.reginfo)
        *(.comment)
        *(.note.*)
        *(.mdebug.*)
    }
}
