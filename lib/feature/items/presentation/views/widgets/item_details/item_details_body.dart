import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class ItemDetailsBody extends StatelessWidget {
  const ItemDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable2(
        // columnSpacing: 12,
        // horizontalMargin: 12,
        //minWidth: 600,
         columns: const [
           DataColumn(label: Center(child: Text('التاريخ')),),
          DataColumn(label: Center(child: Text('الوارد')),),
          DataColumn(label: Center(child: Text('الخارج')),),
          DataColumn(label: Center(child: Text('الرصيد')),),
          DataColumn(label: Center(child: Text('المستلم')),),
          DataColumn(label: Center(child: Text('الملاحظات')),),
        ],
        rows: [
          DataRow(
            color: MaterialStateColor.resolveWith((states) => ColorsManager.primaryLight2),
               cells: const [
          DataCell(Center(child: Text("15/10/2024"))),
          DataCell(Center(child: Text("7"))),
          DataCell(Center(child: Text("0"))),
          DataCell(Center(child: Text("22"))),
          DataCell(Center(child: Text("محمد"))),
          DataCell(Center(child: Text("لا"))),
        ]),
          const DataRow(
               cells: [
                DataCell(Center(child: Text("15/10/2024"))),
                DataCell(Center(child: Text("7"))),
                DataCell(Center(child: Text("0"))),
                DataCell(Center(child: Text("22"))),
                DataCell(Center(child: Text("محمد"))),
                DataCell(Center(child: Text("لا"))),
              ])]
    );
  }
}
