import 'package:flutter/material.dart';

class ScrollableWidgetPage extends StatelessWidget {
  final List<Widget> widgets;

  ScrollableWidgetPage({required this.widgets});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: widgets,
      ),
    );
  }
}
