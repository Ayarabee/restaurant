import 'package:flutter/material.dart';
 import 'package:restaurant/core/core_widgets/default_form/default_from.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

import '../../../../../../core/core_widgets/number_picker/default_number_picker.dart';

class MainColumItemBody extends StatelessWidget {
  const MainColumItemBody({super.key});
   @override
  Widget build(BuildContext context) {
     var proNum = TextEditingController();
     var proName = TextEditingController();
     var sell = TextEditingController();
     var buy = TextEditingController();
     var des = TextEditingController();
     var tax = TextEditingController();
     var exDate = TextEditingController();
     var quant = TextEditingController();
     var quantLimit = TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 140.0),
      child: Column(
        children: [
          DefaultForm(
              controller: proNum,
            text: 'رقم المنتج (الباركود)',
            labelStyle: StyleManager.textStyle16
          ),
          const SizedBox(height: 10,),
          DefaultForm(
              controller: proName,
            text: 'اسم المنتج',
            labelStyle: StyleManager.textStyle16
          ),
          const SizedBox(height: 10,),
          Row(
              children: [
              Expanded(
                child: DefaultForm(
                    controller: sell,
                  text: 'سعر البيع',
                  labelStyle: StyleManager.textStyle16
                ),
              ),
              const SizedBox(width: 15,),
              Expanded(
                child: DefaultForm(
                    controller: buy,
                  text: 'سعر الشراء',
                  labelStyle: StyleManager.textStyle16
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          DefaultForm(
              controller: des,
              text: 'الوصف',
              labelStyle: StyleManager.textStyle16
          ),
          const SizedBox(height: 10,),
          Row(
              children: [
              Expanded(
                child: DefaultForm(
                    controller: quant,
                  text: 'الكمية',
                  labelStyle: StyleManager.textStyle16,
                  suffixIcon: DefaultNumberPicker(
                    onAdd:  (){},
                    onMinus:  (){},
                  ),
                  suffixPadding: 0,
                ),
              ),
              const SizedBox(width: 15,),
              Expanded(
                child: DefaultForm(
                    controller: quantLimit,
                  text: 'حد الكمية',
                  labelStyle: StyleManager.textStyle16,
                  suffixIcon: DefaultNumberPicker(
                      onAdd:  (){},
                      onMinus:  (){},
                  ),
                  suffixPadding: 0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          DefaultForm(
            controller: exDate,
            text: 'تاريخ الانتهاء',
            labelStyle: StyleManager.textStyle16,
            suffixIcon: const Icon(
              Icons.calendar_today_outlined,
              color: ColorsManager.primary,
              size: 20,
            ),
          ),
          const SizedBox(height: 10,),
          DefaultForm(
            controller: tax,
            text: 'الضريبة',
            labelStyle: StyleManager.textStyle16
          ),
        ],
      ),
    );
  }
}
