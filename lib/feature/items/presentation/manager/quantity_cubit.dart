import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  }}
