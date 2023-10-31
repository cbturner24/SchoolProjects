#include <iostream>
#include <iomanip>
#include "MasterHeader.h"
#include "RobotMotion2023.h"
using namespace std;

void RobotMotion2023::Moveto(char Cmd, const PointXY TargPos, PointXY CentPos)
{
    //WE will compartmentalize this later after it works
    PointXY WorkingXY = TargPos;
    PointXY XYPair{ 0,0 };
    WorkingXY.X -= CurrPos.X;  //Construct line points from the origin
    WorkingXY.Y -= CurrPos.Y;
    PointXY Pt2;
    PointXY Pt1;

    //Line specific - Will simplify once working
    double angle;           //Holds the angle of travel.
    double distance;        //Holds length of travel.
    double unitstep = 0.2;  //Set line segment distance.
    double steps;           //Holds num. steps for loop.
    PointXY Ptret;          //Working return variable for points.


    int testint;
    switch (Cmd)
    {
    case '0':
    case '1': //code to call line
        Pt2.X = (TargPos.X - CurrPos.X); Pt2.Y = (TargPos.Y - CurrPos.Y); //Target destination point.
        Pt1.X = 0; Pt1.Y = 0;                                                                         //We will assume lines start at origin.
        angle = LineTest.getAngleFromXY(Pt1, Pt2);                                  //Get direction angle.
        distance = LineTest.getLength(Pt1, Pt2);                                         //Get length of travel.
        steps = LineTest.getLineSteps(unitstep);                                         //Get number of steps.
        // cout << "  Distance: " << distance << endl;
         // cout << "     Angle: " << angle << endl;
       //  cout << "Unit Steps: " << steps << endl << endl;

        distance = 0; //Assume line starts at (0,0) you will need to add the
                 //offset to project to robot position.
        for (int i = 0; i < steps; i++)
        {
            distance += unitstep;                                                      //Update distance by unit step distance
            Ptret = LineTest.getNextPt(angle, Pt1, Pt2, distance); //Get next point
            //account for offset to current robot position
            cout << fixed << setprecision(2) << " " << Ptret.X + CurrPos.X << "  "; //X
            cout << fixed << setprecision(2) << " " << Ptret.Y + CurrPos.Y << endl; //Y
            XYPair.X = Ptret.X + CurrPos.X;

            XYPair.Y = Ptret.Y + CurrPos.Y;
            Rhino.MoveToXY(XYPair);
        }
        //Move to final destination which is < unit step distance.
        cout << fixed << setprecision(2) << " " << Pt2.X + CurrPos.X << "  "; //X
        cout << fixed << setprecision(2) << " " << Pt2.Y + CurrPos.Y << endl;//Y
        XYPair.X = Pt2.X + CurrPos.X;
        XYPair.Y = Pt2.Y + CurrPos.Y;
        Rhino.MoveToXY(XYPair);
        CurrPos = TargPos;
        //testint = 2;  //Test point to make a break point (remove before flight)
        break;
    case '2':
        cout << "called G2" << endl;
        Pt2.X = TargPos.X;
        Pt2.Y = TargPos.Y;

        Pt2.X = CurrPos.X;
        Pt2.X = CurrPos.Y;
      
       break; 

    case '3':
        cout << "called G3" << endl;
  
        break;
    default: cout << "Where am I " << endl;
    } //Have moved to target
    //Store target into current position after we arrive
    CurrPos.X = TargPos.X;
    CurrPos.Y = TargPos.Y;
}

bool RobotMotion2023::MotoMoveServoFout() // lifts pen off white board 
{
    Rhino.RoboMotion.MotoMoveServo('F', -20);

    return true;
}

bool RobotMotion2023::MotoMoveServoFin() // puts pen back on white board 
{

    Rhino.RoboMotion.MotoMoveServo('F', 20);
    return true;
}