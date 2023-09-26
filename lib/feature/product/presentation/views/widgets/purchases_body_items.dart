import 'package:flutter/material.dart';
import 'package:restaurant/feature/product/data/models/items_table_model.dart';
import 'package:restaurant/feature/product/presentation/views/widgets/purchases_list_item.dart';

import 'purchases_title_list.dart';

class PurchasesBodyItems extends StatelessWidget {
  const PurchasesBodyItems({super.key, required this.items});
  final List<ItemsTableMode>items;
  @override
  Widget build(BuildContext context) {
    List<String>titlesList=[
      "المنتج",
      "الكمية",
      "الوحدة",
      "الاجمالي"
    ];
    double bodyWidth=0.0;
    return Padding(
      padding: const EdgeInsets.all(20.0).copyWith(bottom: 0.0),
      child: LayoutBuilder(
        builder:(BuildContext context, BoxConstraints constraints) {
          bodyWidth=constraints.maxWidth;
          return Column(
          children: [
            PurchasesTitleList(titleList: titlesList,bodyWidth: bodyWidth,),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) =>
                    PurchasesListItem(items: items[index],bodyWidth: bodyWidth,),
                separatorBuilder: (BuildContext context, int index) => const SizedBox(
                  height: 10,
                ),
                itemCount: items.length,
              ),
            ),
          ],
        );
        },
      ),
    );
  }
}
