import 'package:flutter/material.dart';
import 'package:kiemtien/bases/base_state.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends BaseState<TaskPage> {
  @override
  Widget buildPage(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Task Page'),
      ),
    );
  }
  @override
  bool get wantKeepAlive => true;
}
