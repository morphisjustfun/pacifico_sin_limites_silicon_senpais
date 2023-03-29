import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/font_family.dart';

import 'colors.dart';

class AppFontStyles {
  /// Light [FontWeight.w300]
  /// Regular [FontWeight.w400]
  /// Medium [FontWeight.w500]
  /// SemiBold [FontWeight.w600]
  /// Bold [FontWeight.w700]

  static const String _primaryFontFamily = AppFontFamily.roboto;

  static TextStyle primaryTextSemiBold15 = TextStyle(
    fontFamily: _primaryFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 15.sp,
    color: AppColors.primaryTextColor,
  );

  static TextStyle primaryTextBold32 = TextStyle(
    fontFamily: _primaryFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 32.sp,
    color: AppColors.secondaryTextColor,
  );

  static TextStyle primaryTextBold24 = TextStyle(
    fontFamily: _primaryFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
    color: AppColors.secondaryTextColor,
  );

  static TextStyle primaryTextRegular14 = TextStyle(
    fontFamily: _primaryFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColors.secondaryTextColor,
  );

  static TextStyle primaryTextRegular16 = TextStyle(
    fontFamily: _primaryFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: AppColors.secondaryTextColor,
  );

  static TextStyle primaryTextRegular20 = TextStyle(
    fontFamily: _primaryFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 20.sp,
    color: AppColors.secondaryTextColor,
  );

  static TextStyle primaryTextBold20 = TextStyle(
    fontFamily: _primaryFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
    color: AppColors.secondaryTextColor,
  );

  static TextStyle primaryTextBold16 = TextStyle(
    fontFamily: _primaryFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 16.sp,
    color: AppColors.secondaryTextColor,
  );

  static TextStyle secondaryTextBold32 = TextStyle(
    fontFamily: _primaryFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 32.sp,
    color: AppColors.secondaryColor,
  );

  static TextStyle secondaryTextBold20 = TextStyle(
    fontFamily: _primaryFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
    color: AppColors.secondaryColor,
  );

  static TextStyle primaryTextBold14 = TextStyle(
    fontFamily: _primaryFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 16.sp,
    color: AppColors.secondaryTextColor,
  );

  static TextStyle secondaryTextRegular12 = TextStyle(
    fontFamily: _primaryFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColors.secondaryTextColor,
  );

  static TextStyle greyIconColorRegular14 = TextStyle(
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w400,
      color: AppColors.greyIconColor,
      fontSize: 14.sp);

  static TextStyle labelRegular14 = TextStyle(
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w400,
      color: AppColors.labelColor,
      fontSize: 14.sp);

  static TextStyle redRegular11 = TextStyle(
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w400,
      color: Colors.red,
      fontSize: 11.sp);

  static TextStyle buttonMedium16 = TextStyle(
    fontFamily: _primaryFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
  );

  static TextStyle whiteMedium16 = TextStyle(
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontSize: 16.sp);

  static TextStyle brownishGreyRegular16 = TextStyle(
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w400,
      color: AppColors.brownishGrey,
      fontSize: 16.sp);

  static TextStyle primaryColorMedium16 = TextStyle(
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryColor,
      fontSize: 16.sp);
}
