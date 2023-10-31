#define _USE_MATH_DEFINES
#include "Circle.h"
#include <cmath>
#include <iostream>
#include <iomanip>
using namespace std;
//Initialize information needed to traverse circle.  Update for each new arc
void circle::DoitC(const PointXY& Pt1, const PointXY& Pt2, std::string dir, const double unitStep, PointXY& Cpt)
{        //Add Center point param
		 //Sub CP from start and end position then compute as follows;     
	PointXY WorkPt1;           //Lets make a working point and make a copy of Pt1 and 2
	PointXY WorkPt2;           //so we do not overwrite at the origin.
	WorkPt1.X = Pt1.X - Cpt.X;
	WorkPt1.Y = Pt1.Y - Cpt.Y;
	WorkPt2.X = Pt2.X - Cpt.X;
	WorkPt2.Y = Pt2.Y - Cpt.Y;

	counter = 0;


	initArc(WorkPt1, WorkPt2, unitStep); //Lets initArc using the working copy instead.

	double CCAngle1;                     //CCAngle1-2 used to determine distance to travel
	double CCAngle2;
	double TempAngleDist;

//	cout << "CW positive CCW negative\n";
	TempAngleDist = -(circle::AngleBWPoints(getAngle1(), getAngle2()));
	if (TempAngleDist > 0)
	{
		CCAngle2 = TempAngleDist;
		CCAngle1 = TempAngleDist - 360;
	}
	else
		CCAngle2 = TempAngleDist;

	if (AngleBWPoints(getAngle1(), getAngle2()) >= 0)  //set CCAngle 
	{
		CCAngle1 = (360 - AngleBWPoints(getAngle1(), getAngle2()));
	}
	else
	{
		CCAngle1 = -(360 + AngleBWPoints(getAngle1(), getAngle2()));
	}


	//From Angle 1 to Angle 2 where Ang1Degs < Ang2Degs
	//Need to add code to determine if CW G02 or CCW G03
	// if (Angle1 <  getAngle2()) modified from original code to allow CW and CCW plots
	test = getAngle2() + 360;  // Test data for break point to be removed
	if (dir == "CCW")
		//CCW G03  modified to allow cw or ccw
		//rather than just checking point.  See how this
		//test code produces a pos or neg value to select
		//from in determination of CW G02 or CCW C03 motion
		while (Angle1 < 360 + getAngle2() && dir == "CCW")// G03
		{
			test = 360 + getAngle2();
			PlotPoint = getXYAngleHyp(Angle1);  //Get current XYpoint
			//NOTE: !!!!!!!!!!!Create string to pass to movetoxy
			WorkingPtMv.X = PlotPoint.X + Cpt.X;
			WorkingPtMv.Y = PlotPoint.Y + Cpt.Y;
			cout << "X: " << fixed << setprecision(2) << WorkingPtMv.X
				<< "  Y: " << setprecision(2) << WorkingPtMv.Y << endl;
			RobotMovetoPoint->MoveToXY(WorkingPtMv);
			Angle1 += getStep();
		}
	else  //Then we are going CW.  Can we combine these two blocks?
	{
		test = getAngle2();
		while (Angle1 > (getAngle2()) && dir == "CW")//CC G02
		{
			test = getAngle2();
			PlotPoint = getXYAngleHyp(Angle1);  //Get current XYpoint
			//NOTE: !!!!!!!!!!!Create string to pass to movetoxy
			WorkingPtMv.X = PlotPoint.X + Cpt.X;
			WorkingPtMv.Y = PlotPoint.Y + Cpt.Y;
			cout << "X: " << fixed << setprecision(2) << WorkingPtMv.X
				<< "  Y: " << setprecision(2) << WorkingPtMv.Y << endl;
			RobotMovetoPoint->MoveToXY(WorkingPtMv);
			Angle1 -= getStep(); //Update to get next XYpoint
		}
	}
	
	WorkingPtMv.X = WorkPt2.X + Cpt.X;  //Lets use the working copy of Pt1 and 2
	WorkingPtMv.Y = WorkPt2.Y + Cpt.Y;
	cout << "X: " << fixed << setprecision(2) << WorkingPtMv.X
		<< "  Y: " << setprecision(2) << WorkingPtMv.Y << endl;
}




void  circle::initArc(const  PointXY& P1, const  PointXY& P2, const double UnitDistance)
{
	UnitDist = UnitDistance;                          //Unit distance of motion
	Angle1 = PointAngle(P1);		                  //Determine Angle1
	Angle2 = PointAngle(P2);                       //Determine Angle2
	AngleDist = AngleBWPoints(Angle1, Angle2);         //Abs angular distance Angle1 and Angle2
	Radius = sqrt(pow(P1.X, 2.0) + pow(P1.Y, 2.0)); //Determine Radius given a point on Circle
	Step = getAngleSteps(UnitDist, Radius);   //Determine angle step to traverse arc
	Steps = AngleDist / Step;                     //Number of steps if we use for loop
}

//Return XY point from Angle and stored radius.
PointXY  circle::getXYAngleHyp(double Angle)
{                     //This application has been converted
	PointXY ReturnXY; //to degrees for discussion.
	ReturnXY.X = (Radius * cos(Angle * (M_PI / 180)));
	ReturnXY.Y = (Radius * sin(Angle * (M_PI / 180)));
	return ReturnXY;
}


//Return the Circumfrence.
double circle::getCirc(double Radius) { return 2 * M_PI * Radius; }

//Return total number of steps around the circle
double circle::getAngleSteps(double UnitStep, double Radius)
{
	double circ = getCirc(Radius);
	return 360 / (circ / UnitStep);
}

double circle::PointAngle(const PointXY& P1)
{
	double Angle;
	//Lets check for axis crossings and return the angle as stated
	if (P1.X == 0.0 && P1.Y > 0.0) return  90.0; //Check zero crossings
	else if (P1.X == 0.0 && P1.Y > 0.0) return 180.0; //to avoid invalid trig
	else if (P1.X == 0.0 && P1.Y < 0.0) return 270.0; //function entries.
	//NOTE if starting at angle 0 and ending at angle 0, zero is returned.
													   //Converted to degrees for demonstratoion.
	Angle = atan(P1.Y / P1.X) * (180 / M_PI);             //C trig functions give angle within Quad.
	if (P1.X < 0.0 && P1.Y >  0.0)  Angle = 180.0 + Angle; //(-,+)
	else  if (P1.X <= 0.0 && P1.Y <= 0.0)  Angle = Angle + 180.0; //(-,-)
	else  if (P1.X > 0.0 && P1.Y < 0.0)  Angle = 360.0 + Angle; //(+,-)
	return Angle;
}

//Return absolute angular distance between Ang1 and Ang2
double circle::AngleBWPoints(double Ang1, double Ang2)
{
	double AngleDist = Ang1 - Ang2;
	return AngleDist;
}