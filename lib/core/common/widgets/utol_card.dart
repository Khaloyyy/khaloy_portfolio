import 'package:flutter/material.dart';

import '../../constants/utol_colors.dart' as colors;
import '../styles/utol_text_styles.dart';

class UtolCard extends StatefulWidget {
  const UtolCard({
    super.key,
    required this.title,
    this.count,
    this.icon,
    this.onTap,
    required this.color,
    this.hoverColor = colors.cardBg,
    this.centerTitle = false,
    this.hasHoverColor = true,
  });

  final String title;
  final int? count;
  final IconData? icon;
  final VoidCallback? onTap;
  final Color color;
  final Color hoverColor;
  final bool centerTitle;
  final bool hasHoverColor;

  @override
  UtolCardState createState() => UtolCardState();
}

class UtolCardState extends State<UtolCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        if (widget.hasHoverColor) {
          setState(() {
            _isHovered = true;
          });
        }
      },
      onExit: (_) {
        if (widget.hasHoverColor) {
          setState(() {
            _isHovered = false;
          });
        }
      },
      cursor: SystemMouseCursors.click,
      child: Card(
        elevation: 3,
        child: InkWell(
          onTap: widget.onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: widget.hasHoverColor && _isHovered
                  ? widget.hoverColor
                  : widget.color,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: widget.icon != null
                  ? Row(
                      children: <Widget>[
                        Icon(
                          widget.icon,
                          color: colors.mainText,
                          size: 19,
                        ),

                        //
                        const SizedBox(width: 8),

                        Text(
                          widget.title,
                          style: UtolTextStyles.smallMediumSp.copyWith(
                            color: colors.mainText,
                          ),
                        ),

                        //
                        const Spacer(),

                        if (widget.count != null)
                          Text(
                            widget.count.toString(),
                            style: UtolTextStyles.smallMediumSp.copyWith(
                              color: colors.mainText,
                            ),
                          ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Flexible(
                              child: widget.centerTitle
                                  ? Center(
                                      child: Text(
                                        widget.title,
                                        style: UtolTextStyles.smallSemiBoldSp
                                            .copyWith(
                                          color: colors.mainText,
                                        ),
                                      ),
                                    )
                                  : Text(
                                      widget.title,
                                      style: UtolTextStyles.smallSemiBoldSp
                                          .copyWith(
                                        color: colors.mainText,
                                      ),
                                    ),
                            ),
                            if (widget.count != null)
                              Text(
                                widget.count.toString(),
                                style: UtolTextStyles.smallSemiBoldSp.copyWith(
                                  color: colors.mainText,
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
