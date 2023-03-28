import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/font_styles.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/strings.dart';

class LoadingDialog {
  static const String loadingContentKey = "loading_dialog_content_key";

  final BuildContext context;
  bool _isOpen = false;

  LoadingDialog({required this.context});

  bool get isOpen => _isOpen;

  void show({String? msg}) {
    if (!_isOpen) {
      _isOpen = true;
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (_) => _LoadingContent(
                message: msg ?? AppStrings.general.loading,
                key: const Key(loadingContentKey),
              ));
    }
  }

  void hide() {
    if (_isOpen) {
      _isOpen = false;
      Navigator.pop(context);
    }
  }
}

class _LoadingContent extends StatelessWidget {
  final String message;

  const _LoadingContent({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: Material(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 60.h,
                  width: 60.h,
                  child: const CircularProgressIndicator()),
              SizedBox(height: 16.h),
              Text(message, style: AppFontStyles.whiteMedium16)
            ],
          ),
        ));
  }
}
