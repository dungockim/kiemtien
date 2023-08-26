import 'package:flutter/material.dart';
import 'package:kiemtien/common/app_route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteName.register);
            },
            child: const Text('Register'),
          ),
        ],
      ),
    );
  }
}
