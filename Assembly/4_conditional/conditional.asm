%include "io64.inc"

section .text
global main
main:
    mov rbp, rsp
    
    ; asm 분기문
    ; compare destination source
    
    ; CMP dst, src   (dst 기준)
    ; 비교 결과물은 FLAG 레지스터에 저장
    
    ; JMP [label] 시리즈
    ; JMP : 무조건
    ; JE : JumpEquals 같으면
    ; JNE : JumpNotEquals 다르면
    ; JG : JumpGreater 크면 
    ; JGE : JumpGreaterEquals 크거나 같으면
    ; JL  
    ; JLE
    
    ; 두 숫자가 같으면 1, 아니면 0 출력    
    mov rax, 10
    mov rbx, 20 
    cmp rax, rbx 
    je LABEL_EQUAL
    
    ; je에 의해 jmp를 안했다면
    mov rcx, 0
    jmp LABEL_EQUAL_END

LABEL_EQUAL: 
    mov rcx, 1
LABEL_EQUAL_END:
    PRINT_HEX 1, rcx
    NEWLINE 
    
    ; 연습 문제
    ; 1~100 숫자 홀짝 판별
    ; 짝수(1), 홀수(0) 출력
    
    mov ax, 89
    mov bl, 2
    div bl
    ; 나머지 0이면 짝수    
    cmp ah, 0
    je EVEN
    
    mov rcx, 0
    jmp PRINT
    
    EVEN:
    mov rcx, 1
    PRINT:
    PRINT_HEX 1, rcx
    NEWLINE

    
    xor rax, rax
    ret
