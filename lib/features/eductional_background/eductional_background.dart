import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/sidebar/utol_side_bar_widget.dart';

@RoutePage()
class EductionalBackgroundScreen extends ConsumerWidget {
  const EductionalBackgroundScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 215, 248),
      body: Row(
        children: <Widget>[
          // ====================== SIDEBAR ====================== //
          const UtolSideNavWidget(selectedIndex: 1),

          // ====================== CONTENT ====================== //
          const Expanded(
            child: Center(child: Text('Educational Background Screen')),
          ),
        ],
      ),
    );
  }
}
