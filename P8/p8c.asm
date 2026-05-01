%include "../LIB/pc_iox.inc" 

section	.data
msg	db  'Ingresa un valor de 0 a 10',0xa,0 

section	.text

	global _start       ;must be declared for using gcc

_start:

mov edx,msg
call puts

call getche 

cmp al, '0'
jb sigue 
cmp al, '9'
ja sigue 
cmp al, '5'
jae end_sec 

mov al,10	; cambio de linea
call putchar

print_msg: mov edx, msg;
call puts 

end_sec: 
mov eax, 1	;system call number (sys_exit) -- fin del programa
int 0x80        ;call kernel