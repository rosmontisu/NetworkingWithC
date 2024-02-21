
%include "io64.inc"

section .text
global main
main:
    mov rbp, rsp    
    
    ; 함수 (procedure프로시저 subroutine서브루틴)
    ; step over(f10)  -  함수 진입 x
    ; step intro(f11) -  함수 진입 o 
            
    call PRINT_MSG 
    ; 함수 실행
    ; 라벨 점프와 유사하나 차이가 있음
    ; Stack Frame과 관련    
    
    mov eax, 10
    mov ebx, 15
    call MAX
    PRINT_DEC 4, ecx
    NEWLINE
                
    xor rax, rax
    ret 
    
PRINT_MSG:
    PRINT_STRING msg
    NEWLINE    
    ret ; call로 돌아간다

MAX:
    call PRINT_MSG
    
    cmp eax, ebx
    jg L1   ; eax > ebx / jump if A greater than B
    mov ecx, ebx
    jmp L2
L1:
    mov ecx, eax
L2:
    ret    
    
    ; 인자가 a b c d 레지스터로 처리 못할 정도로 많다면?
    ; eax, ebx에 이미 중요한 데이터가 있다면?
    ; .data .bss 를 사용해보자
    
    ; 다른 메모리 구조가 필요하다
    ; 유효 범위
    ; 정리
    
    ; stack 메모리 영역을 사용
    ; 함수의 메모장 같은 역할
    ; - 매개 변수 전달
    ; - 돌아갈 주소 관리
    
    ; 이름 크기 초기값
    ; db dw dd dq
section .data
    msg db 'Hello World', 0x00
    dd a 0
    dd b 0 
    dd c 0 
    ; 이런식으로 영구적인 메모리 사용은 낭비가 매우 심하다
    
section .bss
    num resb 10
    
    
