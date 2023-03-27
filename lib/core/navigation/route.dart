import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class Routes {
  final FluroRouter router;
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  Routes(this.router);

  String get root => '/';

  String get auth => '/auth';

  // void configureRoutes() {
  //   router.define(root, handler: _splashHandler);
  //   router.define(auth, handler: _authHandler);
  // }
}
