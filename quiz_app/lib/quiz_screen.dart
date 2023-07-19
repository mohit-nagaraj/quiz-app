import 'package:flutter/material.dart';
import 'package:quiz_app/models/styled_button.dart';
import 'package:quiz_app/styled_text.dart';
import 'data/questions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen(this.onSelectAnswer, {super.key});
  final void Function(String ans) onSelectAnswer;
  @override
  State<QuizScreen> createState() {
    return _QuizScreen();
  }
}

class _QuizScreen extends State<QuizScreen> {
  int currentQuestionIndex = 0;

  void answerQuestion(String ans) {
    widget.onSelectAnswer(ans);
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Container(
      //used a container to add a margin
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StyledText.dflt(currentQuestion.text),
          const SizedBox(height: 20),
          ...currentQuestion.shuffleAnswers().map((option) {
            return Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: StyledButton(option, () {
                answerQuestion(option);
              }),
            );
          })
        ],
      ),
    );
  }
}
