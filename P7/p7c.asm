%include "../LIB/pc_iox.inc" 
 extern pBin_w

section	.text

	global _start       ;must be declared for using gcc

_start:

mov esi, 0x20D685F3
and esi, 0x60D495E2
;call pHex_w      ;imprime en hexadecimal
call pBin_w        ;imprime en binario

mov al,10	; cambio de linea
call putchar

mov eax, 1	;system call number (sys_exit) -- fin del programa
int 0x80        ;call kernel