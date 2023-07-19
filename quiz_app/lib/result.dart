import 'package:flutter/material.dart';
import 'package:quiz_app/models/styled_button.dart';
import 'package:quiz_app/styled_text.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.chosenAns, this.changeState, {super.key});
  final void Function() changeState;

  final List<String> chosenAns;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAns.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions,
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StyledText.dflt('You have X of Y questions correct'),
          const SizedBox(height: 20),
          StyledText.dflt('Questions'),
          const SizedBox(height: 20),
          StyledButton('Restart', changeState)
        ],
      ),
    );
  }
}
