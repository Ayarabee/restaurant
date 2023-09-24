import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class DefaultFilledButton extends StatefulWidget {
  const DefaultFilledButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final void Function() onPressed;
  final String text;

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
          color: ColorsManager.primary,
          hoverColor: ColorsManager.white,
          shape: OutlineInputBorder(
              borderRadius: BorderManager.radius5,
              borderSide: const BorderSide(color: Colors.transparent)),
          child: Text(
            widget.text,
            style: tapped
                ? StyleManager.textStylePrimary24
                : StyleManager.textStyleDark24
                    .copyWith(color: ColorsManager.white),
          ),
        ),
      ),
    );
  }
}
