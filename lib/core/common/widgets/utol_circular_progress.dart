import 'package:flutter/material.dart';
import '../../constants/utol_colors.dart' as colors;

class UtolCircularProgess extends StatelessWidget {
  const UtolCircularProgess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(colors.secondary),
    );
  }
}
