import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
 import '../../../../../../core/resources_manager/size_manager.dart';

class SideQuickItemsBody extends StatefulWidget {
  const SideQuickItemsBody({super.key});

  @override
  State<SideQuickItemsBody> createState() => _SideQuickItemsBodyState();
}

class _SideQuickItemsBodyState extends State<SideQuickItemsBody> {
  @override
  Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(20.0),
       child: Column(
          children: [
           Container(
             height: SizeManager.s40,
             width: double.infinity,
             decoration: BoxDecoration(
              color: ColorsManager.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: ColorsManager.primary
              )
            ),
            child:   Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Text(
                 'ترتيب حسب',
                 style: StyleManager.textStyleDark16,
               ),
                 PopupMenuButton(
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 20,
                     ) ,
                    itemBuilder:(context) => [

                       const PopupMenuItem(
                         value: 0,
                        child: Center(
                          child: Text(
                            'أبجدي',
                            style: StyleManager.textStyleDark16,
                          ),
                        ),
                      ),
                      const PopupMenuItem(
                         value: 1,
                        child: Center(
                          child: Text(
                            'كمية',
                            style: StyleManager.textStyleDark16,
                          ),
                        ),
                      ),
                     ]
                ),
             ],
            ),
             ),
         ],
       ),
     );
  }
}
