#ifndef RHRINOSPECIFIC_H
#define RHRINOSPECIFIC_H

#include "tserial.h"

class RhrinoSpecific
{
	Tserial robo;
	
public:
	double TickAng1 = 750.0;   //Represent the number of clicks to get from 0deg to 90deg
	double TickAng2 = 750.0;  //Represent the number of clicks to get from 0deg to 90deg
public:
	RhrinoSpecific() {
		char Ports[] = "COM4";
		robo.connect(Ports, 9600, spEVEN);
		Tserial* Robotptr = &robo;
	}
	bool MotoMoveServo(char c, int Distance); //  Distance in clicks or servo divisions

};
#endif