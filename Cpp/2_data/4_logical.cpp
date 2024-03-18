#include <iostream>
using namespace std;


int main(void)
{
#pragma region 데이터 연산
	// == isSame
	// != isDifferent
	// > isGreater
	// < isSmaller

	int a = 1;
	int b = 2;
	// cmp eax, ..ptr
	// eax와 ptr를 비교한다
	bool isSame;
	isSame = (a == b);


#pragma endregion

#pragma region 논리 연산
	// ! not
	// && and
	// || or

	int hp = 100;
	bool test;
	bool isInvinsible = false;
	test = (hp > 0 || isInvinsible == true); // 어셈블리로 분석해보자

#pragma endregion
}
