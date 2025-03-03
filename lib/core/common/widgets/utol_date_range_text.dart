import 'package:flutter/material.dart';

import '../styles/utol_text_styles.dart';

class UtolDateRangeText extends StatelessWidget {
  const UtolDateRangeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Date Range Filters',
      style: UtolTextStyles.smallMedium,
    );
  }
}
