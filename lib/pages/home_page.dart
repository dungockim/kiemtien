import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kiemtien/bases/base_state.dart';
import 'package:kiemtien/models/item_bar.dart';
import 'package:kiemtien/pages/account/account_page.dart';
import 'package:kiemtien/pages/rank/rank_page.dart';
import 'package:kiemtien/pages/task/task_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage> {
  static const ACCOUNT_TAB_INDEX = 2;

  final items = [
    ItemBar(title: 'Nhiệm vụ',
      icon: CupertinoIcons.square_list,
      selectedIcon: CupertinoIcons.square_list_fill,),
    ItemBar(title: 'Xếp hạng',
      icon: CupertinoIcons.chart_bar_square,
      selectedIcon: CupertinoIcons.chart_bar_square_fill,),
    ItemBar(title: 'Tài khoản',
      icon: Icons.account_circle_outlined,
      selectedIcon: Icons.account_circle,),
  ];

  int _selectedTabIndex = 0;
  final List<Widget> _pages = const [
    TaskPage(),
    RankPage(),
    AccountPage(),
  ];
  final _pageController = PageController();

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: _pages,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items.map((e) {
          return BottomNavigationBarItem(icon: Icon(e.icon),
            label: e.title,
            activeIcon: Icon(e.selectedIcon,),);
        }).toList(),
        currentIndex: _selectedTabIndex,
        onTap: _onItemBarSelected,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  _onItemBarSelected(int index) {
    if (index == ACCOUNT_TAB_INDEX) {
      // show login page if user have not logged in
    }
    _pageController.jumpToPage(index);
    setState(() {
      _selectedTabIndex = index;
    });
  }
}
