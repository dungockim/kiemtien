import 'package:flutter/material.dart';
import 'package:kiemtien/bases/base_state.dart';
import 'package:kiemtien/common/dimens.dart';
import 'package:kiemtien/widgets/form_header_widget.dart';

import '../../common/image_name.dart';
import '../../widgets/sign_up_form_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends BaseState<RegisterPage> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEE10),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(Dimens.spacing16),
          child: Column(
            children: [
              const FormHeaderWidget(
                  image: ImageName.register,
                  title: "",
                  subtitle: ""),
              const FormSignUp(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 8,),
                  const Text("OR", style: TextStyle(
                      fontSize: 12
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Image(
                            image: AssetImage(ImageName.google),
                            width: 20,
                          ),
                          label: const Text("Google"),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      SizedBox(
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Image(
                            image: AssetImage(ImageName.facebook),
                            width: 20,
                          ),
                          label: const Text("Facebook"),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text.rich(
                          TextSpan(
                              children: [
                                TextSpan(text: "Bạn đã có tài khoản?", style: textTheme.bodyMedium),
                                const TextSpan(text: " Đăng Nhập Ngay!")
                              ]
                          )
                      )
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

