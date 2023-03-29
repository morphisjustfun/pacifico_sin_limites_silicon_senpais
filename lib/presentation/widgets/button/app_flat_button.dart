import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/colors.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/font_styles.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/strings.dart';

class AppFlatButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final Widget? icon;
  final double? height;
  final double? width;

  AppFlatButton(
      {Key? key,
        this.onPressed,
        String? text,
        this.textColor = AppColors.secondaryTextColor,
        Color? backgroundColor,
        Color? borderColor,
        this.icon,
        this.width,
        this.height})
      : text = text ?? AppStrings.general.cancel,
        backgroundColor = backgroundColor ?? Colors.transparent,
        borderColor = borderColor ?? Colors.transparent,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
        primary: textColor,
        minimumSize: Size(100.w, 42.h),
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        textStyle: AppFontStyles.buttonMedium16,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.r)),
            side: BorderSide(color: borderColor)),
        disabledBackgroundColor: AppColors.disableColor,
        disabledForegroundColor: AppColors.disableTextColor,
        backgroundColor: backgroundColor);

    return SizedBox(
      height: height ?? 42.h,
      width: width,
      child: TextButton(
        style: flatButtonStyle,
        onPressed: onPressed,
        child: icon != null ? icon! : Text(text),
      ),
    );
  }
}
