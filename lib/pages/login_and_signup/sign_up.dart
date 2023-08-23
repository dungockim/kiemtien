import 'package:flutter/material.dart';
import 'package:kiemtien/common/app_colors.dart';
import 'package:kiemtien/common/form/form_header_widget.dart';
import 'package:kiemtien/constants/image_strings.dart';
import 'package:kiemtien/constants/size.dart';
import 'package:kiemtien/constants/text_strings.dart';

import '../../common/form/sign_up_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFFEDEE10),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              const FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tSignUpTitle,
                  subtitle: tSignUpSubtitle),
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
                            image: AssetImage(tGoogleLogo),
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
                            image: AssetImage(tFacebookLogo),
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
                                TextSpan(text: "Bạn đã có tài khoản?", style: Theme.of(context).textTheme.bodyText1),
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

