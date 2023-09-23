import 'package:flutter/material.dart';
import 'package:restaurant/feature/kitchen_view/presentation/views/widgets/kitchen_view_body.dart';

class KitchenView extends StatelessWidget {
  const KitchenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: KitchenViewBody(),
      ),
    );
  }
}
