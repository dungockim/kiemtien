import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kiemtien/bases/base_state.dart';
import 'package:kiemtien/common/dimens.dart';
import 'package:kiemtien/main.dart';
import 'package:kiemtien/models/item_bar.dart';
import 'package:kiemtien/pages/rank/rank_page.dart';
import 'package:kiemtien/pages/task/task_page.dart';
import 'package:kiemtien/pages/withdraw/withdraw_page.dart';

import '../common/image_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage> {
  static const TASK_TAB_INDEX = 0;
  static const RANK_TAB_INDEX = 1;
  static const WITHDRAW_TAB_INDEX = 2;

  final _barItems = [
    ItemBar(
      index: TASK_TAB_INDEX,
      title: 'Nhiệm vụ',
      icon: ImageName.target,
    ),
    ItemBar(
      index: RANK_TAB_INDEX,
      title: 'Xếp hạng',
      icon: ImageName.rank,
    ),
    ItemBar(
      index: WITHDRAW_TAB_INDEX,
      title: 'Rút tiền',
      icon: ImageName.wallet,
    ),
  ];

  final List<Widget> _pages = const [
    TaskPage(),
    RankPage(),
    WithdrawPage(),
  ];
  final _pageController = PageController();
  int _selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();
    KiemtienApp.changeDarkStatusBarTextColor();
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: _pages,
              ),
            ),
            _buildBottomNavigationBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return SizedBox(
      height: kBottomNavigationBarHeight,
      child: Row(
        children: _barItems.map((e) {
          return _buildBottomNavigationBarItem(item: e);
        }).toList(),
      ),
    );
  }

  Widget _buildBottomNavigationBarItem({required ItemBar item}) {
    final iconSize =
        _selectedTabIndex == item.index ? Dimens.size32 : Dimens.size24;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedTabIndex = item.index;
          });
          _pageController.jumpToPage(item.index);
          if (_selectedTabIndex == WITHDRAW_TAB_INDEX) {
            KiemtienApp.changeLightStatusBarTextColor();
          } else {
            KiemtienApp.changeDarkStatusBarTextColor();
          }
        },
        child: AbsorbPointer(
          child: Column(
            children: [
              SizedBox(
                  height: Dimens.size32,
                  width: Dimens.size32,
                  child: Center(
                      child: Image.asset(
                    item.icon,
                    width: iconSize,
                    height: iconSize,
                  ))),
              const SizedBox(
                height: Dimens.spacing4,
              ),
              Text(
                item.title,
                style: TextStyle(
                  fontSize: Dimens.font12,
                  color: _selectedTabIndex == item.index
                      ? Colors.black
                      : Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
