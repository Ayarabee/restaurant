import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'package:restaurant/feature/cashier/presentation/cubit/cashier_cubit.dart';

class CashierSideOrderData extends StatelessWidget {
  const CashierSideOrderData({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CashierCubit, CashierState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = CashierCubit.get(context);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children:
              [
                Text('طلب جديد', style: StyleManager.textStyle20.copyWith(
                    fontWeight: FontWeight.w700),),
                const Spacer(),
                Text('#${cubit.orderModel.orderNumber}', style: StyleManager.textStyle20.copyWith(
                    fontWeight: FontWeight.w700),),
              ],
            ),
            const SizedBox(height: 5,),
            Text( cubit.getOrderTypeName(), style: StyleManager.textStyle20),
          ],
        );
      },
    );
  }
}
