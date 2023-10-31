#pragma once
#ifndef MOVETOPOINT_H
#define MOVETOPOINT_H

#include "RhrinoSpecific.h"
#include "RhinoMath.h"

class MoveToPoint {
private:
   
    RhinoMath      RoboCalc;

public:
    RhrinoSpecific RoboMotion;
    bool MoveToXY(PointXY);
};

#endif