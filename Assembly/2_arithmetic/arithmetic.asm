%include "io64.inc"

section .text
global main
main:
    mov rbp, rsp
    
    ; windows os 에서 지원하는 헬퍼 매크로
    
    ; GET_DEC [크기byte] [저장위치]
    GET_DEC 1, al
    GET_DEC 1, num
    
    
    ;PRINT_DEC 1, al
    ;NEWLINE
    ;PRINT_DEC 1, num
    
    ; arithmetic
    
    ; 더하기 연산
    ; add a, b (a = a + b)
    ; a는 레지스터 or 메모리
    ; b는 레지스터 or 메모리 or 상수
    ; 단, a b 모두 메모리 X
    
    ; 빼기 연산
    ; sub a, b (a = a - b)
    
    add al, 1   ; 레지스터 + 상수
    PRINT_DEC 1, al
    NEWLINE
    
    add al, [num] ; 레지스터 + 메모리
    PRINT_DEC 1, al
    NEWLINE
    
    add [num], byte 1 ; 메모리 + 상수
    PRINT_DEC 1, [num]
    NEWLINE
    
 
    
    ; 곱하기 연산 - a 레지스터가 기본적으로 예약되어 있다
    ; mul reg 
    ; - mul bl => al * bl
    ; -- 연산 결과를 ax에 저장
    ; - mul bx => ax * bx
    ; -- 연산 결과를 dx(상위 16비트) ax(하위 16비트)에 저장
    ; - mul ebx => eax * ebx
    
    ; ex) 5 * 8 
    mov ax, 0
    mov al, 5
    mov bl, 8
    mul bl
    PRINT_DEC 2, ax
    NEWLINE
    
    ; 나누기 연산
    ; div reg
    ; - div bl => ax / bl
    ; -- 연산 결과는 al(몫) ah(나머지) 저장
    
    ; ex) 100 / 3
    mov ax, 100
    mov bl, 3
    div bl
    PRINT_DEC 1, al
    NEWLINE
    MOV al, ah ; ah 레지스터는 PRINT_DEC으로 출력이 불가능
    PRINT_DEC 1, al
    NEWLINE
    
    
    
    xor rax, rax
    ret

    
section .bss
    num resb 1
     
 
    
       
        
