import 'package:flutter/material.dart';

import '../../bases/base_state.dart';

class RankPage extends StatefulWidget {
  const RankPage({super.key});

  @override
  State<RankPage> createState() => _RankPageState();
}

class _RankPageState extends BaseState<RankPage> {
  @override
  Widget buildPage(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Rank Page'),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
