#include <iostream>
using namespace std;

int a = 1;
int b = 2;

int main(void)
{
#pragma region 산술 연산
	// 산술 연산자, 아래는 디어셈블리 시켜서 확인해봅시다
	
	// 대입연산
	a = b;

	// 사칙연산
	// add sub mul div
	// + - * / %

	a = a + 3;
	a = a - 3;
	a = a * 3;
	a = a / 3;
	a = a % 3;

	// 증감 연산
	// add eax, 1 또는 inc eax : 컴파일러나 설정따라 다르다. 
	a = a + 1; // add eax, 1
	a++;	   // inc eax
	++a;

	b = a++; // b = a -> a++
	b = ++a; // a++ -> b = a


#pragma endregion 
}
