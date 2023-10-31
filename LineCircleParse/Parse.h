#ifndef PARSE_H
#define PARSE_H
#include "MasterHeader.h"
#include "RobotMotion2023.h"
#include "MoveToPoint.h"
#include "Circle.h"
#include <fstream>
#include <string>

	class Parse
	{
	private:
		RobotMotion2023 RoboTestDemo;
		RobotMotion2023* RMPtr = &RoboTestDemo;
		std::ifstream GCODEin;                 //GCode input file
		char     GCODE = ' ';             //Store Current G command
		double   CurrentX , CurrentY ;      //Store current position
		double   X = 0.0,//Store current target position  good place for a pointxy
			     Y = 0.0,//Store current target position
			     I = 0.0,//Store Center point position
			     J = 0.0;//Store Center point position
		unsigned index;      //Index to individual command ln.
		std::string CommandLine;  //Store individual command lines.
		PointXY Centertpt, targetpt;       //Added to allow passing to existing moveto cmd
		circle TestCirc;
	
	public:
		Parse(std::string nameFile) 
		{ GCODEin.open(nameFile);
		TestCirc.setMovetoPoint(RoboTestDemo.MoveToPtr); 
		}
		
		
		~Parse() { GCODEin.close(); }
		bool parseLine();
		void getGODE();
		void getX();
		void getY();
		void getI();
		void getJ();

	};

#endif // !PARSE_H