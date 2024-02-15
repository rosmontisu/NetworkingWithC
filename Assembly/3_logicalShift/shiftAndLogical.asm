%include "io64.inc"

section .text
global main
main:
    mov rbp, rsp
    
    mov eax, 0x12345678
    PRINT_HEX 4, eax
    NEWLINE
    shl eax, 8
    PRINT_HEX 4, eax
    NEWLINE
    shr eax, 8
    PRINT_HEX 4, eax
    NEWLINE
    
    ; 응용
    ; SHL 연산은 10진수 기준 2배와 같다
    ; SHR 연산은 10진수 기준 /2와 같다
    ; 64 ObjectID 생성시에 유용하게 사용 가능
    
    mov al, 0b10010101
    mov bl, 0b01111100
    NEWLINE 
    
    PRINT_HEX 1, al
    NEWLINE
    xor al, bl
    PRINT_HEX 1, al
    NEWLINE 
    xor al, bl
    PRINT_HEX 1, al
    NEWLINE
    ; 동일값으로 XOR 두번하면 자기 자신으로 되돌아 오는 특성
    ; 암호학에서 유용 (value xor key)
    
    ; xor A, A 는 무조건 0
    ; mov A, 0 과 같다 (이동보다 xor비트 단위 연산이 더 빠르다)
    
    xor rax, rax
    ret
    
    ; 산술 시프트 -> 최상위 비트 유지
    ; 논리 시프트 -> 최상위 비트 변화
    
    
    
    
section .bss
    num resb 1
     
 
    
       
        
