import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/sidebar/utol_side_bar_widget.dart';
import '../../../../core/constants/utol_colors.dart' as colors;

@RoutePage()
class HomepageScreen extends ConsumerWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: colors.background,
      body: Row(
        children: <Widget>[
          // ====================== SIDEBAR ====================== //
          const UtolSideNavWidget(selectedIndex: 0),

          // ====================== CONTENT ====================== //
          const Expanded(child: Center(child: Text('Homepage Screen'))),
        ],
      ),
    );
  }
}
