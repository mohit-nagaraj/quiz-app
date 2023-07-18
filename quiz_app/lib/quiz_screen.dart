import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});
  @override
  State<QuizScreen> createState() {
    return _QuizScreen();
  }
}

class _QuizScreen extends State<QuizScreen> {
  @override
  Widget build(context) {
    return StyledText.dflt('Quizes');
  }
}
