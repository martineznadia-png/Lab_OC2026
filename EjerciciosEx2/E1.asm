;Procedimiento llamado PrintStr para desplegar una cadena terminada en nulo (valor 0):
;Nota: Pude hacer uso del procedimiento putchar de la biblioteca usada en la prácticas de laboratorio
;Forma de uso:

             ;mov ebx, <cadena> ; cadena terminada en cero ya definida en .data
             ;call PrintStr

%include "../LIB/pc_iox.inc"

section .data

msg db "cadena de texto" ,0xa,0

section .text

    global _start

_start:

mov ebx, msg
call PrintStr

PrintStr:

    repetir:
    mov al, [ebx]
    cmp al, 0
    je fin

    call putchar

    inc ebx 
    jmp repetir

fin: mov eax, 1
int 0x80