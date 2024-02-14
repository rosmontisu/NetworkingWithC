%include "io64.inc"

section .text
global main
main:
        mov rbp, rsp; for correct debugging  
    ; rax = 1qword = 64bit
    ; eax = 1dword = 32bit
    ; ax = 1word = 16bit
    ; ah, al = 1byte = 8bit 
    ; mov [reg1], cst : cst값을 reg1에 넣는다
    ; mov [reg1], [reg2] : reg2의 값을 reg1에 넣는다
  
    ;mov rax, var1
    ;mov rbx, var2
    ;mov ecx, var3
    ;mov dx, var4
    
    ; mov var4, byte 0x44
    ; 상수를 메모리에 올릴때는 크기 지정이 필요
    ; 0x00000044 의 형태가 0x44로 생략된거이기 때문에


    ; section .data 는 init O -> file 어딘가에 데이터가 있어야 .exe실행시 메모리단에 올릴 수 있음으로
    ; section .bss  는 init X -> bss 영역은 전부 0으로 init, 실행 파일의 데이터 절약 가능 
    
    ; hex -> 0x0 -> 0000 -> 4bit
    ; section .data   
    ; define_byte   db dw dd dq 
    ;               1 2 4 8     : byte word dword qword
    
    ; Text Data BSS Heap Stack
    
    mov rbp, rsp
    
    PRINT_STRING msg
    
    
    xor rax, rax
    ret
    
    
    
    
    ; 초기화 된 데이터
section .data
    ; msg db 'Hello World', 0x00
    msg db 0x48, 0x65, 0x6c, 0x6c, 0x6f, 0x20, 0x57, 0x6f, 0x72, 0x6c, 0x64, 0x0
    a db 0x11

    b dd 0x12345678
    ; intel, amd 환경에서는 little endian 방식으로 저장된다
    ; 0x78 56 34 12
    ; server <-> client 통신간의 endian 환경을 통일 시켜야한다.
    
     
    ; little endian - 캐스팅에 유리
    ; big endian - 숫자 비교에 유리

    ; resource? reserve?
    ; resb resw resd resq
    ; [name] [size] [cnt]
    
    ; 초기화 안된 데이터
section .bss
    e resb 10
     
 
    
       
        
