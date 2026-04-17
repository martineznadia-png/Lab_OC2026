%include "../LIB/pc_iox.inc" 
 extern pBin_dw

section	.text

	global _start       ;must be declared for using gcc

_start:

mov eax, 0x22446688
ror eax, 4
;call pHex_dw        ;imprime en hexadecimal
call pBin_dw         ;imprime en binario

mov al,10	; cambio de linea
call putchar

mov eax, 1	;system call number (sys_exit) -- fin del programa
int 0x80        ;call kernel