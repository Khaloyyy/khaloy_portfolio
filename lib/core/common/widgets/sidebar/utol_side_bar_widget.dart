import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../../../../routes/routes_config.dart';

import 'models/utol_menu_model.dart';
import 'utol_sider_bar_template.dart';

class UtolSideNavWidget extends ConsumerStatefulWidget {
  const UtolSideNavWidget({super.key, required this.selectedIndex});

  final double selectedIndex;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UtolSideNavWidgetState();
}

class _UtolSideNavWidgetState extends ConsumerState<UtolSideNavWidget> {
  late double widgetIndex;

  @override
  Widget build(BuildContext context) {
    //
    return UtolSideNavigationBar(
      selectedIndex: widgetIndex,

      menu: <UtolMenuModel>[
        // ==================== Dashboard ==================== //
      ],
    );
  }
}
