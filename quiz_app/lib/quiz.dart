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
  void homeScreen() {
    setState(() {
      activeScreen = 'startscreen';
      chosenAnswer = [];
    });
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'quizscreen';
      chosenAnswer = [];
    });
  }

  void chooseAnswer(String ans) {
    chosenAnswer.add(ans);
    if (chosenAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'resultscreen';
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
      activeWidget = ResultScreen(chosenAnswer, switchScreen, homeScreen);
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 720),
            child: activeWidget,
          ),
        ),
      ),
    );
  }
}
