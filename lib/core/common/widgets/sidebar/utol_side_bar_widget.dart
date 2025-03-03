import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../routes/router.dart';

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
  void initState() {
    widgetIndex = widget.selectedIndex;

    super.initState();
  }

  Future<void> _pushToRoute(PageRouteInfo<dynamic> route) async {
    context.router.replace(route);
  }

  @override
  Widget build(BuildContext context) {
    //
    return UtolSideNavigationBar(
      selectedIndex: widgetIndex,

      menu: <UtolMenuModel>[
        UtolMenuModel(
          title: 'Homepage',
          leadingIcon: Icons.dashboard,
          onPressed: () {
            _pushToRoute(const HomepageRoute());
          },
        ),

        UtolMenuModel(
          title: 'Educational Background',
          leadingIcon: Icons.school,
          onPressed: () {
            _pushToRoute(const EductionalBackgroundRoute());
          },
        ),
        UtolMenuModel(
          title: 'About Me',
          leadingIcon: Icons.person,
          onPressed: () {
            _pushToRoute(const AboutMeRoute());
          },
        ),

        UtolMenuModel(
          title: 'Reach Out',
          leadingIcon: Icons.chat,
          onPressed: () {
            _pushToRoute(const ReachOutRoute());
          },
        ),
        UtolMenuModel(
          title: 'Skills',
          leadingIcon: Icons.work,
          onPressed: () {
            _pushToRoute(const SkillsRoute());
          },
        ),
      ],
    );
  }
}
