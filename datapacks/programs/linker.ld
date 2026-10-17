SECTIONS
{
    . = 0x0000;
    .text : {
        *(.text.startup)
        *(.text .text.*)
    }
    .rodata : { *(.rodata .rodata.* .srodata .srodata.*) }
    .data : { *(.data .data.* .sdata .sdata.*) }
    .bss : { *(.bss .bss.* .sbss .sbss.*) }
    /DISCARD/ : { *(.comment .note.*) }
}
