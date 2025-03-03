import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/utol_colors.dart' as colors;

import 'components/expansion_menu_tile.dart';
import 'components/header_section.dart';
import 'components/menu_item.dart';
import 'models/utol_menu_model.dart';

class UtolSideNavigationBar extends StatefulWidget {
  const UtolSideNavigationBar({
    super.key,
    required this.menu,

    required this.selectedIndex,
  });

  final List<UtolMenuModel> menu;

  final double selectedIndex;

  @override
  State<UtolSideNavigationBar> createState() => _UtolSideNavigationBarState();
}

class _UtolSideNavigationBarState extends State<UtolSideNavigationBar> {
  late ScrollController _sideNavController;

  @override
  void initState() {
    _sideNavController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _sideNavController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: MediaQuery.of(context).size.height,
      child: Drawer(
        elevation: 0,
        backgroundColor: colors.primaryDark,
        shape: const RoundedRectangleBorder(),
        child: Column(
          children: <Widget>[
            const HeaderSection(),
            SizedBox(height: 4.h),
            Expanded(
              child: Scrollbar(
                thumbVisibility: true,
                controller: _sideNavController,
                child: ListView(
                  controller: _sideNavController,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    SizedBox(height: 22.h),
                    ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      itemCount: widget.menu.length,
                      itemBuilder: (BuildContext context, int index) {
                        final UtolMenuModel menuItem = widget.menu[index];

                        return (menuItem.isGroup)
                            ? ExpansionMenuTile(
                              menu: menuItem,
                              isSelected: index == widget.selectedIndex,
                            )
                            : MenuTile(
                              menu: menuItem,
                              isSelected: index == widget.selectedIndex,
                            );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
