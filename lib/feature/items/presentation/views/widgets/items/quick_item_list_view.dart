import 'package:flutter/material.dart';
import 'package:restaurant/feature/items/presentation/views/widgets/items/quick_items_body.dart';

class QuickOItemListView extends StatelessWidget {
  const QuickOItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>
      const QuickItemsBody(),
      itemCount: 3,
    );
  }
}
