import 'package:flutter/material.dart';

class UtolMenuModel {
  const UtolMenuModel({
    this.currentRoute,
    this.activeRoutes,
    required this.title,
    this.onPressed,
    this.leadingIcon,
    this.leading,
    this.trailingIcon,
    this.subMenu = const <UtolMenuModel>[],
  });

  final String? currentRoute;

  final List<String>? activeRoutes;

  final String title;

  final VoidCallback? onPressed;

  final IconData? leadingIcon;

  final Widget? leading;

  final IconData? trailingIcon;

  final List<UtolMenuModel> subMenu;

  /// Determines if this item a group item which mean that this item can expand
  /// and show its children.
  bool get isGroup => subMenu.isNotEmpty;

  /// Determines if the current menu/route is selected.
  bool get isSelected =>
      activeRoutes != null && activeRoutes!.contains(currentRoute);
}
