%include "../LIB/pc_iox.inc" 

section .data
    msg     db  'Ingresa vector tamaño N: ', 0
    msg1   db  0xa, 'Ingrese un numero : ', 0
    val      db  0     

section .bss
    vector     resb 100 

section .text
    global _start

_start:
    
    mov edx, msg1
    call puts
    call getche
    sub al, '0'           
    mov [val], al
    
    xor ecx, ecx      
    mov edi, vector        

leer:
    cmp cl, [al]       
    jge fin 

    mov edx, msg1
    call puts

    call getche    

    cmp al, '0'
    jb  fin

    sub al, '0'   
    mov [edi + ecx], al 
    
    inc ecx           
    jmp leer


fin:
    mov eax, 1             ; sys_exit
    xor ebx, ebx           ; return 0
    int 0x80