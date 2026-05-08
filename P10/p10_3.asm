%include "../LIB/pc_iox.inc" 

section .text
global getBit

getBit:
    push ebp
    mov ebp ,esp
    mov ecx, [ebp + 12]
    mov eax, [ebp + 8]
    inc ecx
    shr eax, cl

    jc es_uno

    mov eax, 0
    jmp fin

    es_uno: mov eax, 1

    fin: 
    pop ebp
    ret