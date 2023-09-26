import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:restaurant/feature/items/presentation/manager/item_cubit.dart';
import 'package:restaurant/feature/items/presentation/manager/quantity_cubit.dart';
 import '../../../../../../core/core_widgets/default_form/default_from.dart';
import '../../../../../../core/core_widgets/number_picker/default_number_picker.dart';
import '../../../../../../core/resources_manager/colors_manager.dart';
import '../../../funcation/date_box.dart';

class AddQuantityBody extends StatefulWidget {
  const AddQuantityBody({super.key});

  @override
  State<AddQuantityBody> createState() => _AddQuantityBodyState();


}

class _AddQuantityBodyState extends State<AddQuantityBody> {

  @override
  void initState() {
    ItemCubit.get(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController receiver = TextEditingController(text: 'محمد');
    TextEditingController date = TextEditingController(text: '');
    TextEditingController export = TextEditingController(text: '15');
    TextEditingController import = TextEditingController(text: '6');
    TextEditingController note = TextEditingController(text: ' ');
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 140.0,
        vertical: 20,
      ),
      child: BlocConsumer<QuantityCubit, QuantityState>(
        listener: (BuildContext context, QuantityState state) {},
        builder: (BuildContext context, QuantityState state) {
          return Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: DefaultForm(
                        readOnly: true,
                        controller: date,
                        textInputType: TextInputType.datetime,
                        text: 'التاريخ',
                        suffixIcon: const Icon(
                          Icons.calendar_today_outlined,
                          color: ColorsManager.primary,
                          size: 20,),
                        onTap: () {
                          showDateBox(
                            context: context,
                            controller: date,
                          );
                        }
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
                        onAdd: () {
                          // ItemCubit.onAddMinusQuantity(
                          //     add: true,
                          //     value: import.text.toString(),
                          //     controller:import
                          // );
                        },
                        onMinus: () {
                          // cubit.onAddMinusQuantity(
                          //     add: false,
                          //     value: import.text.toString(),
                          //     controller: import
                          // );
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
                        onAdd: () {
                          // ItemCubit.onAddMinusQuantity(
                          //     add: true,
                          //     value: export.text.toString(),
                          //     controller:export
                          // );
                        },
                        onMinus: () {
                          // ItemCubit.onAddMinusQuantity(
                          //     add: false,
                          //     value: export.text.toString(),
                          //     controller:export
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
          );
        },
      ),
    );
  }
}