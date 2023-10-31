#include <iostream>
#include <iomanip>
#include <cstdlib>
#include <ctime>
#include "Parse.h"


using namespace std;

int main()
{
	int drawing;
	srand(time(nullptr));
	Parse DataIn();
	//Parse* Dataptr;

	drawing =  rand() % 3;



	switch (drawing)

	{
	case 0:
	{
		cout << "Drawing a flower.... /n";
		Parse DataIn("Flower.txt");
		while (DataIn.parseLine()) //Do not use endless loops in final product, bool in data in to stop loop 
		{

			DataIn.parseLine();
			
		}
		break;
	}

	case 1:
	{
		cout << "Drawing an ice cream ../n";
		Parse DataIn("Icecream.txt");
		while (DataIn.parseLine()) //Do not use endless loops in final product, bool in data in to stop loop 
		{

			DataIn.parseLine();
			
		}
		break;
	}
	case 2:
	{
		cout << "Saying hello../n";
		Parse DataIn("Howdy.txt");
		while (DataIn.parseLine()) //Do not use endless loops in final product, bool in data in to stop loop 
		{

			DataIn.parseLine();
			 
		}
		break;

	}


	return 0;
	}
}