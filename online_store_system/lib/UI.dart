
import 'dart:io';
import 'dart:convert';

abstract class UI {
  
  static void printList(){
    print("01: View All Products"); // Inside: Add Product 
    print("02: Show Cart"); // Inside: Buy
    print("03: Invoices"); // past history
    print("00: Exit");
  }

  static bool selectService(){
    
    int? input = int.tryParse(stdin.readLineSync()!); // user input

    switch(input){
      case 1:
        var file = File("product.json").readAsStringSync();

        List data = jsonDecode(file);

        for (Map<String,dynamic> element in data){
          
          


        }

        return false;
      case 2:
      return false;
      case 3:
        return false;
      case 0:
        return true;
      default:
        print("\nEnter Valid Input!\n");
        return false;

    }
  }

}