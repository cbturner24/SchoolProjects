#define _USE_MATH_DEFINES
#include <math.h>
#include <iostream>
#include "Line.h"


using namespace std;

Line::Line(float Len)
{
	Length = Len;
}

double Line::getLength(PointXY Pt1, PointXY Pt2)
{
	setLength(Pt1, Pt2);
	return Length;
}

//Return length of travel distance
void   Line::setLength(PointXY Pt1, PointXY Pt2)
{
	Length = sqrt(pow((Pt2.X), 2) + pow((Pt2.Y), 2));
}

PointXY Line::getNextPt(double Angle, PointXY Start, PointXY End, double Dist)
{
	PointXY ReturnXY;
	ReturnXY.Y = (Dist * cos(Angle * (M_PI / 180)));
	ReturnXY.X = (Dist * sin(Angle * (M_PI / 180)));
	//Inverse for Quads 3 and 4
	if ((End.X <= 0 && End.Y < 0) || (End.X > 0 && End.Y < 0))
	{
		ReturnXY.Y = -ReturnXY.Y;
		ReturnXY.X = -ReturnXY.X;
	}
	return ReturnXY;
}

double Line::getAngleFromXY(PointXY Pt1, PointXY Pt2)
{
	double Rads = atan((Pt2.X - Pt1.X) / (Pt2.Y - Pt1.Y));
	return (180 / M_PI) * Rads;
}

double  Line::getLineSteps(double UnitStep)
{
	return int(Length / UnitStep);
}




