import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import javafx.geometry.Pos;
import javafx.scene.paint.*;
import javafx.scene.canvas.*;
import javafx.scene.text.*;
import javafx.scene.Group;
import javafx.scene.shape.*;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.collections.*;
import java.io.*;


public class Bookstore extends Application {


    private ObservableList<String> bookTitles = FXCollections.observableArrayList();
    private ListView<String>bookTitleView = new ListView<>();
    private ListView<String> cartView = new ListView<>();
    private Label TotalLabel;

  public static void main(String[] args)
    {
        launch(args);
    }

  @Override
  public void start(Stage primaryStage)
  {
	//Get Book Titles
	loadBookStore("BookPrices.txt");


	// Listviews for booktitles
   bookTitleView = new ListView(bookTitles);
   cartView = new ListView<>();

   //Create button
   Button AddCartButton = new Button ("Add to Cart");
   // css design
   AddCartButton.setStyle(
	           "-fx-font-size: 14px; " +
	           "-fx-background-color:white; " +
	           "-fx-text-fill: darkkhaki; " +
               "-fx-padding: 10px;" );

   Button CheckoutButton = new Button("Checkout");

    // css design
      CheckoutButton.setStyle(
   	           "-fx-font-size: 14px; " +
   	           "-fx-background-color:white; " +
   	           "-fx-text-fill: orchid; " +
               "-fx-padding: 10px;" );

   AddCartButton.setOnAction(event ->
     {
           String selectedBook = bookTitleView.getSelectionModel().getSelectedItem();
           if (selectedBook != null) {

               cartView.getItems().add(selectedBook);
		   }
           });

   // Register the event handler
     CheckoutButton.setOnAction(event ->
     {
	   double Subtotal =0.0;
      // get bookprices from selected books
       for (String item : cartView.getItems()) {
	              String[] prices = item.split(",");
	              if (prices.length == 2) {
	                  double bookPrice = Double.parseDouble(prices[1].trim());
                Subtotal += bookPrice;
	    }
      }
	   double Tax = Subtotal * 0.07;
	   double Carttotal = Subtotal + Tax;

        TotalLabel.setText(" Total: " + String.format("%.2f",Carttotal));

      });

         TotalLabel = new Label();

      VBox vbox = new VBox(bookTitleView, AddCartButton, cartView,CheckoutButton, TotalLabel);
      vbox.setSpacing(10);
      vbox.setAlignment(Pos.CENTER);

      Scene scene = new Scene(vbox, 400, 400);
	    primaryStage.setTitle("Bookstore");
	    primaryStage.setScene(scene);
        primaryStage.show();
  }

   private void loadBookStore(String filePath) {
     try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
               String line;
               while ((line = reader.readLine()) != null) {
                   bookTitles.add(line);
               }
           } catch (IOException e) {
               e.printStackTrace();
           }
       }
}