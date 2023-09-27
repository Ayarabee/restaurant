import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/resources_manager/constants_manager.dart';

part 'quantity_state.dart';

class QuantityCubit extends Cubit<QuantityState> {
  QuantityCubit() : super(QuantityInitial());

  static QuantityCubit get(context) => BlocProvider.of(context);

  late TextEditingController receiver ;
  late TextEditingController date ;
  late TextEditingController export ;
  late TextEditingController import ;
  late TextEditingController note ;


  void initControllersQuantity()
  {

    receiver = TextEditingController();
    date = TextEditingController();
    note = TextEditingController();
     export = TextEditingController();
    import = TextEditingController();
  }
  void onAddMinusQuantity ({required controller, required String value, required bool add})
  {
    controller.text = ConstantsManager.onAddMinus(value: value, add: add).toString();
    emit(QuantityMinusIncrement());
  }

}
