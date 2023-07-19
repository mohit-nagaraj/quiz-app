import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/quiz_screen.dart';
import 'package:quiz_app/result.dart';
import 'package:quiz_app/start.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> chosenAnswer = [];
  var activeScreen = 'startscreen';
  void switchScreen() {
    setState(() {
      activeScreen = 'quizscreen';
    });
  }

  void chooseAnswer(String ans) {
    chosenAnswer.add(ans);
    if (chosenAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'resultscreen';
        chosenAnswer = [];
      });
    }
  }

  @override
  Widget build(context) {
    Widget activeWidget = StartScreen(switchScreen);
    if (activeScreen == 'quizscreen') {
      activeWidget = QuizScreen(chooseAnswer);
    }
    if (activeScreen == 'resultscreen') {
      activeWidget = ResultScreen(chosenAnswer, switchScreen);
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
