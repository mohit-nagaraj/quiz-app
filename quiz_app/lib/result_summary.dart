import 'package:flutter/material.dart';

class ResultSummary extends StatelessWidget {
  const ResultSummary(this.summary, {super.key});
  final List<Map<String, Object>> summary;
  @override
  Widget build(context) {
    return Column(
      children: summary.map((data) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: (data['user_answer'] != data['correct_answer'])
                    ? const Color.fromARGB(255, 163, 57, 57)
                    : const Color.fromARGB(255, 78, 164, 81),
                borderRadius: BorderRadius.circular(100),
              ),
              alignment: Alignment.center,
              child: Text(
                ((data['question_index'] as int) + 1).toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(3),
                      child: Text(
                        data['question'] as String,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    if (data['user_answer'] != data['correct_answer'])
                      Container(
                        margin: const EdgeInsets.all(3),
                        child: Text(
                          data['user_answer'] as String,
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    Container(
                      margin: const EdgeInsets.all(3),
                      child: Text(
                        data['correct_answer'] as String,
                        style: const TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      }).toList(),
    );
  }
}
