
import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';

class CashierView extends StatelessWidget {
  const CashierView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultBody(
        title: 'Cashier',
        body: Column(
          children:
          [
            Text('data')
          ],
        )
      ),
    );
  }
}
