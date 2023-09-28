import 'extra_model.dart';

class CashierItemModel
{
  String name;
  double price;
  int quantity = 1;
  List<ExtraModel> extras = [];
  CashierItemModel({required this.name, required this.price});
}