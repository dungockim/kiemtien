import 'package:flutter/material.dart';
import 'package:kiemtien/bases/base_state.dart';
import 'package:kiemtien/common/app_colors.dart';
import 'package:kiemtien/common/dimens.dart';
import 'package:kiemtien/common/image_name.dart';
import 'package:kiemtien/common/utilities.dart';
import 'package:kiemtien/models/task_group.dart';

import '../../models/task.dart';
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
          const SizedBox(height: Dimens.spacing8),
          const AppHeader(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(Dimens.spacing16),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final item = TaskGroup.mock()[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        item.title,
                        style: textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      if (item.code == 'play_game') _buildGameTasks(item.tasks),
                      if (item.code == 'daily') _buildDailyTasks(item.tasks),
                    ],
                  );
                },
                itemCount: TaskGroup.mock().length,
              ),
            ),
          )
        ],
      ),
    );
  }
`
  Widget _buildGameTasks(List<Task> tasks) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: tasks.asMap().entries.map((entry) {
        return Padding(
          padding: const EdgeInsets.all(Dimens.spacing16),
          child: Row(
            children: [
              Container(
                height: Dimens.size56,
                width: Dimens.size56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.spacing16),
                ),
                child: const SizedBox(),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      entry.value.name,
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    _buildConditionDisplayText(entry),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        Utilities.formatCurrency(entry.value.prize),
                        style: textTheme.titleLarge?.copyWith(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: Dimens.spacing8),
                      Image.asset(
                        ImageName.money,
                        width: Dimens.size24,
                        height: Dimens.size24,
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimens.radius16),
                      )
                    ),
                    child: Text('CHƠI', style: textTheme.bodyMedium?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                  ),),
                  ),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildDailyTasks(List<Task> tasks) {
    return SizedBox();
  }

  Widget _buildConditionDisplayText(MapEntry<int, Task> entry) {
    Widget textWidget;
    if (entry.value.condition!.content?.isNotEmpty == true) {
      textWidget = Text(
        entry.value.condition!.content!,
        style: textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w500,
        ),
      );
    } else {
      textWidget = RichText(
        text: TextSpan(
          text: "${entry.value.condition!.prefixContent!} ",
          style: textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(
              text: entry.value.condition!.formatValue!.toString(),
              style: const TextStyle(
                color: Color(0xFF06D19A),
              ),
            ),
            TextSpan(
              text: " ${entry.value.condition!.suffixContent!}",
            ),
          ],
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        textWidget,
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
