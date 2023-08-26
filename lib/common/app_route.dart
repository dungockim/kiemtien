import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiemtien/pages/account/login_page.dart';
import 'package:kiemtien/pages/account/register_page.dart';

import '../pages/home_page.dart';
import '../pages/splash_page.dart';

class RouteName {
  static const String splash = "splash";
  static const String home = "home";
  static const String register = "register";
  static const String login = "login";
}

class AppRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splash:
        return CupertinoPageRoute(builder: (_) => const SplashPage());
      case RouteName.home:
        return CupertinoPageRoute(builder: (_) => const HomePage());
      case RouteName.register:
        return CupertinoPageRoute(builder: (_) => const RegisterPage());
      case RouteName.login:
        return CupertinoPageRoute(builder: (_) => const LoginPage());
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
