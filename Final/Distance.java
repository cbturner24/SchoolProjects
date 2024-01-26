
import java.util.*;

public class Distance{

private double X1, Y1, X2, Y2; //  coorinates
private double Distance;     //   distance



public Distance()
{}

public Distance(double X1, double X2, double Y1, double Y2, double Distance)
{
this.X1 = X1;
this.Y1 = Y1;
this.X2 = X2;
this.Y2 = Y2;
this.Distance = Distance;
}




public double CalcDistance(double X1, double X2, double Y1, double Y2)
 {

 return Math.sqrt(Math.pow(X2-X1,2) + Math.pow(Y2-Y1, 2));
}



}