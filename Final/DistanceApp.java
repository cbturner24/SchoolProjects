import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.shape.*;
import javafx.scene.paint.Color;
import javafx.scene.text.Text;
import java.util.Scanner;
import javax.swing.*;
import javafx.scene.control.*;
import javafx.geometry.*;
import javafx.scene.layout.*;
import javafx.event.*;
import javafx.scene.transform.Scale;


public class DistanceApp extends Application
{
	private TextField X1Text;
	private TextField X2Text;
	private TextField Y1Text;
	private TextField Y2Text;
    private Distance Dist; //class instance
    //private Scale scaleTransform;
    private Scale scaleTransform = new Scale(1, 1); // initialize here

  public static void main(String[] args)
  {
    launch(args);
  }

  @Override
  public void start(Stage primaryStage)
   {

    //initialize distance instance

     Dist = new Distance();

    // display instructions
     Label instrctlabel= new Label( "Instructions:");

     Text Instruct = new Text("Enter the coordinates, \n then the distance will be returned, \n it will be displayed on a triangle \n Please note: The distance line will be in red.\n");
     Button okbutton= new Button("Ok");

     VBox message = new VBox(10, instrctlabel,Instruct, okbutton);
     message.setAlignment(Pos.CENTER);

     Scene scene = new Scene(message, 300,300);
     scene.getStylesheets().add("Css1.css");

     primaryStage.setScene(scene);

      // Register event handler
      okbutton.setOnAction(new ButtonClickHandler(this, primaryStage));
     //show window
     primaryStage.show();
      }

    class ButtonClickHandler implements EventHandler<ActionEvent>
    {
		      private final DistanceApp parent;
		        private final Stage primaryStage;

		        public ButtonClickHandler(DistanceApp parent, Stage primaryStage) {
		            this.parent = parent;
		            this.primaryStage = primaryStage;
        }
		@Override
		public void handle(ActionEvent event)
		{
			Label Coordinates1 = new Label("Enter X1, Y1");
			parent.X1Text= new TextField();
            parent.Y1Text= new TextField();

             HBox Coord1 = new HBox(10, Coordinates1, parent.X1Text,  parent.Y1Text);

            Label Coordinates2 = new Label("Enter X2, Y2");
		    parent.X2Text= new TextField();
		    parent.Y2Text= new TextField();
            HBox Coord2 = new HBox(10,Coordinates2,  parent.X2Text, parent.Y2Text);
            Button CalcButton = new Button("Calculate");

             VBox Coorbox =new VBox(10, Coord1, Coord2, CalcButton);
             CalcButton.setAlignment(Pos.CENTER);
             Scene newScene = new Scene( Coorbox, 500, 300);

             primaryStage.setScene(newScene);
               newScene.getStylesheets().add("Css1.css");
             //Register event handler for calculation
            CalcButton.setOnAction(new CalcButtonHandler(parent,primaryStage ));
   }
 }

     class CalcButtonHandler implements EventHandler<ActionEvent>
     {
 		      private final DistanceApp parent;
 		        private final Stage primaryStage;

 		        public CalcButtonHandler(DistanceApp parent, Stage primaryStage) {
 		            this.parent = parent;
 		            this.primaryStage = primaryStage;
         }
 		@Override
 		public void handle(ActionEvent event)
		{

              final double SCENE_WIDTH= 400.0;
			final double SCENE_HEIGHT= 400.0;

			//Getting Coordinates to calculate distance
			double X1 = Double.parseDouble(parent.X1Text.getText());
		    double Y1 = Double.parseDouble(parent.Y1Text.getText());
			double X2 = Double.parseDouble(parent.X2Text.getText());
		    double Y2 = Double.parseDouble(parent.Y2Text.getText());



		    //Calculate distance

		     double distance = parent.Dist.CalcDistance(X1,X2,Y1,Y2);

             Label CalcLabel = new Label("distance: " + String.format("%.3f", distance));
		    //lines for triangle
		    Line Xline = new Line (1,1, 1,300);
            Line Yline = new Line (300,300, 1,300);
		    Line BCline = new Line(X2,Y2,X2,Y1);
		    Line ACline = new Line(X2,Y1,X1,Y1);
		    Line Distline = new Line(X1,Y1,X2,Y2);

		    //setting distance to a different color
		    Distline.setStroke(Color.RED);

           Button zoomButton = new Button("Zoom In");

           //Text objects
           Text Xtext = new Text(1,300, "X");
           Text Ytext = new Text(1,1, "Y");


        Pane Finalpane = new Pane(Xline, Yline, BCline, ACline, Distline, Xtext, Ytext);

		Finalpane.setOnMouseEntered(event2 -> {
		    // Display Coordinates

		    Text BText = new Text(X2, Y2, "(" + X2 + ", " + Y2 + ")");
		    Text CText = new Text(X2, Y1, "(" + X2 + ", " + Y1 + ")");
		    Text AText = new Text(X1, Y1, "(" + X1 + ", " + Y1 + ")");

             BText.setStyle("-fx-font-size: 10;");
             CText.setStyle("-fx-font-size: 10;");
             AText. setStyle("-fx-font-size: 10;");
		    // Add the Text objects to Finalpane
		    Finalpane.getChildren().addAll(BText, CText, AText);
});

           VBox results= new VBox( Finalpane, CalcLabel,zoomButton);

            results.setAlignment(Pos.CENTER);

           Scene finalScene= new Scene(results, SCENE_WIDTH, SCENE_HEIGHT);

           finalScene.getStylesheets().add("Css1.css");


         //register event handle

         zoomButton.setOnAction(new ZoomButtonHandler());

          primaryStage.setScene(finalScene);

         // Apply the scale transformation to the scene
        Finalpane.getTransforms().add(scaleTransform);
    }
}
   class ZoomButtonHandler implements EventHandler<ActionEvent> {
          @Override
          public void handle(ActionEvent event) {
              // Increase the scale factor for zooming in
              scaleTransform.setX(scaleTransform.getX() * 1.1);
              scaleTransform.setY(scaleTransform.getY() * 1.1);
          }
      }

}
