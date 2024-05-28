#include <iostream>
using namespace std;

// 분기문

int main(void)
{
	const int ROCK = 0;
	const int PAPER = 1;
	const int SCISSORS = 2;

	int input = ROCK;

	if (input == ROCK)
		cout << "rock" << endl;
	else if (input == PAPER)
		cout << "paper" << endl;
	else if (input == SCISSORS)
		cout << "scissors" << endl;
	else
		cout << "?" << endl;

	// switch - case
	switch (input)
	{
	case ROCK:
		cout << "rock" << endl;
		break;
	case PAPER:
		cout << "paper" << endl;
		break;
	case SCISSORS:
		cout << "scissors" << endl;
		break;
	default:
		cout << "?" << endl;
		break;
	}
}
