import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class UtolTextStyles {
  // Base styles
  static const String fontFamily = 'Poppins-Regular';
  static const TextStyle baseStyle = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
  );

  // Main styles with responsive sizings
  static final TextStyle title1Sp = baseStyle.copyWith(fontSize: 38.sp);
  static final TextStyle title1MediumSp =
      title1Sp.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle title1SemiBoldSp =
      title1Sp.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle title1BoldSp =
      title1Sp.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle title2Sp = baseStyle.copyWith(fontSize: 32.sp);
  static final TextStyle title2MediumSp =
      title2Sp.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle title2SemiBoldSp =
      title2Sp.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle title2BoldSp =
      title2Sp.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle title3Sp = baseStyle.copyWith(fontSize: 22.sp);
  static final TextStyle title3MediumSp =
      title3Sp.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle title3SemiBoldSp =
      title3Sp.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle title3BoldSp =
      title3Sp.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle title4Sp = baseStyle.copyWith(fontSize: 20.sp);
  static final TextStyle title4MediumSp =
      title4Sp.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle title4SemiBoldSp =
      title4Sp.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle title4BoldSp =
      title4Sp.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle title5Sp = baseStyle.copyWith(fontSize: 18.sp);
  static final TextStyle title5MediumSp =
      title5Sp.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle title5SemiBoldSp =
      title5Sp.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle title5BoldSp =
      title5Sp.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle title6Sp = baseStyle.copyWith(fontSize: 16.sp);
  static final TextStyle title6MediumSp =
      title6Sp.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle title6SemiBoldSp =
      title6Sp.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle title6BoldSp =
      title6Sp.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle title7Sp = baseStyle.copyWith(fontSize: 14.sp);
  static final TextStyle title7MediumSp =
      title7Sp.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle title7SemiBoldSp =
      title7Sp.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle title7BoldSp =
      title7Sp.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle title8Sp = baseStyle.copyWith(fontSize: 30.sp);
  static final TextStyle title8MediumSp =
      title8Sp.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle title8SemiBoldSp =
      title8Sp.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle title8BoldSp =
      title8Sp.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle bodySp = baseStyle.copyWith(fontSize: 14.sp);
  static final TextStyle bodyMediumSp =
      bodySp.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle bodySemiBoldSp =
      bodySp.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle bodyBoldSp =
      bodySp.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle smallBodySp = baseStyle.copyWith(fontSize: 13.sp);
  static final TextStyle smallBodyMediumSp =
      small.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle smallBodySemiBoldSp =
      small.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle smallBodyBoldSp =
      small.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle smallSp = baseStyle.copyWith(fontSize: 12.sp);
  static final TextStyle smallMediumSp =
      smallSp.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle smallSemiBoldSp =
      smallSp.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle smallBoldSp =
      smallSp.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle extraSmallSp = baseStyle.copyWith(fontSize: 10.sp);
  static final TextStyle extraSmallMediumSp =
      extraSmallSp.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle extraSmallSemiBoldSp =
      extraSmallSp.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle extraSmallBoldSp =
      extraSmallSp.copyWith(fontWeight: FontWeight.w700);

  // Main styles
  static final TextStyle title1 = baseStyle.copyWith(fontSize: 38);
  static final TextStyle title1Medium =
      title1.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle title1SemiBold =
      title1.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle title1Bold =
      title1.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle title2 = baseStyle.copyWith(fontSize: 32);
  static final TextStyle title2Medium =
      title2.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle title2SemiBold =
      title2.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle title2Bold =
      title1.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle title3 = baseStyle.copyWith(fontSize: 22);
  static final TextStyle title3Medium =
      title3.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle title3SemiBold =
      title3.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle title3Bold =
      title3.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle title4 = baseStyle.copyWith(fontSize: 20);
  static final TextStyle title4Medium =
      title4.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle title4SemiBold =
      title4.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle title4Bold =
      title4.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle title5 = baseStyle.copyWith(fontSize: 18);
  static final TextStyle title5Medium =
      title5.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle title5SemiBold =
      title5.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle title5Bold =
      title5.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle title6 = baseStyle.copyWith(fontSize: 16);
  static final TextStyle title6Medium =
      title6.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle title6SemiBold =
      title6.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle title6Bold =
      title6.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle title7 = baseStyle.copyWith(fontSize: 14);
  static final TextStyle title7Medium =
      title7.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle title7SemiBold =
      title7.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle title7Bold =
      title7.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle title8 = baseStyle.copyWith(fontSize: 30);
  static final TextStyle title8Medium =
      title8.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle title8SemiBold =
      title8.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle title8Bold =
      title8.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle body = baseStyle.copyWith(fontSize: 14);
  static final TextStyle bodyMedium =
      body.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle bodySemiBold =
      body.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle bodyBold = body.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle smallBody = baseStyle.copyWith(fontSize: 13);
  static final TextStyle smallBodyMedium =
      small.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle smallBodySemiBold =
      small.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle smallBodyBold =
      small.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle small = baseStyle.copyWith(fontSize: 12);
  static final TextStyle smallMedium =
      small.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle smallSemiBold =
      small.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle smallBold =
      small.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle extraSmall = baseStyle.copyWith(fontSize: 11);
  static final TextStyle extraSmallMedium =
      extraSmall.copyWith(fontWeight: FontWeight.w500);
  static final TextStyle extraSmallSemiBold =
      extraSmall.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle extraSmallBold =
      extraSmall.copyWith(fontWeight: FontWeight.w700);
}
