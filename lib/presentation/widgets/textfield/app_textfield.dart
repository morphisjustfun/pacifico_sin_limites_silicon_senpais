import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/colors.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/font_styles.dart';

class AppTextField extends StatelessWidget {
  final String? hintText;
  final ValueChanged<String>? onChange;
  final String? errorText;
  final bool withBorder;
  final int? maxLength;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final String? labelText;
  final TextCapitalization? textCapitalization;
  final TextInputType? keyBoardType;
  final EdgeInsetsGeometry? contentPadding;

  const AppTextField(
      {Key? key,
        this.hintText,
        this.onChange,
        this.errorText,
        this.withBorder = true,
        this.controller,
        this.maxLength,
        this.labelText,
        this.textInputAction,
        this.textCapitalization,
        this.keyBoardType,
        this.contentPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    InputBorder defaultBorder = withBorder
        ? OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.borderTextFieldColor),
        borderRadius: BorderRadius.all(Radius.circular(4.r)))
        : InputBorder.none;

    return TextFormField(
        controller: controller,
        style: AppFontStyles.greyIconColorRegular14,
        textAlign: TextAlign.start,
        onChanged: onChange,
        maxLength: maxLength,
        textInputAction: textInputAction,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        keyboardType: keyBoardType,
        decoration: InputDecoration(
          contentPadding: contentPadding ??
              EdgeInsets.only(left: 16.w, top: 13.h, bottom: 13.h, right: 16.w),
          hintStyle: AppFontStyles.labelRegular14,
          labelStyle: AppFontStyles.labelRegular14,
          labelText: labelText,
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          errorText: errorText,
          counterText: '',
          errorStyle: AppFontStyles.redRegular11,
          border: defaultBorder,
          enabledBorder: defaultBorder,
          focusedBorder: defaultBorder,
          focusedErrorBorder: withBorder
              ? OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(4.r)))
              : InputBorder.none,
        ));
  }
}
