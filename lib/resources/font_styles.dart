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
}
