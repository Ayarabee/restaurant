import 'package:restaurant/feature/cashier/data/models/area_model.dart';
import 'package:restaurant/feature/cashier/data/models/user_model.dart';
import 'package:restaurant/feature/cashier/presentation/views/widgets/body/cashier_tab_bar.dart';

import 'cashier_item_model.dart';

class OrderModel
{
  int orderNumber;
  OrderType orderType;
  UserModel? userModel;
  AreaModel? _area;
  late List<CashierItemModel> _items ;
  late double _net ;
  late double _total ;

  void addItem(CashierItemModel item)
  {
    _items.add(item);
    _net += item.price;
    setTotal();
  }

  void removeItem(int index)
  {
    _net -= _items[index].price;
    setTotal();
    _items.removeAt(index);
  }


  set area(AreaModel area)
  {
    if(_area != null)
    {
      _net -= _area!.price;
    }
    _area = area;
    setTotal();
  }

  void setTotal()
  {
    if(_area == null)
    {
      _total = _net ;
    }
    else
    {
      _total = _net + _area!.price;
    }
  }

  double get total => _total;
  double get net => _net;
  List<CashierItemModel> get items => _items;
  AreaModel? get getArea => _area;

  OrderModel({
    required this.orderNumber,
    required this.orderType,
}){
    _items =[];
    _net = 0;
    _total = 0;
  }

}