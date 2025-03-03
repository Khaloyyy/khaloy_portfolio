import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/utol_colors.dart' as colors;
import '../../../styles/utol_text_styles.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({
    super.key,
    required this.name,
    required this.email,
    required this.roles,
  });

  final String name;
  final String email;
  final String roles;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(4),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 8.w,
        ),
        child: Row(
          children: <Widget>[
            Tooltip(
              message: 'Charles Angelo Lim',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/default_images/user_icon_male.png',
                  width: 65.h,
                  height: 65.h,
                ),
              ),
            ),
            SizedBox(width: 16.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: UtolTextStyles.extraSmallSemiBoldSp.copyWith(
                    color: colors.lightMainText,
                  ),
                ),
                Text(
                  email,
                  style: UtolTextStyles.extraSmallSp.copyWith(
                    color: colors.lightMainText,
                  ),
                ),
                // Text(
                //   roles,
                //   style: UtolTextStyles.extraSmallSp.copyWith(
                //     color: colors.lightMainText,
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
