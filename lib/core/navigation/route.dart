import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:pacifico_sin_limites_silicon_senpais/presentation/screen/auth/auth_screen.dart';
import 'package:pacifico_sin_limites_silicon_senpais/presentation/screen/dashboard/dashboard_screen.dart';
import 'package:pacifico_sin_limites_silicon_senpais/presentation/screen/splash/splash_screen.dart';
import 'package:pacifico_sin_limites_silicon_senpais/presentation/screen/workshop/workshop_screen.dart';

@injectable
class Routes {
  final FluroRouter router;
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  Routes(this.router);

  String get root => '/';

  String get auth => '/auth';

  String get dashboard => '/dashboard';

  // with workshop name as argument
  String get workshop => '/workshop/:workshopName';

  static final Handler _splashHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const SplashScreen());

  static final Handler _authHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const AuthScreen());

  static final Handler _dashboardHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const DashboardScreen());

  static final Handler _workshopHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          WorkshopScreen(workshopName: params['workshopName']![0]));

  void configureRoutes() {
    router.define(root, handler: _splashHandler);
    router.define(auth,
        handler: _authHandler, transitionType: TransitionType.native);
    router.define(dashboard, handler: _dashboardHandler);
    router.define(workshop, handler: _workshopHandler);
  }
}
