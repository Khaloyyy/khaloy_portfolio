import 'package:flutter/material.dart';

import '../styles/utol_text_styles.dart';
import 'buttons/utol_button.dart';

class UtolPlaceholder extends StatelessWidget {
  const UtolPlaceholder({
    super.key,
    this.icon,
    required this.title,
    this.buttonTitle,
    this.buttonTitleColor,
    this.buttonColor,
    this.buttonOnPressed,
    this.buttonWidth,
    this.padding,
  });

  final Widget? icon;
  final String title;
  final String? buttonTitle;
  final Color? buttonTitleColor;
  final Color? buttonColor;
  final VoidCallback? buttonOnPressed;
  final double? buttonWidth;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (icon != null) icon! else const SizedBox.shrink(),
            const SizedBox(height: 10),
            Text(title, style: UtolTextStyles.body),
            const SizedBox(height: 15),
            if (buttonTitle != null)
              SizedBox(
                width: buttonWidth,
                child: UtolButton(
                  title: buttonTitle!,
                  onPressed: buttonOnPressed!,
                ),
              )
            else
              const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
