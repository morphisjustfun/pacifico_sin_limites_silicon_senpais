import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pacifico_sin_limites_silicon_senpais/core/navigation/route.dart';
import 'package:pacifico_sin_limites_silicon_senpais/injectable.dart';

class App extends StatelessWidget {
  App({super.key}) {
    getIt<Routes>().configureRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 720),
        splitScreenMode: false,
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              locale: const Locale('es', 'PE'),
              supportedLocales: const [
                Locale('es', 'PE'),
              ],
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              onGenerateRoute: getIt<Routes>().router.generator,
              navigatorKey: Routes.navigatorKey,
            ));
  }
}
