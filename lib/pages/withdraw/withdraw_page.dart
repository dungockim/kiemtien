import 'package:flutter/material.dart';
import 'package:kiemtien/bases/base_state.dart';
import 'package:kiemtien/common/app_colors.dart';
import 'package:kiemtien/common/dimens.dart';
import 'package:kiemtien/common/image_name.dart';

class WithdrawPage extends StatefulWidget {
  const WithdrawPage({super.key});

  @override
  State<WithdrawPage> createState() => _WithdrawPageState();
}

class _WithdrawPageState extends BaseState<WithdrawPage> {
  final _100kKey = GlobalKey();
  final _500kKey = GlobalKey();
  final _moc1Key = GlobalKey();
  final _moc2Key = GlobalKey();
  double _100kPLeft = 0;
  double _500kPLeft = 0;
  double _moc1PLeft = 0;
  double _moc2PLeft = 0;

  // This function is triggered when the floating button is pressed
  // You can trigger it by using other events
  void _getSize() {
    setState(() {
      final part = (sWidth - (Dimens.spacing24 * 2)) / 3;
      final size100k = _100kKey.currentContext?.size;
      final size500k = _500kKey.currentContext?.size;
      final sizeMoc1 = _moc1Key.currentContext?.size;
      final sizeMoc2 = _moc2Key.currentContext?.size;
      _100kPLeft = part - ((size100k?.width ?? 0) / 2);
      _500kPLeft = (part * 2) - ((size500k?.width ?? 0) / 2);
      _moc1PLeft = part - ((sizeMoc1?.width ?? 0) / 2);
      _moc2PLeft = (part * 2) - ((sizeMoc2?.width ?? 0) / 2);
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _getSize();
    });
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(Dimens.spacing24),
            decoration: const BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(Dimens.radius32),
                bottomRight: Radius.circular(Dimens.radius32),
              ),
            ),
            child: Column(
              children: [
                /*SizedBox(
                  height: Dimens.size20,
                  child: Stack(
                    children: [
                      Positioned(left: _moc1PLeft, child: Text('Mốc 1', key: _moc1Key, style: textTheme.bodyMedium?.copyWith(
                        fontSize: Dimens.font14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.darkGrey,
                      ),),),
                      Positioned(left: _moc2PLeft, child: Text('Mốc 2', key: _moc2Key, style: textTheme.bodyMedium?.copyWith(
                        fontSize: Dimens.font14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.darkGrey,
                      ),),),
                      Positioned(right: 0, child: Text('Mốc 3', style: textTheme.bodyMedium?.copyWith(
                        fontSize: Dimens.font14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.darkGrey,
                      ),),),
                    ],
                  ),
                ),*/
                Stack(
                  children: [
                    const SizedBox(
                      height: Dimens.size16,
                      child: Center(
                        child: Row(
                          children: [
                            Expanded(child: LinearProgressIndicator(
                              value: 0.2,
                              color: Colors.limeAccent,
                              backgroundColor: AppColors.darkGrey,
                            )),
                            Expanded(child: LinearProgressIndicator(
                              color: Colors.limeAccent,
                              value: 0,
                              backgroundColor: AppColors.darkGrey,
                            )),
                            Expanded(child: LinearProgressIndicator(
                              color: Colors.limeAccent,
                              value: 0,
                              backgroundColor: AppColors.darkGrey,
                            )),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: ((sWidth - (Dimens.spacing24 * 2)) / 3) - (Dimens.size16 / 2),
                      child: Container(
                        height: Dimens.size16,
                        width: Dimens.size16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimens.radius8),
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ),
                    Positioned(
                      left: (((sWidth - (Dimens.spacing24 * 2)) / 3) * 2) - (Dimens.size16 / 2),
                      child: Container(
                        height: Dimens.size16,
                        width: Dimens.size16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimens.radius8),
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: Dimens.size16,
                        width: Dimens.size16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimens.radius8),
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimens.size24,
                  child: Stack(
                    children: [
                      Positioned(left: _100kPLeft, child: Text('100K', key: _100kKey, style: textTheme.bodyMedium?.copyWith(
                        fontSize: Dimens.font14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.darkGrey,
                      ),),),
                      Positioned(left: _500kPLeft, child: Text('500K', key: _500kKey, style: textTheme.bodyMedium?.copyWith(
                        fontSize: Dimens.font14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.darkGrey,
                      ),),),
                      Positioned(right: 0, child: Text('1M', style: textTheme.bodyMedium?.copyWith(
                        fontSize: Dimens.font14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.darkGrey,
                      ),),),
                    ],
                  ),
                ),
                const SizedBox(height: Dimens.spacing24,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimens.radius16),
                  ),
                  padding: const EdgeInsets.all(Dimens.spacing16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '20.000đ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: Dimens.font32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: Dimens.spacing8,
                      ),
                      Image.asset(
                        ImageName.money,
                        width: Dimens.size32,
                        height: Dimens.size32,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(Dimens.spacing24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Đạt đến số tiền ', style: TextStyle(
                        fontSize: Dimens.font16,
                        color: Colors.black54,
                      ),),
                      const Text('100.000đ ', style: TextStyle(
                        fontSize: Dimens.font18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),),
                      Image.asset(ImageName.money, width: Dimens.size20, height: Dimens.size20,),
                      const Text(' để rút', style: TextStyle(
                        fontSize: Dimens.font16,
                        color: Colors.black54,
                      ),),
                    ],
                  ),
                  const SizedBox(height: Dimens.spacing32),
                  Text('Lịch sử rút tiền', style: textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),),
                  const Expanded(child: SizedBox()),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimens.radius16),
                      ),
                      padding: const EdgeInsets.all(Dimens.spacing16),
                    ),
                    onPressed: null,
                    child: const Text('RÚT TIỀN', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.font16,
                    ),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
