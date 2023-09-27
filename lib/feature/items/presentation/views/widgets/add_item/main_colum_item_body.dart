import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:restaurant/core/core_widgets/default_form/default_from.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/feature/items/data/item_model.dart';
import 'package:restaurant/feature/items/presentation/manager/item_cubit.dart';

import '../../../../../../core/core_widgets/number_picker/default_number_picker.dart';
import '../../../funcation/date_box.dart';

class MainColumItemBody extends StatefulWidget {
  const MainColumItemBody({
    super.key,
    required this.isEdit,
    this.itemModel
  });
  final bool isEdit;
  final ItemModel? itemModel;

  @override
  State<MainColumItemBody> createState() => _MainColumItemBodyState();
}

class _MainColumItemBodyState extends State<MainColumItemBody> {

  @override
  void initState() {
    ItemCubit.get(context).initControllers(itemModel: widget.itemModel, isEdit: widget.isEdit);
    super.initState();
  }

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 140.0,
        vertical: 20,
      ),
      child: BlocConsumer<ItemCubit, ItemState>(
        listener: (context, state){},
        builder: (context, state)
        {
          var cubit = ItemCubit.get(context);
           return SingleChildScrollView(
            child: Column(
              children: [
                DefaultForm(
                  controller: cubit.proNum,
                  text: 'رقم المنتج (الباركود)',
                ),
                const SizedBox(height: 10,),
                DefaultForm(
                  controller: cubit.proName,
                  text: 'اسم المنتج',
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: DefaultForm(
                        controller: cubit.sell,
                        text: 'سعر البيع',
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Expanded(
                      child: DefaultForm(
                        controller: cubit.buy,
                        text: 'سعر الشراء',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                DefaultForm(
                  controller: cubit.des,
                  text: 'الوصف',

                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: DefaultForm(
                        controller: cubit.quant,
                        text: 'الكمية',
                        suffixIcon: DefaultNumberPicker(
                          onAdd:  ()
                          {
                            cubit.onAddMinusItem(
                                add: true,
                                value: cubit.quant.text.toString(),
                                controller: cubit.quant
                            );
                          },
                          onMinus:  ()
                          {
                            cubit.onAddMinusItem(
                                add: false,
                                value: cubit.quant.text.toString(),
                                controller: cubit.quant
                            );
                          },
                        ),
                        suffixPadding: 0,
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Expanded(
                      child: DefaultForm(
                        controller: cubit.quantLimit,
                        text: 'حد الكمية',
                        suffixIcon: DefaultNumberPicker(
                          onAdd:  ()
                          {
                            cubit.onAddMinusItem(
                                add: true,
                                value: cubit.quantLimit.text.toString(),
                              controller: cubit.quantLimit
                            );
                          },
                          onMinus:  ()
                          {
                            cubit.onAddMinusItem(
                                add: false,
                                value: cubit.quantLimit.text.toString(),
                                controller: cubit.quantLimit
                            );
                          },
                        ),
                        suffixPadding: 0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                DefaultForm(
                  controller: cubit.exDate,
                  text: 'تاريخ الانتهاء',
                  suffixIcon: const Icon(
                    Icons.calendar_today_outlined,
                    color: ColorsManager.primary,
                    size: 20,
                  ),
                onTap: () {
                showDateBox(
                  context: context,
                  controller: cubit.exDate,
                  );
                  }
                ),
                const SizedBox(height: 10,),
                DefaultForm(
                  controller: cubit.tax,
                  text: 'الضريبة',

                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
