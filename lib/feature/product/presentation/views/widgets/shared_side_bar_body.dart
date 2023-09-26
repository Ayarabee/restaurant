import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_form/default_from.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';

class SharedSideBarBody extends StatelessWidget {
  const SharedSideBarBody({super.key, required this.invoiceDateController, required this.productNameController, required this.totalController});
final TextEditingController invoiceDateController;
final TextEditingController productNameController;
final TextEditingController totalController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25,),
        DefaultForm(
          text: "تاريخ الفاتورة",
          isFillWhite: true,
          controller: invoiceDateController,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.calendar_today_outlined,
              color: ColorsManager.primary,
            ),
          ),
        ),
        const SizedBox(height: 20,),
        DefaultForm(
          text: "اسم المنتج",
          isFillWhite: true,
          controller: productNameController,
        ),
        const SizedBox(height: 20,),
        DefaultForm(
          text: "الاجمالي",
          isFillWhite: true,
          controller: totalController,
        ),
      ],
    );
  }
}
