import 'package:flutter/material.dart';

import '../../constants/utol_colors.dart' as colors;

class UtolCardToggle extends StatefulWidget {
  const UtolCardToggle({
    super.key,
    required this.title,
    this.subTitle,
    this.onTap,
    this.switchWidget,
  });
  final Widget? switchWidget;
  final String title;
  final String? subTitle;

  final VoidCallback? onTap;

  @override
  UtolCardToggleState createState() => UtolCardToggleState();
}

class UtolCardToggleState extends State<UtolCardToggle> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Title text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Title
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.title,
                          style: const TextStyle(
                            color: colors.mainText,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          widget.subTitle ?? '',
                          style: const TextStyle(
                            color: colors.mainText,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  widget.switchWidget!,
                ],
              ),

              const Divider(
                color: colors.lightGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
