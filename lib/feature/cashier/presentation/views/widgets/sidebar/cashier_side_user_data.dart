import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_filled_button.dart';
import 'package:restaurant/core/core_widgets/default_form/default_form_field.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'package:restaurant/feature/cashier/presentation/cubit/cashier_cubit.dart';
import 'package:restaurant/feature/cashier/presentation/cubit/cashier_cubit.dart';

import 'alerts/alert_all_areas.dart';
import 'cashier_form_field.dart';

class CashierSideUserData extends StatelessWidget {
  const CashierSideUserData({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CashierCubit, CashierState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = CashierCubit.get(context);
        return Column(
          children:
          [
            Row(
              children: [
                Expanded(
                  child: CashierFormField(
                    controller: TextEditingController(),
                    hintText: 'الاسم',
                    prefixIcon: AssetsManager.user,
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: CashierFormField(
                    controller: TextEditingController(),
                    hintText: 'الهاتف',
                    prefixIcon: AssetsManager.phone,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            CashierFormField(
              controller: TextEditingController(
                text: cubit.orderModel.getArea != null ?
                cubit.orderModel.getArea!.name :
                ''
              ),
              hintText: 'العنوان',
              prefixIcon: AssetsManager.map,
              enabled: false,
              onTap: () {
                showDialog(
                    barrierColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return const AlertAllAreas();
                    }
                );
              },
            ),
          ],
        );
      },
    );
  }
}
