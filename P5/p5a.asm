%include "../LIB/pc_io.inc"  	; incluir declaraciones de procedimiento externos
								; que se encuentran en la biblioteca libpc_io.a

section	.data
msg	db  'abcdefghijklmnopqrstuvwxyz0123456789',0xa,0 

section	.text
	global _start       ;referencia para inicio de programa
	
_start:                   
	mov edx, msg		; edx = dirección de la cadena msg
	call puts			; imprime cadena msg terminada en valor nulo (0)

	mov ah, 'Z'			;muevo 'Z' a un registro de 8 bits (al) que es el tamaño de char
	mov [msg], ah		;se mueve al a la cadena de texto

	mov edx, msg 		;muevo la cadena de texto a edx
	call puts			;imprime la cadena de texto

	mov	eax, 1	    	; seleccionar llamada al sistema para fin de programa
	int	0x80        	; llamada al sistema - fin de programa
