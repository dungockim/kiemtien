import 'package:flutter/material.dart';
import 'package:kiemtien/common/app_route.dart';
import 'package:kiemtien/common/dimens.dart';
import 'package:kiemtien/common/image_name.dart';

class AppHeader extends StatefulWidget {
  const AppHeader({super.key});

  @override
  State<AppHeader> createState() => _AppHeaderState();
}

class _AppHeaderState extends State<AppHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    right: Dimens.spacing12,
                    left: Dimens.spacing8,
                    bottom: Dimens.spacing2,
                    top: Dimens.spacing2,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFf7d3ff),
                    borderRadius: BorderRadius.circular(Dimens.radius100),
                  ),
                  child: Row(
                    children: [
                      const Text('0', style: TextStyle(
                        color: Color(0xFF81039e),
                        fontWeight: FontWeight.bold,
                        fontSize: Dimens.font16,
                      ),),
                      const SizedBox(width: Dimens.spacing4,),
                      Image.asset(ImageName.diamond, width: Dimens.size16, height: Dimens.size16,),
                    ],
                  ),
                ),
                const SizedBox(width: Dimens.spacing8),
              ],
            ),
            Positioned(
              right: 0,
              child: Container(
                width: Dimens.size16,
                height: Dimens.size16,
                padding: const EdgeInsets.all(Dimens.spacing2),
                decoration: BoxDecoration(
                  color: const Color(0xFFe680ff),
                  borderRadius: BorderRadius.circular(Dimens.radius8),
                ),
                child: const Icon(
                  Icons.add,
                  size: Dimens.size12,
                  color: Color(0xFF81039e),
                ),
              ),
            )
          ],
        ),
        const SizedBox(width: Dimens.spacing8),
        Stack(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    right: Dimens.spacing12,
                    left: Dimens.spacing8,
                    bottom: Dimens.spacing2,
                    top: Dimens.spacing2,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF93f7dd),
                    borderRadius: BorderRadius.circular(Dimens.radius100),
                  ),
                  child: Row(
                    children: [
                      const Text('0', style: TextStyle(
                        color: Color(0xFF004f38),
                        fontWeight: FontWeight.bold,
                        fontSize: Dimens.font16,
                      ),),
                      const SizedBox(width: Dimens.spacing4,),
                      Image.asset(ImageName.money, width: Dimens.size16, height: Dimens.size16,),
                    ],
                  ),
                ),
                const SizedBox(width: Dimens.spacing8),
              ],
            ),
            Positioned(
              right: 0,
              child: Container(
                width: Dimens.size16,
                height: Dimens.size16,
                padding: const EdgeInsets.all(Dimens.spacing2),
                decoration: BoxDecoration(
                  color: const Color(0xFF07dea3),
                  borderRadius: BorderRadius.circular(Dimens.radius8),
                ),
                child: const Icon(
                  Icons.add,
                  size: Dimens.size12,
                  color: Color(0xFF004f38),
                ),
              ),
            )
          ],
        ),
        const SizedBox(width: Dimens.spacing8),
        SizedBox(
          height: kToolbarHeight,
          child: Padding(
            padding: const EdgeInsets.all(Dimens.spacing8),
            child: InkWell(
              borderRadius: BorderRadius.circular(Dimens.radius100),
              onTap: _loginTapped,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFffeb82),
                  borderRadius: BorderRadius.circular(Dimens.radius100),
                ),
                padding: const EdgeInsets.symmetric(horizontal: Dimens.spacing8),
                child: Row(
                  children: [
                    const Icon(Icons.account_circle_outlined),
                    const SizedBox(width: Dimens.spacing4,),
                    Text('Đăng nhập', style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: Dimens.spacing16),
      ],
    );
  }

  void _loginTapped() {
    Navigator.pushNamed(context, RouteName.login);
  }
}
