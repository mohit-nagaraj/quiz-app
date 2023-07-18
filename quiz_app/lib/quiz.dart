import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_screen.dart';
import 'package:quiz_app/start.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'startscreen';
  void switchScreen() {
    setState(() {
      activeScreen = 'quizscreen';
    });
  }

  @override
  Widget build(context) {
    Widget activeWidget = StartScreen(switchScreen);
    if (activeScreen == 'quizscreen') {
      activeWidget = const QuizScreen();
    } else {
      activeWidget = StartScreen(switchScreen);
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: activeWidget,
        ),
      ),
    );
  }
}
