import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kiemtien/bases/base_state.dart';
import 'package:kiemtien/common/app_colors.dart';
import 'package:kiemtien/common/app_route.dart';
import 'package:kiemtien/common/dimens.dart';
import 'package:kiemtien/common/image_name.dart';
import 'package:kiemtien/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BaseState<LoginPage> {
  @override
  void initState() {
    super.initState();
    KiemtienApp.changeLightStatusBarTextColor(
        statusBarColor: Colors.transparent);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Expanded(child: SizedBox()),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteName.register);
                    },
                    child: const Text(
                      'Đăng ký',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: Dimens.spacing16,
                    right: Dimens.spacing16,
                    top: Dimens.spacing32,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Đăng nhập',
                        style: textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: Dimens.spacing8),
                      Text(
                        'Truy cập nền tảng làm nhiệm vụ kiếm tiền online, rút tiền không giới hạn, thư giãn - giải trí - kiếm tiền.',
                        style: textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: Dimens.spacing32),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: Dimens.spacing32,
                            horizontal: Dimens.spacing24,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(Dimens.radius32),
                            ),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          Dimens.radius100),
                                      borderSide: BorderSide.none,
                                    ),
                                    fillColor: AppColors.whiteSmoke,
                                    filled: true,
                                    hintText: 'Email',
                                    hintStyle: const TextStyle(
                                      color: AppColors.lightGrey,
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.email,
                                      color: AppColors.lightGrey,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: Dimens.spacing16),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          Dimens.radius100),
                                      borderSide: BorderSide.none,
                                    ),
                                    fillColor: AppColors.whiteSmoke,
                                    filled: true,
                                    hintText: 'Mật khẩu',
                                    hintStyle: const TextStyle(
                                      color: AppColors.lightGrey,
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.lock,
                                      color: AppColors.lightGrey,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text('Quên mật khẩu?'),
                                  ),
                                ),
                                const SizedBox(height: Dimens.spacing16),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    padding:
                                        const EdgeInsets.all(Dimens.spacing16),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Đăng nhập',
                                    style: textTheme.bodyMedium?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: Dimens.spacing24,
                                ),
                                Row(
                                  children: [
                                    const Expanded(
                                      child: Divider(
                                        height: 1,
                                        color: Colors.black12,
                                      ),
                                    ),
                                    const SizedBox(width: Dimens.spacing16),
                                    Text(
                                      'hoặc',
                                      style: textTheme.bodySmall?.copyWith(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(width: Dimens.spacing16),
                                    const Expanded(
                                      child: Divider(
                                        height: 1,
                                        color: Colors.black12,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: Dimens.spacing24,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    padding:
                                        const EdgeInsets.all(Dimens.spacing16),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        ImageName.google,
                                        width: Dimens.size24,
                                        height: Dimens.size24,
                                      ),
                                      const SizedBox(
                                        width: Dimens.spacing16,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Đăng nhập với Google',
                                          style: textTheme.bodyMedium?.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      const Icon(
                                        FontAwesomeIcons.arrowRight,
                                        size: Dimens.size16,
                                        color: AppColors.lighterGrey,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: Dimens.spacing16,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    padding:
                                        const EdgeInsets.all(Dimens.spacing16),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        ImageName.facebook,
                                        width: Dimens.size24,
                                        height: Dimens.size24,
                                      ),
                                      const SizedBox(
                                        width: Dimens.spacing16,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Đăng nhập với Facebook',
                                          style: textTheme.bodyMedium?.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      const Icon(
                                        FontAwesomeIcons.arrowRight,
                                        size: Dimens.size16,
                                        color: AppColors.lighterGrey,
                                      ),
                                    ],
                                  ),
                                ),
                                if (Platform.isIOS)
                                  const SizedBox(
                                    height: Dimens.spacing16,
                                  ),
                                if (Platform.isIOS)
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      padding: const EdgeInsets.all(
                                        Dimens.spacing16,
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          ImageName.apple,
                                          width: Dimens.size24,
                                          height: Dimens.size24,
                                        ),
                                        const SizedBox(
                                          width: Dimens.spacing16,
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Đăng nhập với Apple',
                                            style:
                                                textTheme.bodyMedium?.copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        const Icon(
                                          FontAwesomeIcons.arrowRight,
                                          size: Dimens.size16,
                                          color: AppColors.lighterGrey,
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
