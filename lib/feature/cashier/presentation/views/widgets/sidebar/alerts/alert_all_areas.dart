import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_filled_button.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'package:restaurant/feature/cashier/presentation/cubit/cashier_cubit.dart';

import 'alert_add_area.dart';

class AlertAllAreas extends StatelessWidget {
  const AlertAllAreas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: InkWell(
          onTap: ()
          {
            Navigator.pop(context);
          },
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderManager.radius15,
                color: ColorsManager.secondary,
              ),
              height: MediaQuery.of(context).size.height*0.7,
              width:  MediaQuery.of(context).size.width*0.7,
              child: Column(
                children:
                [
                  Container(
                    decoration: BoxDecoration(
                        color: ColorsManager.alertDialogSmallFill,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        )
                    ),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children:
                      [
                        SizedBox(
                          width: 100,
                          child: DefaultFilledButton(
                              onPressed: ()
                              {
                                showDialog(
                                    context: context,
                                    builder: (context)
                                    {
                                      return const AlertAddArea();
                                    });
                              }, text: 'اضافة'),
                        ),

                        Expanded(
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 100),
                                height: 35,
                                child: TextFormField(
                                  controller: TextEditingController(),
                                  onChanged: (String? value){},
                                  style: StyleManager.textStyleDark16.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: ColorsManager.secondaryDark,
                                      height: 1.7
                                  ),
                                  cursorColor: ColorsManager.primary,
                                  decoration: InputDecoration(
                                    hintText: 'بحث',
                                    hintStyle:  StyleManager.textStyleDark16.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: ColorsManager.secondaryDark,
                                        height: 1.7
                                    ),
                                    suffixIconConstraints: BoxConstraints(
                                        minWidth: 20, maxHeight: 20
                                    ),
                                    suffixIcon: Padding(
                                      padding: EdgeInsetsDirectional.only(end:5),
                                      child:  SvgPicture.asset(AssetsManager.search),
                                    ),
                                    errorStyle: StyleManager.textStyleDark24.copyWith(color: ColorsManager.red),
                                    filled: true,
                                    fillColor: ColorsManager.secondary,
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderManager.radius15,
                                        borderSide: const BorderSide(color: ColorsManager.secondary)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderManager.radius15,
                                        borderSide: const BorderSide(
                                          color:  ColorsManager.secondary,
                                        )
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderManager.radius15,
                                        borderSide: const BorderSide(
                                          color:  ColorsManager.red,
                                        )
                                    ),
                                    errorBorder:  OutlineInputBorder(
                                        borderRadius: BorderManager.radius15,
                                        borderSide: const BorderSide(
                                          color:  ColorsManager.red,
                                        )
                                    ),
                                  ),
                                )
                            )
                        ),

                        SizedBox(
                          width: 100,
                          child: DefaultFilledButton(onPressed: (){}, text: 'حفظ'),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Expanded(
                      child: GridView.count(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                          crossAxisSpacing: 15.0,
                          mainAxisSpacing: 15.0,
                          childAspectRatio: 2,
                          crossAxisCount: ((MediaQuery.of(context).size.width*0.7)/100).round(),
                          children: List.generate(
                              CashierCubit.get(context).areas.length,
                                  (index) => InkWell(
                                  onTap: ()
                                  {
                                    CashierCubit.get(context).chooseArea(areaModel: CashierCubit.get(context).areas[index]);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderManager.radius10,
                                      color: ColorsManager.white,
                                    ),
                                    padding: EdgeInsets.all(5),
                                    child: Center(child: Text(CashierCubit.get(context).areas[index].name,textAlign: TextAlign.center, style: StyleManager.textStyleDark16.copyWith(fontWeight: FontWeight.w700),)),
                                  ))
                          )
                      )
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
