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
  static const TASK_TAB_INDEX = 0;
  static const RANK_TAB_INDEX = 1;
  static const WITHDRAW_TAB_INDEX = 2;

  final barItems = [
    ItemBar(index: TASK_TAB_INDEX, title: 'Nhiệm vụ',
      icon: CupertinoIcons.square_list,
      selectedIcon: CupertinoIcons.square_list_fill,),
    ItemBar(index: RANK_TAB_INDEX, title: 'Xếp hạng',
      icon: CupertinoIcons.chart_bar_square,
      selectedIcon: CupertinoIcons.chart_bar_square_fill,),
    ItemBar(index: WITHDRAW_TAB_INDEX, title: 'Rút tiền',
      icon: Icons.account_circle_outlined,
      selectedIcon: Icons.account_circle,),
  ];

  final List<Widget> _pages = const [
    TaskPage(),
    RankPage(),
    AccountPage(),
  ];
  final _pageController = PageController();
  int _selectedTabIndex = 0;

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
    return const SizedBox(
      height: kBottomNavigationBarHeight,
      child: Row(
        children: barItems.map((e) {
          return _buildBottomNavigationBarItem(index: e.index)
        }).toList(),
      ),
    )
  }
  
  Widget _buildBottomNavigationBarItem({required index}) {
    return Expanded(child: Stack(
      children: [
        
      ],
    ))
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
