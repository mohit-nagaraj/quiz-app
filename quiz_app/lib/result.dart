import 'package:flutter/material.dart';
import 'package:quiz_app/models/styled_button.dart';
import 'package:quiz_app/styled_text.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.chosenAns, this.changeState, {super.key});
  final void Function() changeState;

  final List<String> chosenAns;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAns.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAns[i]
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryDatas = getSummary();
    final numTotalQ = questions.length;
    final numCorrectQ = summaryDatas.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StyledText.dflt(
              'You have $numCorrectQ of $numTotalQ questions correct'),
          const SizedBox(height: 60),
          ResultSummary(summaryDatas),
          const SizedBox(height: 40),
          StyledButton('Restart', changeState)
        ],
      ),
    );
  }
}
