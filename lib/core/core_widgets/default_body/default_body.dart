import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_divider.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_button_manager.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_empty_button.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_filled_button.dart';
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
    this.titleDivider = true,
    this.showNavBar = true,
    this.sideBarTitleToDivider = SizeManager.sideBarTitleToDivider,
    this.buttonsDividerVPadding = 10,
  });

  final Widget? sideBarBody;
  final String? title;
  final bool titleDivider;
  final bool showNavBar;
  final Widget body;
  final double sideBarTitleToDivider;
  final double buttonsDividerVPadding;
  final DefaultButtonManager? sideBarFilledButton; // filled primary
  final DefaultButtonManager? sideBarEmptyButton; // filled white

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if(MediaQuery.of(context).size.width<900)
        {
          return Scaffold(body: Center(child: Text('Mobile UI not finished yet'),),);
        }
        return SafeArea(
          child: Row(
            children: [
              // side bar
              Expanded(
                flex: 3,
                child: Container(
                  padding: PaddingManager.sideBar,
                  // width: MediaQuery.of(context).size.width*0.271,
                  //height: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorsManager.secondary,
                      borderRadius: BorderManager.sideBar),
                  child: Column(
                    children: [
                      if (title != null)
                        Column(
                          children: [
                            Text(
                              title!,
                              style: StyleManager.textStyle20.copyWith(
                                fontWeight: FontWeight.bold
                              ),
                              textAlign: TextAlign.center,

                            ),
                            if (titleDivider)
                              Column(
                                children: [
                                  SizedBox(
                                    height: sideBarTitleToDivider,
                                  ),
                                  const DefaultDivider()
                                ],
                              ),
                          ],
                        ),
                      if (sideBarBody == null) const Spacer(),
                      if (sideBarBody != null) Expanded(child: sideBarBody!),
                      Column(
                        children: [
                          if (sideBarEmptyButton == null &&
                              sideBarFilledButton != null)
                            const DefaultDivider(),
                          if (sideBarFilledButton != null)
                            DefaultFilledButton(
                                onPressed: sideBarFilledButton!.onTab,
                                text: sideBarFilledButton!.text),
                          if (sideBarFilledButton != null &&
                              sideBarEmptyButton != null)
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: buttonsDividerVPadding),
                              child: const DefaultDivider(),
                            ),
                          if (sideBarEmptyButton != null)
                            DefaultEmptyButton(
                                onPressed: sideBarEmptyButton!.onTab,
                                text: sideBarEmptyButton!.text),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              // body
              Expanded(
                flex: 7,
                child: Container(
                  color: ColorsManager.white,
                  child: Column(
                    // alignment: Alignment.bottomCenter,
                    children: [
                      Expanded(child: body),
                      if(showNavBar)
                      const DefaultNavBar()
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
