import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_filled_button.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class AlertAddArea extends StatelessWidget {
  const AlertAddArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderManager.radius15,
                      color: ColorsManager
                          .alertDialogSmallFill,
                    ),
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                      [
                        Container(
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
                                hintText: 'المنطقة',
                                hintStyle:  StyleManager.textStyleDark16.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: ColorsManager.secondaryDark,
                                    height: 1.7
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
                        ),
                        Row(
                          children: [
                            Expanded(child: DefaultFilledButton(onPressed: (){}, text: 'اضافة')),
                            SizedBox(width: 20,),
                            Expanded(child: DefaultFilledButton(onPressed: (){}, text: 'الغاء',fillColor: ColorsManager.white, textColor: ColorsManager.black,)),
                          ],
                        )

                      ],
                    ),
                  )
              )
          )
      ),
    );
  }
}
