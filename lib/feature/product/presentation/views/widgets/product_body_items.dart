import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_form/default_from.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';

class ProductBodyItems extends StatefulWidget {
  const ProductBodyItems({super.key});

  @override
  State<ProductBodyItems> createState() => _ProductBodyItemsState();
}

class _ProductBodyItemsState extends State<ProductBodyItems> {
  var barcodeController = TextEditingController();
  var productNameController = TextEditingController();
  var priceController = TextEditingController();
  var amountController = TextEditingController();
  var unitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 20).copyWith(bottom: 0.0),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          DefaultForm(
            controller: barcodeController,
            text: 'رقم المنتج (البار كود)',
          ),
          const SizedBox(
            height: 15,
          ),
          DefaultForm(
            controller: productNameController,
            text: 'اسم المنتج',
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: DefaultForm(
                  controller: priceController,
                  text: 'السعر',
                ),
              ),
              const SizedBox(width: 20,),
              Expanded(
                child: DefaultForm(
                  controller: amountController,
                  text: 'الكمية',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          DefaultForm(
            controller: unitController,
            text: 'الوحدة',
            suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined,color: ColorsManager.black,),
          ),
        ],
      ),
    );
  }
}
