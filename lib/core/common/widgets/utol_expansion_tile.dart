import 'package:flutter/material.dart';
import '../../constants/utol_colors.dart' as colors;
import '../styles/utol_text_styles.dart';

class UtolExpansionTile extends StatelessWidget {
  const UtolExpansionTile({
    super.key,
    required this.title,
    required this.content,
    this.prefixIcon,
    this.maintainContentState = true,
    this.childrenPadding,
    this.tilePadding,
    this.titleTextStyle,
    this.backgroundColor,
    this.dividerColor,
    this.collapsedIconColor,
    this.initiallyExpanded = false,
    this.onExpansionChanged,
    this.controlAffinity,
    this.suffix,
  });

  final String title;
  final Widget content;
  final IconData? prefixIcon;
  final bool maintainContentState;
  final EdgeInsetsGeometry? childrenPadding;
  final EdgeInsetsGeometry? tilePadding;
  final TextStyle? titleTextStyle;
  final Color? backgroundColor;
  final Color? dividerColor;
  final Color? collapsedIconColor;
  final bool initiallyExpanded;
  final ValueChanged<bool>? onExpansionChanged;
  final ListTileControlAffinity? controlAffinity;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: colors.secondary),
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: colors.secondary),
        child: ExpansionTile(
          maintainState: maintainContentState,
          initiallyExpanded: initiallyExpanded,
          expandedAlignment: Alignment.centerLeft,
          childrenPadding: childrenPadding,
          tilePadding: tilePadding,
          onExpansionChanged: onExpansionChanged,
          controlAffinity: controlAffinity,
          title: Row(
            children: <Widget>[
              if (prefixIcon != null)
                Icon(
                  prefixIcon,
                  size: 22,
                  color: colors.secondary,
                ),
              if (prefixIcon != null) const SizedBox(width: 10),
              Text(
                title,
                style: UtolTextStyles.smallBodyBold
                    .copyWith(
                      color: colors.secondary,
                      fontWeight: FontWeight.bold,
                    )
                    .merge(titleTextStyle),
              ),
              if (suffix != null) suffix!,
            ],
          ),
          iconColor: colors.secondary,
          collapsedIconColor: collapsedIconColor ?? colors.secondary,
          backgroundColor: backgroundColor ?? colors.filterBg,
          collapsedBackgroundColor: backgroundColor ?? colors.filterBg,
          children: <Widget>[content],
        ),
      ),
    );
  }
}
