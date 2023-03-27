import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pacifico_sin_limites_silicon_senpais/app.dart';
import 'package:pacifico_sin_limites_silicon_senpais/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.black.withOpacity(0.2),
      statusBarIconBrightness: Brightness.light));
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const App());
}
