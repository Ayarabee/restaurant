import 'package:flutter/material.dart';
import 'build_drop_down_row.dart';
import 'shared_order_row.dart';

class TotalOrdersDropDown extends StatefulWidget {
  const TotalOrdersDropDown({super.key});

  @override
  State<TotalOrdersDropDown> createState() => _TotalOrdersDropDownState();
}

class _TotalOrdersDropDownState extends State<TotalOrdersDropDown> {
  List<Map<String, dynamic>> typeItems = [
    {"text": "مكرونة كبدة صلصة", "num": "12"},
    {"text": "مكرونة كبدة حار", "num": "8"},
  ];
  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildDropDownRow(
          onTap: () {
            setState(() {
              tapped = !tapped;
            });
          },
        ),
        SizedBox(
          height: tapped ? 10 : 0,
        ),
        for (int i = 0; i < typeItems.length; i++)
         tapped? Padding(
            padding:
                EdgeInsets.only(bottom: i < typeItems.length - 1 ? 10.0 : 0),
            child: SharedOrderRow(
              text: typeItems[i]["text"],
              num: typeItems[i]["num"],
              isGrey: true,
            ),
          ):const SizedBox()
      ],
    );
  }
}
