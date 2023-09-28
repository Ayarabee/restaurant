
import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/feature/cashier/presentation/views/widgets/sidebar/cashier_sidebar_body.dart';
import 'package:restaurant/feature/cashier/presentation/views/widgets/body/cashier_view_body.dart';

class CashierView extends StatelessWidget {
  const CashierView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultBody(
        sideBarBody: CashierSideBarBody(),
        body: CashierViewBody()
      ),
    );
  }
}
