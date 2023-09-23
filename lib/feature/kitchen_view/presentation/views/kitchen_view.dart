import 'package:flutter/material.dart';
import 'package:restaurant/feature/kitchen_view/presentation/views/widgets/total_orders_view_body.dart';

class TotalOrdersView extends StatelessWidget {
  const TotalOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: TotalOrdersViewBody(),
      ),
    );
  }
}
