import 'package:flutter/material.dart';
import '../../constants/utol_colors.dart' as colors;
import '../styles/utol_text_styles.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({
    super.key,
    this.text,
    this.thickness = 1.0,
    this.color = colors.lightGrey,
    this.dividerBeforeTextWidth = 20.0,
  });

  final String? text;
  final double thickness;
  final Color color;
  final double dividerBeforeTextWidth;

  @override
  Widget build(BuildContext context) {
    return text != null
        ? Row(
            children: <Widget>[
              SizedBox(
                width: dividerBeforeTextWidth,
                child: Divider(
                  thickness: thickness,
                  color: color,
                  endIndent: 5,
                ),
              ),
              Text(
                text!,
                style: UtolTextStyles.title6MediumSp.copyWith(
                  color: color,
                ),
              ),
              Expanded(
                child: Divider(
                  thickness: thickness,
                  color: color,
                  indent: 5,
                ),
              ),
            ],
          )
        : Divider(
            thickness: thickness,
            color: color,
            indent: 5,
          );
  }
}
