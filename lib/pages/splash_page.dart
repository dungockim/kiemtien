// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:kiemtien/common/app_colors.dart';
import 'package:kiemtien/common/app_route.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _check();
  }

  Future<void> _check() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, RouteName.home);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: SizedBox(),
    );
  }
}
