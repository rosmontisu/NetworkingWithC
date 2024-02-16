%include "io64.inc"

section .text
global main
main:
    mov rbp, rsp    
    
    ; 10회 루프
    mov ecx, 10
LABEL_LOOP:
    PRINT_STRING msg
    NEWLINE
    dec ecx ; sub ecx, 1
    cmp ecx, 0
    jne LABEL_LOOP

    ; 1 ~ 100 더하기
    ; 내코드
    mov ecx, 1
    mov edx, 0
LABEL_LOOP_SUM:
    add edx, ecx    
    add ecx, 1
    cmp ecx, 101
    jne LABEL_LOOP_SUM  
    PRINT_HEX 1, edx
    NEWLINE
    PRINT_DEC 4, edx
    NEWLINE
    
    ; 예제 코드
    mov eax, 100
    xor ebx, ebx ; mov ebx, 0
    xor ecx, ecx
LABEL_SUM:
    inc ecx ; add ecx, 1
    add ebx, ecx
    cmp ecx, eax
    jne LABEL_SUM
    PRINT_HEX 1, edx
    NEWLINE
    PRINT_DEC 4, ebx
    NEWLINE

    ; loop [라벨]
    ; - ecx에 반복 횟수, cx 레지스터에 이상한 값이 들어가지 않도록 주의
    ; - loop 할때마다 ecx 1감소, 0이면 지정한 라벨로 이동
    
    mov ecx, 100
    xor ebx, ebx
LOOP_FUN:
    add ebx, ecx
    loop LOOP_FUN
    PRINT_DEC 4, ebx
    NEWLINE
    
    xor rax, rax
    ret
section .data
    msg db 'Hello World', 0x00
