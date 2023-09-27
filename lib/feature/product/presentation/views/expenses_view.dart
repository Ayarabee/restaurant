
import 'package:flutter/material.dart';

import 'widgets/expenses_view_body.dart';

class ExpensesView extends StatelessWidget {
  const ExpensesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ExpensesViewBody(),
    );
  }
}
