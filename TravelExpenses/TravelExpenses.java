import java.util.*;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.stage.Stage;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.layout.GridPane;
import javafx.geometry.Pos;
import javafx.geometry.Insets;
import javafx.scene.control.TextField;
import javafx.scene.control.Label;
import javafx.scene.control.Button;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;

public class TravelExpenses extends Application
{
  private TextField TripDays;
  private TextField Airfare;
  private TextField Rental;
  private TextField Miles;
  private TextField Parking;
  private TextField Taxi;
  private TextField Reg;
  private TextField Lodge;
  private Label ExpenseLabel;
  private Label ResultsLabel;
    public static void main(String[] args)
    {
        launch(args);
    }

  @Override
  public void start(Stage primaryStage)
  {
	   Label WelcomeLabel = new Label("Enter the amount in each box, if N/A enter 0.");

    //Create label to ask for Days on trip
    Label DaysLabel = new Label("Enter the amount of days on trip");

    //Create TextField for input
    TripDays = new TextField();

     //Create label to ask for Airfare
     Label FareLabel = new Label("Enter airfare amount");

     //Create TextField for input
     Airfare = new TextField();

      //Create label for car rental fees
	  Label RentalLabel = new Label("Enter any Car Rental fees");

	  //Create TextField for input
      Rental = new TextField();

      //Create label for miles fees
	  Label MilesLabel = new Label("if private car used, enter miles.");

	  //Create TextField for input
      Miles = new TextField();

      //Create Parking for miles fees
	  Label ParkingLabel = new Label("Enter Parking Fees");

       //Create TextField for input
      Parking = new TextField();


	  //Create Parking for miles fees
	  Label TaxiLabel = new Label("Enter any Taxi Charges ");

	  //Create TextField for input
	  Taxi = new TextField();

   //Create Parking for miles fees
 	  Label RegLabel = new Label("Enter any Conference/Seminar fees ");

 	  //Create TextField for input
 	  Reg = new TextField();

     //Create Parking for miles fees
	 Label LodgingLabel = new Label("Enter any Lodging fees ");

	 //Create TextField for input
	 Lodge= new TextField();


     // Button to calculate
     Button ExpenseButton = new Button("Get Expenses");

     // Register the event handler
     ExpenseButton.setOnAction( new EventHandler<ActionEvent>()
     {
		@Override
		public void handle(ActionEvent event)
		{
			double Fees=0.0;
            double Driven =0.0;
            double Taxich = 0.0;
            double fare = 0.0;

			//get days spent on trip
			int days = Integer.parseInt(TripDays.getText());

			// calculate most lodging covered by company
			double CompanyLodge = days * 195.00;
			double Meals = days * 47;

			//get Airfare spent on trip
 			if (fare > 0){
			 fare = Double.parseDouble(Airfare.getText());
			}else{
				fare = 0;
		     }

			//get Rental fees spent on trip
			double CarRental = Double.parseDouble(Rental.getText());

           //get miles driven on trip
	  	   double MilesDriven = Double.parseDouble(Miles.getText());

           if (Driven > 0){
		   		     Driven=MilesDriven *.42;;
		   		    }else {
		                Driven =0;
		    }

           //get Parking fees spent on trip
		   double ParkFees = Double.parseDouble(Parking.getText());
		    if (ParkFees > 0){
		     Fees=(20 *days)/ParkFees;
		      }else {
               Fees =0;
		      }
		   //get Taxi Charges on trip
	       double TaxiChar = Double.parseDouble(Taxi.getText());
            if (TaxiChar > 0){
		   		     Taxich = (40*days)/TaxiChar;
		   		    }else {
		                Taxich =0;
		    }

          //get Conference/Seminar fees spent on trip
	 	  double ConFee = Double.parseDouble(Reg.getText());

       	 //get Lodging Charges  on trip
		 double Lodging = Double.parseDouble(Lodge.getText());

		 //caculate expenses
		 double total= Lodging + ConFee + TaxiChar + ParkFees
		               + MilesDriven + CarRental + fare;
		 double covered= Meals + CompanyLodge + Driven
		                 + Fees + Taxich;
		 double saved = total- covered;

			if ( saved > 0){

			ExpenseLabel.setText(" Expenses: "+  String.format("%.2f", total)
		                                      + " Allowable Expenses:" + String.format("%.2f", covered)
		                                      + " You Owe:" + saved);
			}
			else
			{
				ExpenseLabel.setText("Expenses: " + String.format("%.2f", total)
		                               + " Allowable Expenses:" +  String.format("%.2f", covered)
		                               + "  Saved:" + String.format("%.2f", Math.abs(saved)));
		  }
	 }
 });



   //Create an empty Label to display expenses
       ExpenseLabel = new Label();

  //create a GridPane
  GridPane gridpane = new GridPane();

  //add Labels to GridPane
  gridpane.add(DaysLabel,0,0);
  gridpane.add(FareLabel, 0,1);
  gridpane.add(RentalLabel, 0,2);
  gridpane.add(MilesLabel, 0,3);
  gridpane.add(ParkingLabel, 0,4);
  gridpane.add(TaxiLabel, 0,5);
  gridpane.add(RegLabel, 0,6);
  gridpane.add(LodgingLabel, 0,7);

 // add textfields to GridPane
  gridpane.add(TripDays, 1,0);
  gridpane.add(Airfare, 1,1);
  gridpane.add(Rental, 1,2);
  gridpane.add(Miles, 1,3);
  gridpane.add(Parking, 1,4);
  gridpane.add(Taxi, 1,5);
  gridpane.add(Reg, 1,6);
  gridpane.add(Lodge, 1,7);

  //set gap sizes
   gridpane.setVgap(40);
   gridpane.setHgap(40);


VBox vbox = new VBox(30, WelcomeLabel, gridpane, ExpenseButton, ExpenseLabel);

 //vbox alignment
 vbox.setAlignment(Pos.CENTER);

  // vbox padding
  vbox.setPadding(new Insets(80));

  //Create a Scene
  Scene scene = new Scene(vbox);

  // All scene to stage
  primaryStage. setScene(scene);

  //Set stage title
  primaryStage.setTitle("Travel Expenses");

     //show the window
     primaryStage.show();
   }
}
