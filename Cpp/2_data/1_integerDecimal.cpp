// 디어셈블리
// ctrl + alt + D

// 주석 생성, 제거
// ctrl + k, c
// ctrl + k, u

// 디버그 -> 창 -> 메모리

#include <iostream>

// 0이 아닌 초기값이 있다 .data 영역
int num1 = 100;

// 초기값이 0 or 초기값이 없다 .bss 영역
int num2;

// byte, word, dword, qword 와 비슷하다
// (signed) 가 생각되었다.
char a;     // 1byte (-128 ~ 127)
short b;    // 2byte (-32768 ~ 32767)
int c;      // 4byte (-21.4억 ~ 21.4억)
__int64 d;  // 8byte (long long) (엄청크다)


bool isHighLevel = true;

// 浮動소수점(소수점이 유연하게 떠있다)
// .을 유동적으로 움직여서 표현하는 방법

// 3.1415926535
// 3.1415926535 = 0.31415926535 * 10 = 314.15926535 * 10^-2
// 1) 정규화 = 0.31415926535 * 10
// 2) 31415926535(유효숫자) 1(지수)

// 지수의 곱은 2^n승이다.
// bit연산에서 2를 곱하면 (>> 1)과 같기 때문에
// float 부호(1) 지수(8) 유효숫자(23) = 32bit = 4byte
// double 부호(1) 지수(11) 유효숫자(52) = 64bit = 8byte

// float 형식은 숫자 뒤에 f를 붙이지 않으면 (double)된다
float atkSpd = -3.375f;      // 4byte
double atkSpd2 = 123.4123;  // 8byte

// 이진수는 0b를 붙여서 나타낸다.
// ex) -3.375라는 값을 저장
// 1) 2진수 변환 = (3) + (0.375) = 0b11 + 0b011 = 0b11.011
// (0.375) = 0.5*0 + 0.25*1 + 0.125*1 = 0b011
// 2) 정규화 0b1.1011 * 2^1
// 0b(부호).(유효숫자) * 2^(지수)
// 1(부호) 1(지수) 1011(유효숫자)
// 단 지수는 usigned byte라고 가정하고 숫자 + 127을 만들어준다.

// 0b (부호) (지수+127) (유효숫자 23bit) 
// 0b 1 10000000 1011000 0000 0000 0000 0000 


int main()
{
    std::cout << "Hello World!\n";
    std::cout << isHighLevel << std::endl;
}

