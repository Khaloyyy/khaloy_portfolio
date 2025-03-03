import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/utol_colors.dart' as colors;
import '../../../styles/utol_text_styles.dart';
import '../models/utol_menu_model.dart';

class MenuTile extends StatelessWidget {
  const MenuTile({
    super.key,
    required this.menu,
    this.isSelected = false,
  });

  final UtolMenuModel menu;

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: menu.onPressed,
      child: Container(
        height: 44,
        padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
        decoration: BoxDecoration(
          color: isSelected
              ? Color.alphaBlend(
                  colors.activeNavBg.withAlpha((0.3 * 255).toInt()),
                  colors.transparent,
                )
              : colors.transparent,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: <Widget>[
            if (menu.leadingIcon != null)
              _leadingWidget(isSelected)!
            else
              const SizedBox.shrink(),
            SizedBox(width: 12.w),
            if (isSelected)
              Text(
                menu.title,
                style:
                    UtolTextStyles.smallBold.copyWith(color: colors.secondary),
              )
            else
              Text(
                menu.title,
                style: UtolTextStyles.smallBold.copyWith(
                  color: colors.lighterMainText,
                ),
              ),
            if (menu.trailingIcon != null)
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: _trailingWidget(isSelected),
                ),
              )
            else
              const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }

  Widget? _leadingWidget(bool isSelected) => (menu.leading != null)
      ? menu.leading
      : (menu.leadingIcon != null)
          ? Icon(
              menu.leadingIcon,
              color: isSelected ? colors.secondary : colors.lighterMainText,
              size: 20,
            )
          : null;

  Widget? _trailingWidget(bool isSelected) => (menu.trailingIcon != null)
      ? Icon(
          menu.trailingIcon,
          color: isSelected ? colors.secondary : colors.lighterMainText,
          size: 20,
        )
      : null;
}
