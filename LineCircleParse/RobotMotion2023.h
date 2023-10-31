#pragma once
#ifndef ROBOTMOTION2023_H
#define ROBOTMOTION2023_H

#include "MasterHeader.h"  //Common point and angle types
#include "Line.h"          //Developed week 3
#include "MoveToPoint.h"   //Used in last weeks main demo
#include "Circle.h"       // Circle file
#include "RhrinoSpecific.h"

class RobotMotion2023
{
private:
    //We need to set an XY reference point as we did with the 750,750
    PointXY CurrPos = { 9.0,9.0 }; //Home or overall start position
    PointXY CentPos = { 0.0,0.0 }; //Default center point for Arcs and Circles TBD
    Line LineTest;               //Instance of line object
    MoveToPoint   Rhino;         //Was in our main last week
   
public:   //       //0123            Target           Center for arcs+
    MoveToPoint* MoveToPtr = &Rhino;
    void Moveto(char Cmd, const PointXY TargPos,  PointXY CentPos);
    PointXY getCurrent() { return CurrPos; }
    void setCurrent(PointXY Cur) { CurrPos = Cur; }
    bool MotoMoveServoFout();
    bool MotoMoveServoFin();
  
};
#endif