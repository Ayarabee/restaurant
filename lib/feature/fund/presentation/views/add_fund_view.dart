
import 'package:flutter/material.dart';
import 'widgets/add_fund_view_body.dart';

class AddFundsView extends StatelessWidget {
  const AddFundsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AddFundsViewBody(title: "إضافة للصندوق",),
    );
  }
}
