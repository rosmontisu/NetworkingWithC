
#include <iostream>
using namespace std;

// 분기문


int main(void)
{
	int count = 0;
	
	/*while (count < 5)
	{
		cout << "Hello World" << endl;
		count++;
	}*/

	do
	{
		cout << "Hello World" << endl;
		count++;
	} while (false);

	for (count = 0; count < 5; count++)
	{
		cout << "Hello World" << endl;
	}

	// break; continue;
	// loop문의 흐름 제어 break, continue
}
