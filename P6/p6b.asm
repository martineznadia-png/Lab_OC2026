%include "../LIB/pc_iox.inc"

section .data
;N

section	.text

	global _start       ;must be declared for using gcc

_start:

mov ebx, 0x5C4B2A60
mov eax, 0x02202471

add ebx,eax
call pHex_dw

mov al, 10      ;cambio de linea
call putchar

push bx         ;se colocan los bits menos significativos a la pila

mov al,8        ;se coloca el valor de 8 en al
mul bl          ; se multuplica bl * al
mov N, ax       ; el resultado de la multiplicacion se guarda en ax y se mueven a N       

mov al,10       ;cambio de linea
call putchar    

inc byte [N]    ;se incrementa en 1 el valor que se guarda en N (d)

mov al,10       ;cambio de linea
call putchar    

mov ax, 0xFF
div bx 

load ax         ;se carga el resultado de la division (esta guardado en ax)
call pHex_w     ; se imprime

load dx         ;se carga el residuo de la division (esta guardado en dx)
call pHex_w     ;se imprime

mov al, 10      ;salto de linea
call putchar

load N          ;se carga N
add N, [dx]     ; a N se le suma el valor guardado en memoria de dx y se guarda el resultado en N

call pHex_dw    ;se imprime

mov al, 10
call putchar

pop ebx


mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel


