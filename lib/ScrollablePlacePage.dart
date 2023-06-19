import 'package:flutter/material.dart';

class ScrollablePlacePage extends StatelessWidget {
  final String name;
  final List<Widget> widgets;

  ScrollablePlacePage({required this.widgets, required this.name});

  @override
  Widget build(BuildContext context) {
    List<Widget> titleandother = [
      Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )
    ];

    return Scaffold(
      body: ListView(
        children: titleandother + widgets,
      ),
    );
  }
}
