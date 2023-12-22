import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.shape.Circle;
import javafx.scene.paint.Color;
import javafx.scene.text.Text;
import javafx.util.Duration;
import javafx.animation.TranslateTransition;

public class SolarSystem extends Application
{
  public static void main(String[] args)
  {
    launch(args);
  }

  @Override
  public void start(Stage primaryStage)
   {
    // Constants for scene size
    final double SCENE_WIDTH = 1280.0;
    final double SCENE_HEIGHT = 960.0;

    //Constants for solar system

      final double SUN_X = 640.0;
      final double SUN_Y = 480.0;
      final double SUN_RADIUS=75.0;

      final double MERCURY_X = 730.0;
	  final double MERCURY_Y = 400.0;
	  final double MERCURY_RADIUS=10.0;

      final double VENUS_X = 550.0;
	  final double VENUS_Y = 390.0;
	  final double VENUS_RADIUS=15.0;

	  final double EARTH_X = 850.0;
	  final double EARTH_Y = 430.0;
	  final double EARTH_RADIUS=20.0;

	  final double MARS_X = 390.0;
	  final double MARS_Y = 500.0;
	  final double MARS_RADIUS=23.0;

	  final double JUPITER_X = 780.0;
	  final double JUPITER_Y = 730.0;
	  final double JUPITER_RADIUS=28.0;

      final double SATURN_X = 930.0;
	  final double SATURN_Y = 680.0;
      final double SATURN_RADIUS=26.0;

      final double URANUS_X = 560.0;
	  final double URANUS_Y = 870.0;
      final double URANUS_RADIUS=32.0;

      final double NEPTUNE_X = 1100.0;
	  final double NEPTUNE_Y = 500.0;
      final double NEPTUNE_RADIUS=30.0;

      final double PLUTO_X = 200.0;
	  final double PLUTO_Y = 200.0;
      final double PLUTO_RADIUS= 5.0;



     //Constants for label of planets
     final double SUNTEXT_X = 625.0;
     final double SUNTEXT_Y = 400.0;
     final double FONT_SIZE = 14.0;

     final double MERCURYTEXT_X = 660.0;
	 final double MERCURYTEXT_Y = 370.0;

     final double VENUSTEXT_X = 470.0;
	 final double VENUSTEXT_Y = 400.0;

	 final double EARTHTEXT_X = 780.0;
	 final double EARTHTEXT_Y = 400.0;

	 final double MARSTEXT_X = 415.0;
	 final double MARSTEXT_Y = 490.0;

     final double JUPTEXT_X = 780.0;
	 final double JUPTEXT_Y = 675.0;

	 final double SATTEXT_X = 890.0;
	 final double SATTEXT_Y = 620.0;

	 final double URANTEXT_X = 500.0;
	 final double URANTEXT_Y = 840.0;

	 final double NEPTTEXT_X = 1000.0;
	 final double NEPTTEXT_Y = 500.0;

  	 final double PLUTOTEXT_X = 200.0;
	 final double PLUTOTEXT_Y = 170.0;

    // Movement
     final double MercEnd_X = 700.0;
     final double MercEnd_Y = 390.0;

	 final double VenusEnd_X = 530.0;
	 final double VenusEnd_Y = 410.0;

     final double EarthEnd_X = 850.0;
	 final double EarthEnd_Y = 400.0;

     final double MarsEnd_X = 410.0;
	 final double MarsEnd_Y = 520.0;

     final double JupEnd_X = 800.0;
	 final double JupEnd_Y = 710.0;

	 final double SatEnd_X = 940.0;
	 final double SatEnd_Y = 650.0;

	 final double UranEnd_X = 570.0;
	 final double UranEnd_Y = 870.0;

     final double NeptEnd_X = 1100.0;
	 final double NeptEnd_Y = 490.0;

	 final double PlutoEnd_X = 190.0;
	 final double PlutoEnd_Y = 205.5;


     // Animation duration
     final double ONE_SEC=3000.0;

    // circle objects for each planet
     Circle Sun = new Circle(SUN_X,SUN_Y,
                             SUN_RADIUS, Color.ORANGE);
     Circle Belt = new Circle(SUN_X,SUN_Y, 265.0);
     Circle Mercury = new Circle(MERCURY_RADIUS, Color.BROWN);
     Circle Venus = new Circle(VENUS_RADIUS, Color.TAN);
     Circle Earth = new Circle(EARTH_RADIUS, Color.BLUE);
     Circle Mars = new Circle(MARS_RADIUS, Color.RED);
     Circle Jupiter = new Circle(JUPITER_RADIUS, Color.SALMON);
     Circle Saturn = new Circle(SATURN_RADIUS, Color.YELLOW);
     Circle Uranus = new Circle(URANUS_RADIUS, Color.TEAL);
	 Circle Neptune = new Circle(NEPTUNE_RADIUS, Color.STEELBLUE);
     Circle Pluto = new Circle(PLUTO_RADIUS, Color.DARKRED);


    Belt.setFill(null);
    Belt.setStroke(Color.GREY);





    // Transition objects
     TranslateTransition MercTrans=
      new TranslateTransition(new Duration(ONE_SEC), Mercury);
      MercTrans.setFromX(MERCURY_X);
      MercTrans.setFromY(MERCURY_Y);
      MercTrans.setToX(MercEnd_X);
      MercTrans.setToY(MercEnd_Y);

	  TranslateTransition VenusTrans=
	   new TranslateTransition(new Duration(ONE_SEC), Venus);
	   VenusTrans.setFromX(VENUS_X);
	   VenusTrans.setFromY(VENUS_Y);
	   VenusTrans.setToX(VenusEnd_X);
       VenusTrans.setToY(VenusEnd_Y);

       TranslateTransition EarthTrans=
	   new TranslateTransition(new Duration(ONE_SEC), Earth);
	   EarthTrans.setFromX(EARTH_X);
	   EarthTrans.setFromY(EARTH_Y);
	   EarthTrans.setToX(EarthEnd_X);
       EarthTrans.setToY(EarthEnd_Y);

       TranslateTransition MarsTrans=
	   new TranslateTransition(new Duration(ONE_SEC), Mars);
	   MarsTrans.setFromX(MARS_X);
	   MarsTrans.setFromY(MARS_Y);
	   MarsTrans.setToX(MarsEnd_X);
       MarsTrans.setToY(MarsEnd_Y);

        TranslateTransition JupTrans=
	    new TranslateTransition(new Duration(ONE_SEC), Jupiter);
	   	JupTrans.setFromX(JUPITER_X);
	   	JupTrans.setFromY(JUPITER_Y);
	   	JupTrans.setToX(JupEnd_X);
	    JupTrans.setToY(JupEnd_Y);

	    TranslateTransition SatTrans=
	    new TranslateTransition(new Duration(ONE_SEC), Saturn);
		SatTrans.setFromX(SATURN_X);
	    SatTrans.setFromY(SATURN_Y);
	    SatTrans.setToX(SatEnd_X);
	    SatTrans.setToY(SatEnd_Y);

	     TranslateTransition UranTrans=
		 new TranslateTransition(new Duration(ONE_SEC), Uranus);
		 UranTrans.setFromX(URANUS_X);
		 UranTrans.setFromY(URANUS_Y);
		 UranTrans.setToX(UranEnd_X);
		 UranTrans.setToY(UranEnd_Y);

        TranslateTransition NeptTrans=
		 new TranslateTransition(new Duration(ONE_SEC), Neptune);
		 NeptTrans.setFromX(NEPTUNE_X);
		 NeptTrans.setFromY(NEPTUNE_Y);
		 NeptTrans.setToX(NeptEnd_X);
		 NeptTrans.setToY(NeptEnd_Y);


        TranslateTransition PlutoTrans=
		 new TranslateTransition(new Duration(ONE_SEC), Pluto);
		 PlutoTrans.setFromX(PLUTO_X);
		 PlutoTrans.setFromY(PLUTO_Y);
		 PlutoTrans.setToX(PlutoEnd_X);
		 PlutoTrans.setToY(PlutoEnd_Y);


    // Text objects for solar system

     Text SunText = new Text(SUNTEXT_X, SUNTEXT_Y, "SUN");
     Text MercuryText = new Text(MERCURYTEXT_X,
                                 MERCURYTEXT_Y, "MERCURY");
      Text VenusText = new Text(VENUSTEXT_X,
                                 VENUSTEXT_Y, "VENUS");
      Text EarthText = new Text(EARTHTEXT_X,
	                             EARTHTEXT_Y, "EARTH");
      Text MarsText = new Text(MARSTEXT_X,
	                             MARSTEXT_Y, "MARS");
      Text JupText = new Text(JUPTEXT_X,
 	                             JUPTEXT_Y, "JUPITER");
      Text SatText = new Text(SATTEXT_X,
	   	                             SATTEXT_Y, "SATURN");
      Text UranText = new Text(URANTEXT_X,
	   	                             URANTEXT_Y, "URANUS");
      Text NeptText = new Text(NEPTTEXT_X,
	   	                             NEPTTEXT_Y, "NEPTUNE");

      Text PlutoText = new Text(PLUTOTEXT_X,
 	   	                             PLUTOTEXT_Y, "PLUTO");
      Text AstroBelt = new Text(600, 200, "AstroBelt");



     Pane pane = new Pane(Sun, SunText, Belt,AstroBelt, Mercury, MercuryText,
                          Venus, VenusText, Earth, EarthText,
                          Mars, MarsText, Jupiter, JupText,
                          Saturn, SatText, Uranus, UranText,
                          Neptune, NeptText, Pluto, PlutoText);


     //Display
     Scene scene = new Scene(pane, SCENE_WIDTH, SCENE_HEIGHT);
     primaryStage.setScene(scene);
     primaryStage.show();

     // Play Animation
     MercTrans.play();
     VenusTrans.play();
     EarthTrans.play();
     MarsTrans.play();
     JupTrans.play();
     SatTrans.play();
     UranTrans.play();
     NeptTrans.play();
     PlutoTrans.play();
   }

 }


