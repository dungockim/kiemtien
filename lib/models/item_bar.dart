import 'package:flutter/material.dart';

class ItemBar {
  final String title;
  final IconData icon;
  final IconData selectedIcon;
  bool selected;

  ItemBar({required this.title, required this.icon, required this.selectedIcon, this.selected = false});
}