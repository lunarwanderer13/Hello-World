.global _start
.intel_syntax noprefix

_start"
    mov RAX, 1 ;sys_write
    mov RDI, 1 ;std_out
    mov ECX, [hello_world]
    mov EBX, 14
    syscall

    ;sys_exit
    mov RAX, 60
    mov RDI, 0
    syscall

hello_world:
    .asciz 'Hello, World!\n'
