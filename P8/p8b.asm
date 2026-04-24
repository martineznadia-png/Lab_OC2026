%include "../LIB/pc_iox.inc" 

section	.data
msg1	db  'El caracter ingresado es un numero',0xa,0 
msg2    db  'El caracter ingresado es una letra',0xa,0
msg     db  'Ingresa un caracter: ',0xa,0

section	.text

	global _start       ;must be declared for using gcc

_start:

mov edx,msg
call puts

call getche 
cmp al, '0'
jb letra
cmp al, '9'
jbe es_numero
jmp letra

mov al,10	; cambio de linea
call putchar

es_numero: mov edx, msg1
call puts 
jmp end_sec

letra: cmp al, 'A'
jb end_sec
cmp al, 'Z'
jbe es_letra

es_letra: mov edx, msg2
call puts 

end_sec: 
mov eax, 1	;system call number (sys_exit) -- fin del programa
int 0x80        ;call kernel