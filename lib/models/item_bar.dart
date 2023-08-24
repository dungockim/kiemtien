import 'package:flutter/material.dart';

class ItemBar {
  final int index;
  final String title;
  final IconData icon;
  final IconData selectedIcon;
  bool selected;

  ItemBar({required this.index, required this.title, required this.icon, required this.selectedIcon, this.selected = false});
}