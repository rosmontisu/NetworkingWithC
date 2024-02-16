%include "io64.inc"

section .text
global main
main:
                mov rbp, rsp    
    
    ; 배열 선언 예약어 times
    
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
