import 'package:flutter/material.dart';
import 'package:travelapp/OnboardingPage.dart';
import 'PlaceWidget.dart';
import 'RouteWidget.dart';
import 'CommentWidget.dart';
import 'ScrollablePlacePage.dart';
import 'DescriptionWidget.dart';
import 'FeedPageBase.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const OnboardingPage1(),
      home: const GoogleBottomBar(),
    );
  }
}
