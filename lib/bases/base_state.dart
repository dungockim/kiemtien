import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> with AutomaticKeepAliveClientMixin {
  Widget buildPage(BuildContext context);

  late double sHeight;
  late double sWidth;
  late EdgeInsets sEdge;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    sHeight = mediaQuery.size.height;
    sWidth = mediaQuery.size.width;
    sEdge = mediaQuery.padding;
    return buildPage(context);
  }

  @override
  bool get wantKeepAlive => false;
}