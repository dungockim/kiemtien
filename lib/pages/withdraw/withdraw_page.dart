import 'package:flutter/material.dart';
import 'package:kiemtien/bases/base_state.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends BaseState<AccountPage> {
  @override
  Widget buildPage(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Account Page'),
      ),
    );
  }
  @override
  bool get wantKeepAlive => true;
}
