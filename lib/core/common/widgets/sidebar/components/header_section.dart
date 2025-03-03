import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 32, 0, 0),
      child: SizedBox(
        width: 175.w,
        child: Image.asset(
          'assets/images/default_images/utol_logo_new.png',
        ),
      ),
    );
  }
}
