#include "MoveToPoint.h"
#include "RhinoMath.h"
#include <iostream>
#include <cmath>

bool MoveToPoint::MoveToXY(PointXY XYPointNew)
{
	bool Didit;
	double Tick1Calc;
	double Tick2Calc;
	AnglePair CurrentAngs;


	CurrentAngs = RoboCalc.getAngpair(XYPointNew);  //Result in degrees

	//Servo Motor E
	Tick1Calc = RoboMotion.TickAng1 - (CurrentAngs.Ang1 / .12);
	Didit = RoboMotion.MotoMoveServo('E', Tick1Calc);
	RoboMotion.TickAng1 -= static_cast<int>(Tick1Calc);

	//Servo Motor D

	Tick2Calc = RoboMotion.TickAng2 - (CurrentAngs.Ang2 / .12);
	Didit = RoboMotion.MotoMoveServo('D', (Tick2Calc - Tick1Calc));
	RoboMotion.TickAng2 -= static_cast<int>(Tick2Calc);



	return true;
}
