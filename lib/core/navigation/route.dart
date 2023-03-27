import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:pacifico_sin_limites_silicon_senpais/presentation/screen/auth/auth_screen.dart';
import 'package:pacifico_sin_limites_silicon_senpais/presentation/screen/splash/splash_screen.dart';

@injectable
class Routes {
  final FluroRouter router;
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  Routes(this.router);

  String get root => '/';

  String get auth => '/auth';

  static final Handler _splashHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const SplashScreen());

  static final Handler _authHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const AuthScreen());

  void configureRoutes() {
    router.define(root, handler: _splashHandler);
    router.define(auth, handler: _authHandler, transitionType: TransitionType.native);
  }
}
