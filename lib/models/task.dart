import 'dart:convert';

import 'package:kiemtien/models/condition.dart';

class Task {
  final double id;
  final String? imageUrl;
  final String name;
  final String? code;
  final double prize;
  final int? limitPerDay;
  final Condition? condition;

  Task({
    required this.id,
    this.imageUrl,
    required this.name,
    this.code,
    required this.prize,
    this.limitPerDay,
    this.condition,
  });

  Task.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        imageUrl = json['image_url'],
        name = json['name'],
        code = json['code'],
        prize = json['prize'],
        limitPerDay = json['limit'],
        condition = json['condition'] == null ? null : Condition.fromJson(json['condition']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'image_url': imageUrl,
        'name': name,
        'code': code,
        'prize': prize,
        'limit': limitPerDay,
        'condition': condition == null ? null : jsonEncode(condition),
      };
}
