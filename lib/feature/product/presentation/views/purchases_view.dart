import 'package:flutter/material.dart';
import 'package:restaurant/feature/product/presentation/views/widgets/purchases_view_body.dart';

class PurchasesView extends StatelessWidget {
  const PurchasesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PurchasesViewBody(),
    );
  }
}
