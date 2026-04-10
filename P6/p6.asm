%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:

mov ebx, 0x5C4B2A60
mov eax, 0x02202471

add ebx, eax

call pHex_dw

mov al,10	; cambio de linea
	call putchar

mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel


