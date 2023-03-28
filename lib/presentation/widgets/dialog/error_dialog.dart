import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacifico_sin_limites_silicon_senpais/gen/assets.gen.dart';
import 'package:pacifico_sin_limites_silicon_senpais/injectable.dart';
import 'package:pacifico_sin_limites_silicon_senpais/presentation/widgets/dialog/base_dialog.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/colors.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/font_styles.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/strings.dart';

class ErrorDialog extends BaseDialog {
  final String title;
  final String description;
  String? acceptButtonText;
  final VoidCallback? onAcceptButton;

  ErrorDialog(
      {this.title = '',
      required this.description,
      this.onAcceptButton,
      this.acceptButtonText});

  @override
  Widget createAcceptButton({BuildContext? context}) {
    return MaterialButton(
      onPressed: () {
        if (onAcceptButton != null) {
          onAcceptButton!();
        }
        getIt<FluroRouter>().pop(context!);
      },
      color: AppColors.errorButtonColor,
      child: Text(acceptButtonText ?? AppStrings.general.accept,
          style: AppFontStyles.whiteMedium16),
    );
  }

  @override
  Widget? createCancelButton({BuildContext? context}) {
    return null;
  }

  @override
  Widget createDescription() {
    return Text(
      description,
      style: AppFontStyles.brownishGreyRegular16,
      textAlign: TextAlign.center,
    );
  }

  @override
  Widget? createImage() {
    return Assets.icons.errorIcon.svg(
      width: 97.w,
      height: 88.h,
    );
  }

  @override
  Widget? createTitle() {
    return Text(
      title,
      style: AppFontStyles.primaryColorMedium16,
    );
  }
}
