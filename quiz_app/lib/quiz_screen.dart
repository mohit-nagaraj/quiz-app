import 'package:flutter/material.dart';
import 'package:quiz_app/models/styled_button.dart';
import 'package:quiz_app/styled_text.dart';
import 'data/questions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});
  @override
  State<QuizScreen> createState() {
    return _QuizScreen();
  }
}

class _QuizScreen extends State<QuizScreen> {
  final currentQuestion = questions[0];
  @override
  Widget build(context) {
    return Container(
      //used a container to add a margin
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StyledText.dflt(currentQuestion.text),
          const SizedBox(height: 20),
          ...currentQuestion.answers.map((option) {
            return Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: StyledButton(option, () {}),
            );
          })
        ],
      ),
    );
  }
}
