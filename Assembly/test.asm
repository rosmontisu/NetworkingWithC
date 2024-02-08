%include "io64.inc"

section .text
global main
main:
    mov rbp, rsp
    ; rax = 1qword = 64bit
    ; eax = 1dword = 32bit
    ; ax = 1word = 16bit
    ; ah, al = 1byte = 8bit 
    
    ; 오른쪽에서 왼쪽으로 읽는다
    ; mov [reg1], cst : cst값을 reg1에 넣는다
    ; mov [reg1], [reg2] : reg2의 값을 reg1에 넣는다
    
    mov eax, 0x1234
    mov rbx, 0x12345678
    mov cl, 0xff
    
    mov al, 0x0
    mov bl, 0x0
    mov rax, rdx
    
    mov rax, var1 ; 메모리단 .data 의 변수에 접근
    ; rax <- var1 주소
    
    mov rax, [var1]
    ; rax <- var1 값

    xor rax, rax
    ret 

    ; section .data 는 init O -> file 어딘가에 데이터가 있어야 .exe실행시 메모리단에 올릴 수 있음으로
    ; section .bss  는 init X -> bss 영역은 전부 0으로 init, 실행 파일의 데이터 절약 가능 
    
    ; hex -> 0x0 -> 0000 -> 4bit
    ; section .data   
    ; define_byte   db dw dd dq 
    ;               1 2 4 8     : byte word dword qword
section .data
    ; [name] [size] [init_val]
    var1 db 0x12
    var2 dw 0x1234
    var3 dd 0x12341234
    var4 dq 0x1234123412341234
    
    
    ; section .bss
    ; resb resw resd resq
    ; byte word dword qword
section .bss
    ; [name] [size] [cnt]
    e resb 10
 
    
       
        
