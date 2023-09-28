import 'package:flutter/material.dart';

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
