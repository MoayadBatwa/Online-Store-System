import 'package:online_store_system/models/product_model.dart';

class DeviceModel extends ProductModel{
  final String? screen;
  final String? memory;
  final String? cpu;
  final String? hardDisk;
  final String? battery;
  final int? year;

  DeviceModel({this.battery, this.cpu, this.hardDisk, this.memory, this.screen, this.year, super.id, super.category, super.color, super.name, super.price});

  

}