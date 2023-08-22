import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kiemtien/common/app_colors.dart';
import 'package:kiemtien/common/app_route.dart';

void main() {
  runApp(const KiemtienApp());
}

class KiemtienApp extends StatelessWidget {
  const KiemtienApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: 'Kiemtien',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      initialRoute: RouteName.splash,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
