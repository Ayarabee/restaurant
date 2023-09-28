import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/feature/cashier/presentation/cubit/cashier_cubit.dart';

import 'cashier_order_item_builder.dart';

class CashierOrderList extends StatelessWidget {
  const CashierOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CashierCubit, CashierState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = CashierCubit.get(context);
        return Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => OrderItemBuilder(
                itemModel : cubit.orderModel.items[index],
                index: index,
              ),
              itemCount: cubit.orderModel.items.length,
            )
        );
      },
    );
  }
}
