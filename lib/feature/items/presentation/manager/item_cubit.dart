import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/constants_manager.dart';
import 'package:restaurant/feature/items/data/item_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'item_state.dart';

class ItemCubit extends Cubit<ItemState> {
  ItemCubit() : super(ItemInitial());

  static ItemCubit get(context) => BlocProvider.of(context);

  late TextEditingController proNum ;
  late TextEditingController proName ;
  late TextEditingController sell ;
  late TextEditingController buy ;
  late TextEditingController des ;
  late TextEditingController tax ;
  late TextEditingController exDate ;
  late TextEditingController quant;
  late TextEditingController quantLimit ;
  late bool isEdit;
  ItemModel? itemModel;

  void initControllers({required bool isEdit, required ItemModel? itemModel})
  {
    this.isEdit = isEdit;
    this.itemModel = itemModel;
    proNum = TextEditingController(text: isEdit? itemModel!.proNum:'');
    proName = TextEditingController(text: isEdit? itemModel!.proName:'');
    sell = TextEditingController(text: isEdit? itemModel!.sell:'');
    buy = TextEditingController(text: isEdit?itemModel!.buy:'');
    des = TextEditingController(text: isEdit?itemModel!.des:'');
    tax = TextEditingController(text: isEdit?itemModel!.tax:'');
    exDate = TextEditingController(text: isEdit?itemModel!.exDate:'');
    quant = TextEditingController(text: isEdit?itemModel!.quant.toString():'1');
    quantLimit = TextEditingController(text: isEdit?itemModel!.quantLimit.toString():'1');
  }

  void onAddMinusItem ({required controller, required String value, required bool add})
  {
    controller.text = ConstantsManager.onAddMinus(value: value, add: add).toString();
    emit(ItemAddMinusIncrement());
  }

}
