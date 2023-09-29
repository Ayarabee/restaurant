import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/feature/home/presentation/cubit/home_cubit.dart';
import 'cashier_grid_items.dart';
import 'cashier_tab_bar.dart';

class CashierViewBody extends StatelessWidget {
  const CashierViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Column(
        children:
        [
          Row(
            children:
            [
              const Expanded(child: Center(child: OrderTypeTabBar())),
              IconButton(
                onPressed: ()
                {
                  HomeCubit.get(context).opeDrawer();
                }, icon: SvgPicture.asset(AssetsManager.drawer))
            ],
          ),
          const SizedBox(height: 5,),
          const CashierGridItems(),

        ],
      ),
    );
  }
}

