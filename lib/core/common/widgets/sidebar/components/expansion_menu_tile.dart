import 'package:flutter/material.dart';

import '../../../../constants/utol_colors.dart' as colors;
import '../../../styles/utol_text_styles.dart';
import '../models/utol_menu_model.dart';
import 'menu_item.dart';

class ExpansionMenuTile extends StatelessWidget {
  const ExpansionMenuTile({
    super.key,
    required this.menu,
    this.isSelected = false,
  });

  final UtolMenuModel menu;

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      key: PageStorageKey<UtolMenuModel>(menu),
      initiallyExpanded: isSelected,
      iconColor: colors.secondary,
      collapsedIconColor: colors.lighterMainText,
      title: isSelected
          ? Text(
              menu.title,
              style: UtolTextStyles.smallBold.copyWith(color: colors.secondary),
            )
          : Text(
              menu.title,
              style: UtolTextStyles.smallBold.copyWith(
                color: colors.lighterMainText,
              ),
            ),
      leading: _leadingWidget(isSelected),
      trailing: _trailingWidget(isSelected),
      children: menu.subMenu.map(
        (UtolMenuModel e) {
          return e.subMenu.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ExpansionMenuTile(menu: e),
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: MenuTile(menu: e),
                );
        },
      ).toList(),
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
