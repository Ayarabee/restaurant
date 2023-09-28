
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'package:restaurant/feature/cashier/presentation/cubit/cashier_cubit.dart';

enum OrderType {takeAway, hall, receive, delivery}

class OrderTypeTabBar extends StatelessWidget {
  const OrderTypeTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CashierCubit, CashierState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
              color: ColorsManager.white,
              borderRadius: BorderManager.radius40,
              border: Border.all(
                color: ColorsManager.primary,
              )
          ),
          padding: const EdgeInsets.only(right: 5, left: 5, top: 5),
          child: BlocConsumer<CashierCubit, CashierState>(
            listener: (context, state) {},
            builder: (context, state) {
              return MyTabBarView(
                initialIndex: CashierCubit.get(context).getOrderTypeIndex(),
                  length: OrderType.values.length,
                  onTab: (index)
                  {
                    CashierCubit.get(context).changeOrderType(index);
                  },
                  tabs:
                  [
                    TabBarItem(
                        selected: CashierCubit.get(context).orderModel.orderType == OrderType.takeAway,
                        label: 'تيك اواى'
                    ),
                    TabBarItem(
                        selected: CashierCubit.get(context).orderModel.orderType == OrderType.hall,
                        label: 'صالة'
                    ),
                    TabBarItem(
                        selected: CashierCubit.get(context).orderModel.orderType == OrderType.receive,
                        label: 'استلام'
                    ),
                    TabBarItem(
                        selected: CashierCubit.get(context).orderModel.orderType == OrderType.delivery,
                        label: 'دليفري'
                    ),
                  ],
                );
            },
          ),
        );
      },
    );
  }
}

class TabBarItem extends StatelessWidget {
  const TabBarItem({Key? key, required this.label, required this.selected}) : super(key: key);

  final bool selected;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: StyleManager.textStyle20.copyWith(
            fontWeight: FontWeight.w700,
            color: selected ? ColorsManager.primary : ColorsManager.black
        ),
      ),
    );
  }
}


class MyTabBarView extends StatelessWidget {
  const MyTabBarView({Key? key,
    required this.length,
    required this.tabs,
    required this.onTab,
    this.isScrollable = false,
    required this.initialIndex,
  }) : super(key: key);
  final int length;
  final List<Widget> tabs;
  final void Function(int)? onTab;
  final bool isScrollable;
  final int initialIndex ;
  @override
  Widget build(BuildContext context) {
    return   DefaultTabController(
      initialIndex: initialIndex,
      length: length,
      child: TabBar(
        indicatorWeight: 3,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: ColorsManager.primary,
        isScrollable: isScrollable,
        onTap: onTab,
        tabs: tabs,
      ),
    );
  }
}