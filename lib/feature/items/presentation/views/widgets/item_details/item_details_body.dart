import 'package:flutter/material.dart';
import 'package:restaurant/feature/items/presentation/views/widgets/item_details/title_row.dart';

import 'item_details_list_view.dart';

class ItemDetailsBody extends StatelessWidget {
  const ItemDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 20,
      ),
      child: Column(
        children: [
          TitleRow(),
          SizedBox(height: 15,),
          Expanded(child: ItemDetailsListView()),
         ],
      ),
    );  }
}
