import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/feature/cashier/presentation/views/cashier_view.dart';
import 'package:restaurant/feature/kitchen_view/presentation/views/kitchen_view.dart';
import 'package:restaurant/feature/login/presentation/views/login_view.dart';
import 'package:restaurant/feature/store_traffic/presentation/views/quick_tarffic_view.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  void opeDrawer()
  {
    scaffoldKey.currentState!.openDrawer();
  }
  List<Widget> navBarViews=
  [
    CashierView(),
    KitchenView(),
    QuickTrafficView(),
    Scaffold(
      body: DefaultBody(
        body: Center(child: Text('Not fnished'),),
      ),
    ),
    Scaffold(
      body: DefaultBody(
        body: Center(child: Text('Not fnished'),),
      ),
    ),
  ];

  int currentNavBarView =0;
  void changeNavBar(int index, context)
  {
    if(index == navBarViews.length)
    {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context)=>const LoginView()
          )
      );
    }
    else {
      currentNavBarView = index;
      emit(HomeChangeNavIndex());
    }
  }
}
