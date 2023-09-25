import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_form/default_from.dart';
import 'package:restaurant/core/core_widgets/number_picker/default_number_picker.dart';
import 'package:restaurant/core/core_widgets/switch_check_box/default_check_box.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class AddFundBodyItems extends StatefulWidget {
  const AddFundBodyItems({super.key});

  @override
  State<AddFundBodyItems> createState() => _AddFundBodyItemsState();
}

class _AddFundBodyItemsState extends State<AddFundBodyItems> {
  var costController = TextEditingController();
  var dateController = TextEditingController();
  var noteController = TextEditingController();
  var balanceController = TextEditingController();
  int costCount = 0;
  bool checkAdd = true;
  bool deductingPurchases = true;
  bool deductingExpense = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20)
          .copyWith(bottom: 0.0),
      child: ListView(
        children: [
          DefaultForm(
            controller: costController,
            text: 'المبلغ',
            labelStyle: StyleManager.textStyle20,
            suffixPadding: 0.0,
            hintText: "$costCount",
            suffixIcon: DefaultNumberPicker(
              onAdd: () {
                setState(() {
                  costCount++;
                });
              },
              onMinus: () {
                setState(() {
                  costCount--;
                });
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          DefaultForm(
            controller: dateController,
            text: 'التاريخ',
            labelStyle: StyleManager.textStyle20,
            // suffixPadding: 0.0,
            // hintText:"$costCount" ,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.calendar_today,
                color: ColorsManager.primary,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          DefaultForm(
            controller: noteController,
            maxLines: 2,
            text: 'البيان',
            labelStyle: StyleManager.textStyle20,
          ),
          const SizedBox(
            height: 15,
          ),
          DefaultCheckBox(
            value: checkAdd,
            onChanged: (val) {
              setState(() {
                checkAdd = val!;
              });
            },
            title: 'اضافة مبالغ المبيعات والعملاء للصندوق',
          ),
          const SizedBox(
            height: 15,
          ),
          DefaultCheckBox(
            value: deductingPurchases,
            onChanged: (val) {
              setState(() {
                deductingPurchases = val!;
              });
            },
            title: 'خصم مبالغ المشتريات والموردين من الصندوق ',
          ),
          const SizedBox(
            height: 15,
          ),
          DefaultCheckBox(
            value: deductingExpense,
            onChanged: (val) {
              setState(() {
                deductingExpense = val!;
              });
            },
            title: 'خصم مبالغ المصروفات من الصندوق',
          ),
          const SizedBox(
            height: 15,
          ),
          DefaultForm(
            controller: balanceController,
            text: 'الرصيد',
            labelStyle: StyleManager.textStyle20,
          ),
        ],
      ),
    );
  }
}
