
#include "Parse.h"
#include <iostream>
#include <iomanip>



bool Parse::parseLine()
{
    
    unsigned LineLength;  //Hold lengtgh of current line.
    if (!GCODEin.eof() && GCODE != '8')    //Read if not end of file
        getline(GCODEin, CommandLine);
    else
        
        return false ;

    LineLength = CommandLine.length();

    //Collect G XYIJ values in each line
    for (index = 0; index < LineLength; index++)
    {
        //cout << CommandLine[index];
        switch (CommandLine[index])
        {
        case 'G': getGODE();
            break;
        case 'X': getX();
            break;
        case 'Y': getY();
            break;
        case 'I': getI();
            break;
        case 'J': getJ();
            break;
          
        }
    }
    //std::cout << "G0" << GCODE << " X" << std::setw(7) << X << " Y" << std::setw(7) << Y
    //    << " I" << std::setw(7) << I << " J" << std::setw(7) << J;
  // PointXY Centerpt, targetpt;
    targetpt.X = X;
    targetpt.Y = Y;
    Centertpt.X = I;
    Centertpt.Y = J;
    switch (GCODE)
    {
    case '0': 
        
         //call line class and populate the Gcommand in the class
                  //IF Z != 1 move waist out 10 clicks set flag('QuilOutFlag'on board)
                  //  move out 10 clicks and set QuilOutFlag to true
                  //If Z == 0 check flag('QuilOutFlag'are we out) and move in 10
                  //  move  in 10 clicks and set 'QuilOutFlag' to false
                  //Add Mov XY for speed,.. or you can use line, 
        RoboTestDemo.MotoMoveServoFout();
        std::cout << "G0" << GCODE << " X" << std::setw(7) << X << " Y" << std::setw(7) << Y
            <<std::endl;
        RoboTestDemo.Moveto('1', targetpt, Centertpt);
        RoboTestDemo.MotoMoveServoFin();
       
        break;


    case '1': //call line class and populate the Gcommand in the class
        std::cout << "G0" << GCODE << " X" << std::setw(7) << X << " Y" << std::setw(7) << Y
            << std::endl;
        RoboTestDemo.Moveto('1', targetpt, Centertpt); //G01
        //call to line method
        break;


    case '2': //call circle CW  and populate the Gcommand in the class
        std::cout << "G0" << GCODE << " X" << std::setw(7) << X << " Y" << std::setw(7) << Y
            << " I" << std::setw(7) << I << " J" << std::setw(7) << J << std::endl;
        
        TestCirc.DoitC(RoboTestDemo.getCurrent(), targetpt, "CCW", .2, Centertpt);
        RoboTestDemo.setCurrent(targetpt);
        
        break;
    case '3': //call circle CCW and populate the Gcommand in the class

        std::cout << "G0" << GCODE << " X" << std::setw(7) << X << " Y" << std::setw(7) << Y
            << " I" << std::setw(7) << I << " J" << std::setw(7) << J << std::endl;
  
        TestCirc.DoitC(RoboTestDemo.getCurrent(), targetpt, "CW", .2, Centertpt);
        RoboTestDemo.setCurrent(targetpt);
        break;

        return true;
    }
}

void Parse::getI()
{
    std::string Temp = "";
    while (isdigit(CommandLine[++index]) || CommandLine[index] == '.')
        Temp.append(1, CommandLine[index]); //Append characters to a temp string
    I = atof(Temp.c_str());
    --index;
}

void Parse::getJ()
{
    std::string Temp = "";
    while (isdigit(CommandLine[++index]) || CommandLine[index] == '.')
        Temp.append(1, CommandLine[index]);
    J = atof(Temp.c_str());
    --index;
}

void Parse::getY()
{
    std::string Temp = "";
    while (isdigit(CommandLine[++index]) || CommandLine[index] == '.')
        Temp.append(1, CommandLine[index]);
    Y = atof(Temp.c_str());
    --index;
}

void Parse::getX()
{
    std::string Temp = "";
    while (isdigit(CommandLine[++index]) || CommandLine[index] == '.')
        Temp.append(1, CommandLine[index]);
    X = atof(Temp.c_str());
    --index;
}

void Parse::getGODE()
{
    GCODE = CommandLine[2]; //Grab the actual charcter for the G0,1,2,or 3
    index = 2;
}