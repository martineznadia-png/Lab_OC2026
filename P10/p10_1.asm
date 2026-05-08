%include "../LIB/libpc_iox.inc"

select .text

global suma

suma:
    mov ebx
    mov ecx, [ebx+8]
    mov eax, [ebx+12]

    