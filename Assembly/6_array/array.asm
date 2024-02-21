%include "io64.inc"

section .text
global main
main:
    mov rbp, rsp    
    ; 배열 선언 예약어 times
    
    mov rax, a
    xor ecx, ecx
    
LOOP_LABEL:
    ; 0x01 0x00 0x01 0x00
    ; 0x0100 0x0100
    ; [b+ecx]일 경우 little endian 1 100 1 100 ... 출력이 된다
    PRINT_HEX 2, [b+ecx*2] ; 2칸씩 이동
        NEWLINE 
    inc ecx
    cmp ecx, 5
    jne LOOP_LABEL
    
    xor rax, rax
    ret 
section .data
    msg db 'Hello World', 0x00
    a db 0x01, 0x02, 0x03, 0x04, 0x05 ; 5byte   
    b times 5 dw 1 ; 5 * 2 = 10byte
    ; b라는 배열 데이터는 5개 크기는 word 초기값은 1
    ; [name] times [cnt] [size] [init]    
section .bss
    num resb 10
    
    
