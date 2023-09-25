import 'package:flutter/material.dart';

import '../../../../../core/core_widgets/default_form/default_from.dart';
import '../../../../../core/core_widgets/number_picker/default_number_picker.dart';
import '../../../../../core/resources_manager/colors_manager.dart';

class AddQuantityBody extends StatelessWidget {
  const AddQuantityBody({super.key});

  @override
  Widget build(BuildContext context) {
      TextEditingController receiver =TextEditingController(text: 'محمد');
      TextEditingController date=TextEditingController(text: '15/10/2024') ;
      TextEditingController export =TextEditingController(text: '15');
      TextEditingController import=TextEditingController(text: '6') ;
      TextEditingController note =TextEditingController(text: ' ');
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 140.0,
        vertical: 20,

      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: DefaultForm(
                  controller: date,
                  text: 'التاريخ',
                  suffixIcon: const Icon(
                    Icons.calendar_today_outlined,
                    color: ColorsManager.primary,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(width: 15,),
              Expanded(
                child: DefaultForm(
                  controller: receiver,
                  text: 'المستلم',
                 ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: DefaultForm(
                  controller: import,
                  text: 'الوارد',
                  suffixIcon: DefaultNumberPicker(
                    onAdd:  ()
                    {
                      // cubit.onAddMinusQuantity(
                      //     add: true,
                      //     value: cubit.quant.text.toString(),
                      //     controller: cubit.quant
                      // );
                    },
                    onMinus:  ()
                    {
                      // cubit.onAddMinusQuantity(
                      //     add: false,
                      //     value: cubit.quant.text.toString(),
                      //     controller: cubit.quant
                      //);
                    },
                  ),
                  suffixPadding: 0,
                ),
              ),
              const SizedBox(width: 15,),
              Expanded(
                child: DefaultForm(
                  controller: export,
                  text: 'الخارج',
                  suffixIcon: DefaultNumberPicker(
                    onAdd:  ()
                    {
                      // cubit.onAddMinusQuantity(
                      //     add: true,
                      //     value: cubit.quantLimit.text.toString(),
                      //     controller: cubit.quantLimit
                      // );
                    },
                    onMinus:  ()
                    {
                      // cubit.onAddMinusQuantity(
                      //     add: false,
                      //     value: cubit.quantLimit.text.toString(),
                      //     controller: cubit.quantLimit
                      // );
                    },
                  ),
                  suffixPadding: 0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          DefaultForm(
            controller: note,
            text: 'الملاحظات',
          ),

        ],
      ),
    );
  }
}
