import 'package:DevQuiz/challenge/challenge_page.dart';
import 'package:DevQuiz/home/home_page.dart';
import 'package:DevQuiz/splash/splash_page.dart';
import 'package:flutter/material.dart';

import '../splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: HomePage(),
    );
  }
}
