import 'package:flutter/cupertino.dart';
import 'package:sprintf/sprintf.dart';

class Condition {
  final double id;
  final String? content;
  final String? prefixContent;
  final String? suffixContent;
  final int? formatValue;
  final String type;

  Condition({
    required this.id,
    this.content,
    this.prefixContent,
    this.suffixContent,
    this.formatValue,
    required this.type,
  });

  Condition.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        content = json['content'],
        prefixContent = json['prefixContent'],
        suffixContent = json['suffixContent'],
        formatValue = json['value'],
        type = json['type'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'content': content,
    'prefixContent': prefixContent,
    'suffixContent': suffixContent,
    'value': formatValue,
    'type': type
  };
}
