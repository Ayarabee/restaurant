part of 'cashier_cubit.dart';

@immutable
abstract class CashierState {}

class CashierInitial extends CashierState {}

class CashierDisposeOrder extends CashierState {}
class CashierAddItemToOrder extends CashierState {}
class CashierChangeItemCountToOrder extends CashierState {}
class CashierRemoveItemFromOrder extends CashierState {}
class CashierChangeOrderType extends CashierState {}
class CashierNewAreaOrderType extends CashierState {}
