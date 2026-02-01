import 'package:online_store_system/models/product_model.dart';

enum Gender {male, female, both}

class ClotheModel extends ProductModel{
  final Gender? gender;
  final String? size;
  final String? ageRange;
  final String? material;

  ClotheModel({this.ageRange, this.gender, this.material, this.size, super.id, super.category, super.color, super.name, super.price});

  

}