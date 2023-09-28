import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class DefaultFilledButton extends StatefulWidget {
  const DefaultFilledButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isSmall = false ,
    this.fillColor = ColorsManager.primary ,
    this.textColor = ColorsManager.white ,
  });

  final void Function() onPressed;
  final String text;
  final bool isSmall;
  final Color fillColor;
  final Color textColor ;

  @override
  State<DefaultFilledButton> createState() => _DefaultFilledButtonState();
}

class _DefaultFilledButtonState extends State<DefaultFilledButton> {
  bool tapped = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeManager.s40,
      width: double.infinity,
      child: MouseRegion(
        onEnter: (mouse) {},
        onHover: (mouse) {
          setState(() {
            tapped = false;
          });
        },
        onExit: (exit) {
          setState(() {
            tapped = false;
          });
        },
        child: MaterialButton(
          onPressed: widget.onPressed,
          color: widget.fillColor,
          hoverColor: ColorsManager.white,
          shape: OutlineInputBorder(
              borderRadius: BorderManager.radius5,
              borderSide: const BorderSide(color: Colors.transparent)),
          child: Text(
            widget.text,
            style: tapped
                ? StyleManager.textStyleLight18.copyWith(color: ColorsManager.primary)
                : widget.isSmall ? StyleManager.textStyleLight18.copyWith(color: widget.textColor, fontSize: 14): StyleManager.textStyleLight18.copyWith(color: widget.textColor),
          ),
        ),
      ),
    );
  }
}
