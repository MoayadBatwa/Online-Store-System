
import 'dart:io';
import 'dart:convert';
import 'package:online_store_system/models/clothe_model.dart';
import 'package:online_store_system/models/device_model.dart';
import 'package:online_store_system/models/product_model.dart';


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
        String file = File("product.json").readAsStringSync();

        List dataset = jsonDecode(file);

        List<DeviceModel> devices;
        List<ClotheModel> clothes;

        for (Map<String,dynamic> element in dataset){
          
         

          if (element["category"] == "Electronics"){

          }

          if (element["category"] == "Clothing"){
            
          }


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