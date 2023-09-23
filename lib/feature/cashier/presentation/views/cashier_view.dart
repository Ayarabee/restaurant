
import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';

class NewOrderView extends StatelessWidget {
  const NewOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
