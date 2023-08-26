import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kiemtien/bases/base_state.dart';

import '../../widgets/app_header.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends BaseState<TaskPage> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppHeader(),
        ],
      ),
    );
  }
  @override
  bool get wantKeepAlive => true;
}
