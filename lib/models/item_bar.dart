import 'package:flutter/material.dart';

class ItemBar {
  final int index;
  final String title;
  final String icon;

  ItemBar({required this.index, required this.title, required this.icon});

  @override
  String toString() {
    return 'ItemBar{index: $index, title: $title, icon: $icon}';
  }
}