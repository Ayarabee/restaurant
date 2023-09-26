
import 'package:flutter/material.dart';
import 'widgets/add_fund_view_body.dart';

class DeductedFundsView extends StatelessWidget {
  const DeductedFundsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AddFundsViewBody(title: "خصم من الصندوق",),
    );
  }
}
