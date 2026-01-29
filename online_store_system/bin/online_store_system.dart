import 'package:online_store_system/UI.dart';
void main() {
  
  print("---------------------------\n\n\n          Welcome to our Online Store System\n\n\n---------------------------\n\n");

  bool exit = false;

  do {

    UI.printList(); // print system list

    exit = UI.selectService(); // select & apply service
    

    



  } while (!exit);


}
