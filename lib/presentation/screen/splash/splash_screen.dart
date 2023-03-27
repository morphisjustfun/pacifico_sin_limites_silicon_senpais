import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacifico_sin_limites_silicon_senpais/core/navigation/route.dart';
import 'package:pacifico_sin_limites_silicon_senpais/gen/assets.gen.dart';
import 'package:pacifico_sin_limites_silicon_senpais/injectable.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/colors.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/font_styles.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1, milliseconds: 500), () {
      Navigator.pushReplacementNamed(context, getIt<Routes>().auth);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
          child: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.pacificoLogo.image(scale: 0.8),
            SizedBox(height: 28.h),
            Text(
              AppStrings.splash.splashTitle,
              style: AppFontStyles.primaryTextSemiBold15,
            )
          ],
        ),
      )),
    );
  }
}
