import 'package:flutter/material.dart';
import 'package:kiemtien/common/dimens.dart';
import 'package:kiemtien/common/image_name.dart';
import 'package:kiemtien/widgets/app_header.dart';

import '../../bases/base_state.dart';

class RankPage extends StatefulWidget {
  const RankPage({super.key});

  @override
  State<RankPage> createState() => _RankPageState();
}

class _RankPageState extends BaseState<RankPage> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: Dimens.spacing8),
          const AppHeader(),
          const SizedBox(height: Dimens.spacing24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.only(bottom: Dimens.spacing9),
                          child: SizedBox(
                            width: sWidth * 0.25,
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      (sWidth * 0.3) / 2),
                                  border: Border.all(
                                    color: const Color(0xFF55E0EB),
                                    width: Dimens.size4,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              alignment: Alignment.center,
                              width: Dimens.size22,
                              height: Dimens.size22,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(Dimens.radius12),
                                color: const Color(0xFF55E0EB),
                              ),
                              child: Text(
                                '2',
                                style: textTheme.titleLarge?.copyWith(
                                  color: const Color(0xFF0C5276),
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimens.font16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: Dimens.spacing8,
                    ),
                    Text(
                      'Xiaosun',
                      style: textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      ImageName.crawl,
                      width: sWidth * 0.1,
                    ),
                    const SizedBox(height: Dimens.spacing4),
                    Stack(
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.only(bottom: Dimens.spacing10),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              width: sWidth * 0.5,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular((sWidth * 0.5) / 2),
                                border: Border.all(
                                  color: const Color(0xFFFEC129),
                                  width: Dimens.size4,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              alignment: Alignment.center,
                              width: Dimens.size24,
                              height: Dimens.size24,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(Dimens.radius12),
                                color: const Color(0xFFFEC129),
                              ),
                              child: Text(
                                '1',
                                style: textTheme.titleLarge?.copyWith(
                                  color: const Color(0xFF626000),
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimens.font16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: Dimens.spacing8,
                    ),
                    Text(
                      'Kido',
                      style: textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.only(bottom: Dimens.spacing8),
                          child: SizedBox(
                            width: sWidth * 0.23,
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      (sWidth * 0.3) / 2),
                                  border: Border.all(
                                    color: const Color(0xFFBA9ABD),
                                    width: Dimens.size4,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              alignment: Alignment.center,
                              width: Dimens.size20,
                              height: Dimens.size20,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(Dimens.radius12),
                                color: const Color(0xFFBA9ABD),
                              ),
                              child: Text(
                                '3',
                                style: textTheme.titleLarge?.copyWith(
                                  color: const Color(0xFF6F2071),
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimens.font16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: Dimens.spacing8,
                    ),
                    Text(
                      'Dev',
                      style: textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(Dimens.spacing16),
            padding: const EdgeInsets.all(Dimens.spacing16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimens.radius16),
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.indigo, Colors.indigoAccent, Colors.cyan],
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Hạng hiện tại của bạn',
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  '239',
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.separated(itemBuilder: (context, index) {
                return Padding(padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.spacing16, vertical: Dimens.spacing8),
                  child: Row(
                    children: [
                      Container(
                        width: Dimens.size56,
                        height: Dimens.size56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimens.radius28),
                        ),
                        child: const Icon(Icons.account_circle, size: Dimens.size56, color: Colors.black12,),
                      ),
                      const SizedBox(width: Dimens.spacing16),
                      Expanded(
                        child: Text('Darlene Robert', style: textTheme.bodyLarge?.copyWith(
                        ),),
                      ),
                      Text('1', style: textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                          fontSize: Dimens.font18
                      ),)
                    ],
                  ),);
              }, separatorBuilder: (context, index) {
                if (index == 0 || index == 6) {
                  return const SizedBox(height: Dimens.spacing8);
                }
                return const SizedBox();
              }, itemCount: 7)
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
