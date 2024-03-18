#include <iostream>
using namespace std;

// char : 알파벳 / 숫자 문자를 나타낸다.
// wchar_t : 유니코드 문자를 나타낸다.

// ASCII
char ch = 'a';
char ch2 = '1';
char ch3 = 'a' + 1;

// UNICODE - UTF8, UTF16
// UTF8
// - 알파벳, 숫자 1byte (ASCII 동일한 번호)
// - 유럽 지역의 문자 2byte
// - 한글, 한자 등 3byte

// UTF16
// - 알파벳, 숫자, 한글, 한자 등 거의 대부분의 문자 2byte
// - 매우 예외적인 고대 문자만 4byte

wchar_t wch = L'안';	// 유니코드 형변환 L
wchar_t wch2 = 0xc548;

// Escape Sequence
// \0 = ascii 0 = NULL
// \t = ascii 9 = Tab
// \n = ascii 10 = LineFeed
// \r = ascii 13 = CarriageReturn
// \'
// ex) Enter -> \r\n

// 문자열의 끝은 NULL (0)


int main()
{
	// 스택 메모리는 초기화 되어있지 않다. 즉, 출력때 쓰레기값들이 보인다.
	char str[] = { 'h', 'e', 'l', 'l', 'o' };
	char str2[] = { 'h', 'e', 'l', 'l', 'o','\00'};
	char str3[] = "hello"; // 마지막에 null 값이 알아서 추가된다.

	wchar_t str4[] = L"world";


	// cout 은 char 전용
	cout << wch << endl;

	// wcout 기본적으로 한국어 인식이 안된다.
	wcout.imbue(locale("kor"));
	wcout << wch << endl;
	wcout << wch2 << endl;

	cout << str << endl;
	cout << str2 << endl;
	cout << str3 << endl;
	cout << str4 << endl;

	return 0;
}
