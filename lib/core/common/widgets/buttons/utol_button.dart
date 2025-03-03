import 'package:flutter/material.dart';
import '../../../constants/utol_colors.dart' as colors;

// ==================== Utol Button =================== //

class UtolButton extends StatelessWidget {
  const UtolButton({
    super.key,
    required this.title,
    this.backgroundColor = colors.primary,
    this.foregroundColor = colors.secondary,
    this.borderRadius = 4,
    this.height = 40,
    this.width,
    required this.onPressed,
    this.textStyle = const TextStyle(
      fontSize: 12,
      fontFamily: 'Poppins-Regular',
      fontWeight: FontWeight.w400,
      color: colors.whiteText,
    ),
  });

  /// The title of the button.
  final String title;

  /// The background color of the button.
  final Color backgroundColor;

  /// The foreground color of the button.
  final Color foregroundColor;

  /// The border radius of the button.
  final double borderRadius;

  /// The height of the button
  final double height;

  /// The width of the button
  final double? width;

  /// The callback function to be called when the button is pressed.
  final VoidCallback onPressed;

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          textStyle: textStyle,
        ),
        child: Center(
          child: Text(
            title,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
