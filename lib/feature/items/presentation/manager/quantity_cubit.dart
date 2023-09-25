import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'quantity_state.dart';

class QuantityCubit extends Cubit<QuantityState> {
  QuantityCubit() : super(QuantityInitial());
  late TextEditingController receiver ;
  late TextEditingController date ;
  late TextEditingController export ;
  late TextEditingController import ;
  late TextEditingController note ;


  void initControllers()
  {

    // receiver = TextEditingController(text: isEdit? itemModel!.proNum:'');
    // date = TextEditingController(text: isEdit? itemModel!.proName:'');
    // note = TextEditingController(text: isEdit? itemModel!.sell:'');
    //  export = TextEditingController(text: isEdit?itemModel!.quant.toString():'1');
    // import = TextEditingController(text: isEdit?itemModel!.quantLimit.toString():'1');
  }}
