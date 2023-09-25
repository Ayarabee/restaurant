
import 'package:flutter/material.dart';
import 'widgets/add_fund_view_body.dart';

class FundsView extends StatelessWidget {
  const FundsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FundsViewBody(),
    );
  }
}
