#include <iostream>
using namespace std;

unsigned char flag;
const int AIR = 0;
const int STUN = 1;
const int POLYMORPH = 2;
const int INVINSIBLE = 3;
// 위 부분은 .rodata로 넘어가거나
// 전부 상수로 변환되거나(메모리차지x) 컴파일에 따라 다르다


// 전역 변수

// [데이터 영역]
// .data (초기값 o)
int a = 2;

// .bss (초기값 x)
int b;

// .rodata (read only)
const char* msg = "Hello World";

int main()
{
	int c = 3;

#pragma region 비트 연산
	flag = (1 << INVINSIBLE);
	flag |= (1 << POLYMORPH);

	bool invincible = ((flag & (1 << INVINSIBLE)) != 0);

#pragma endregion
}
