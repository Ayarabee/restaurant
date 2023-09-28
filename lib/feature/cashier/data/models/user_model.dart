import 'package:restaurant/feature/cashier/data/models/area_model.dart';

class UserModel
{
  String name;
  String phone;
  AreaModel area;

  UserModel({
    required this.name,
    required this.phone,
    required this.area
});
}