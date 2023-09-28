import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/core/core_widgets/default_body/default_divider.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'package:restaurant/feature/cashier/presentation/cubit/cashier_cubit.dart';

class CashierSideBarBodyTotalPart extends StatelessWidget {
  const CashierSideBarBodyTotalPart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CashierCubit, CashierState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = CashierCubit.get(context);
        return Column(
          children:
          [
            //const DefaultDivider(padding: EdgeInsets.zero,height: 0,),
            const SizedBox(height: 5,),
            Row(
              children:
              [
                const Text('القيمة', style: StyleManager.textStyleDark18),
                const Spacer(),
                Text(cubit.orderModel.net.toString(), style: StyleManager.textStyleDark18),
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              children:
              [
                const Text('خدمة التوصيل', style: StyleManager.textStyleDark18),
                const Spacer(),
                Text(
                    cubit.orderModel.getArea != null?
                    cubit.orderModel.getArea!.price.toString():
                    '0',
                    style: StyleManager.textStyleDark18
                ),
              ],
            ),
            const SizedBox(height: 5,),
            const DefaultDivider(padding: EdgeInsets.zero, height: 0,),
            const SizedBox(height: 5,),

            Row(
              children:
              [
                Text('الإجمالي', style: StyleManager.textStyle20.copyWith(
                    fontWeight: FontWeight.w600,
                    color: ColorsManager.brown)),
                const Spacer(),
                Text(cubit.orderModel.total.toString(), style: StyleManager.textStyle20.copyWith(
                    fontWeight: FontWeight.w600,
                    color: ColorsManager.brown)),
              ],
            ),

          ],
        );
      },
    );
  }
}
