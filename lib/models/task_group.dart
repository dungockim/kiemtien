import 'dart:convert';

import 'package:kiemtien/models/condition.dart';
import 'package:kiemtien/models/task.dart';

class TaskGroup {
  final double id;
  final String code;
  final String title;
  final List<Task> tasks;

  TaskGroup({
    required this.id,
    required this.code,
    required this.title,
    required this.tasks,
  });

  TaskGroup.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        code = json['code'],
        tasks = List.from(json['tasks']).map((e) => Task.fromJson(e)).toList();

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'tasks': jsonEncode(tasks),
      };

  static List<TaskGroup> mock() => [
        TaskGroup(
          id: 1,
          code: 'daily',
          title: 'Nhiệm vụ hằng ngày',
          tasks: [
            Task(
              id: 1,
              name: 'Mời bạn bè',
              code: 'share',
              prize: 50000,
              limitPerDay: 3,
            ),
            Task(
              id: 2,
              name: 'Điểm danh mỗi ngày',
              code: 'daily_check_in',
              prize: 50000,
            ),
            Task(
              id: 3,
              name: 'Xem quảng cáo',
              code: 'watch_ads',
              prize: 5000,
              limitPerDay: 5,
            ),
          ],
        ),
        TaskGroup(
          id: 1,
          code: 'play_game',
          title: 'Nhiệm vụ chơi game',
          tasks: [
            Task(
              id: 4,
              name: 'KARATE KIDO 2',
              prize: 10000,
              condition: Condition(
                id: 1,
                type: 'time',
                prefixContent: 'Vượt',
                suffixContent: 'giây!',
                formatValue: 10,
              ),
            ),
            Task(
              id: 4,
              name: 'MAN CITY STRIKER 3D',
              prize: 10000,
              condition: Condition(
                id: 1,
                type: 'point',
                prefixContent: 'Ghi',
                suffixContent: 'điểm!',
                formatValue: 552,
              ),
            ),
          ],
        ),
      ];
}
