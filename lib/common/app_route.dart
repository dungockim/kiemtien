import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/splash_page.dart';

class RouteName {
  static const String splash = "splash";
  static const String home = "home";
}

class AppRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splash:
        return CupertinoPageRoute(builder: (_) => const SplashPage());
      case RouteName.home:
        return CupertinoPageRoute(builder: (_) => const HomePage());
      default:
        return CupertinoPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Route not found'),
            ),
          ),
        );
    }
  }
}
