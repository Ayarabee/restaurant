import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_divider.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_button_manager.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_empty_button.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_filled_button.dart';
import 'package:restaurant/core/core_widgets/nav_bar/default_nav_bar.dart';
import 'package:restaurant/core/core_widgets/nav_bar/default_nav_bar.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';


class DefaultBody extends StatelessWidget {
  const DefaultBody({
    super.key,
    this.sideBarBody,
    this.title,
    required this.body,
    this.sideBarFilledButton,
    this.sideBarEmptyButton,
  });

  final Widget? sideBarBody;
  final String? title;
  final Widget body;
  final DefaultButtonManager? sideBarFilledButton; // filled primary
  final DefaultButtonManager? sideBarEmptyButton; // filled white

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        // side bar
        Container(
          padding: PaddingManager.sideBar,
          width: MediaQuery.of(context).size.width*0.271,
          height: double.infinity,
          decoration: BoxDecoration(
            color: ColorsManager.secondary,
            borderRadius: BorderManager.sideBar
          ),
          child: Column(
            children:
            [
              if(title != null)
              Column(
                children: [
                  Text(
                    title!,
                    style: StyleManager.textStyle36,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: SizeManager.sideBarTitleToDivider,),
                  const DefaultDivider()
                ],
              ),

              if(sideBarBody != null)
                sideBarBody!,

              const Spacer(),
              Column(
                children:
                [
                  if(sideBarEmptyButton == null)
                    const DefaultDivider(),

                  if(sideBarFilledButton != null)
                    DefaultFilledButton(
                      onPressed: sideBarFilledButton!.onTab,
                      text: sideBarFilledButton!.text
                    ),

                  if(sideBarFilledButton != null && sideBarEmptyButton !=null)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: const DefaultDivider(),
                    ),

                  if(sideBarEmptyButton != null)
                    DefaultEmptyButton(
                        onPressed: sideBarEmptyButton!.onTab,
                        text: sideBarEmptyButton!.text
                    ),
                ],
              )

            ],
          ),
        ),

        // body
        Expanded(
          child: Container(
            color: ColorsManager.white,
            child: Column(
              children:
              [
                Expanded(
                    child: body,
                ),
                const DefaultNavBar()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
