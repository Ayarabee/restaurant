import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({super.key});

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with TickerProviderStateMixin {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onHighlightChanged: (value) {
        setState(() {
          isTapped = value;
        });
      },
      onTap: () {},
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastLinearToSlowEaseIn,
        height: isTapped ? 55 : 60,
        width: isTapped ? 150 : 160,
        decoration: BoxDecoration(
          color: ColorsManager.primary,
          borderRadius: BorderManager.radius15,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 30,
              offset: const Offset(3, 7),
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'TAP HERE',
            style: StyleManager.textStyleLight30,
          ),
        ),
      ),
    );
  }
}
