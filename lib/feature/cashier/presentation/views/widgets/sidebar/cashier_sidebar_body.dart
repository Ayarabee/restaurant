import 'package:flutter/material.dart';

import 'cashier_order_list.dart';
import 'cashier_side_body_buttons_part.dart';
import 'cashier_side_body_total_part.dart';
import 'cashier_side_order_data.dart';
import 'cashier_side_user_data.dart';

class CashierSideBarBody extends StatelessWidget {
  const CashierSideBarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children:
      [
        CashierSideOrderData(),
        SizedBox(height: 5,),
        CashierSideUserData(),
        SizedBox(height: 5,),
        CashierOrderList(),
        SizedBox(height: 5,),
        CashierSideBarBodyTotalPart(),
        SizedBox(height: 10,),
        CashierSideBarBodyButtonsPart()

      ],
    );
  }
}




