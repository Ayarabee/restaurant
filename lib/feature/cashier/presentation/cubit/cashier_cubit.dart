import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:restaurant/feature/cashier/data/models/area_model.dart';
import 'package:restaurant/feature/cashier/data/models/cashier_item_model.dart';
import 'package:restaurant/feature/cashier/data/models/order_model.dart';
import 'package:restaurant/feature/cashier/data/models/user_model.dart';
import 'package:restaurant/feature/cashier/presentation/views/widgets/body/cashier_tab_bar.dart';

part 'cashier_state.dart';

class CashierCubit extends Cubit<CashierState> {
  CashierCubit() : super(CashierInitial());
  static CashierCubit get(context) => BlocProvider.of(context);


  List<AreaModel> areas =
  [
    AreaModel(name: 'السويس', price: 20.0),
    AreaModel(name: 'الاربعين', price: 25.0),
    AreaModel(name: 'بورتوفيق', price: 30.0),
    AreaModel(name: 'الغريب', price: 35.0),
  ];

  OrderModel orderModel = OrderModel(orderNumber: 1, orderType: OrderType.hall);

  void addItemToOrder(CashierItemModel item)
  {
    orderModel.addItem(item);
    emit(CashierAddItemToOrder());
  }

  void removeItemFromOrder(int index)
  {
    orderModel.removeItem(index);
    emit(CashierRemoveItemFromOrder());
  }

  void changeOrderType(int index)
  {
    late OrderType orderType;
    switch (index)
    {
      case 0 :
        orderType = OrderType.takeAway;
        break ;
      case 1 :
        orderType = OrderType.hall;
        break ;
      case 2 :
        orderType = OrderType.receive;
        break ;
      default:
        orderType = OrderType.delivery;
        break ;
    }
    orderModel.orderType = orderType;
    emit(CashierChangeOrderType());
  }

  int getOrderTypeIndex()
  {
    late int index;
    switch (orderModel.orderType)
    {
      case OrderType.takeAway :
        return 0;
        break ;
      case OrderType.hall :
        index = 1;
        break ;
      case OrderType.receive :
        index =2;
        break ;
      default:
        index =3;
        break ;
    }
    return index;
  }

  String getOrderTypeName()
  {
    late String type;
    switch (orderModel.orderType)
    {
      case OrderType.takeAway :
        type = 'تيك اواى';
        break ;
      case OrderType.hall :
        type = 'صالة';
        break ;
      case OrderType.receive :
        type = 'استلام';
        break ;
      default:
        type = 'دليفري';
        break ;
    }
    return type;
  }

  void addNewArea({required String name})
  {
    areas.add(AreaModel(name: name, price: 30.0));
    emit(CashierNewAreaOrderType());
  }
  void chooseArea({required AreaModel areaModel})
  {
    orderModel.area = areaModel;
    emit(CashierNewAreaOrderType());
  }

}
