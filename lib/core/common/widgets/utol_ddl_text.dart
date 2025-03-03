import 'package:flutter/material.dart';

import '../styles/utol_text_styles.dart';

class UtolDdlText extends StatelessWidget {
  const UtolDdlText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Dropdown Filters',
      style: UtolTextStyles.smallMedium,
    );
  }
}
