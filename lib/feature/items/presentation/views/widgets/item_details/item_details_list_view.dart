import 'package:flutter/material.dart';
import 'package:restaurant/feature/items/presentation/views/widgets/item_details/item_details_body.dart';
import 'package:restaurant/feature/items/presentation/views/widgets/items/quick_items_body.dart';

import 'details_row.dart';

class ItemDetailsListView extends StatelessWidget {
  const ItemDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>
      const DetailsRow(),
      itemCount: 3,
    );
  }
}
