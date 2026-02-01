
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
        String file = File("C:/TuwaiqAcademyFlutterProjects/Online-Store-System/online_store_system/product.json").readAsStringSync();

        List dataset = jsonDecode(file);

        List<DeviceModel> devices = [];
        List<ClotheModel> clothes = [];

        for (Map<String,dynamic> element in dataset){
          print('Item: ${element}');
          if (element["Category"] == "Electronics"){

            DeviceModel device = DeviceModel(id: element["ID"], name: element["Name"], category: element["Category"], price: element["Price"], color: element["Color"], screen: element["screen"], memory: element["memory"], cpu: element["cpu"], hardDisk: element["harddisk"], battery: element["battery"], year: element["year"]);
            devices.add(device);
          }

          if (element["Category"] == "Clothing"){
            if (element["gender"] == Gender.male){
              element["gender"] = Gender.male;
            }
            else if (element["gender"] == Gender.female){
              element["gender"] = Gender.female;
            }
            else {element["gender"] = Gender.both;}
            
            ClotheModel clothe = ClotheModel(id: element["ID"], name: element["Name"], category: element["Category"], price: element["Price"], color: element["Color"], gender: element["gender"], size: element["size"], ageRange: element["age_range"], material: element["material"]);
            clothes.add(clothe);
          }

        }

        print(devices);
        print(clothes);

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