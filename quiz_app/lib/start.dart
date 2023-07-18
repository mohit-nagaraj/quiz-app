import 'package:flutter/material.dart';
import 'styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.changeState, {super.key});
  final void Function() changeState;
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 250,
        ),
        const SizedBox(
          height: 35,
        ),
        const Text(
          'Learn flutter the easy way',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        ElevatedButton.icon(
          onPressed: changeState,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.all(12),
          ),
          label: StyledText('Start Quiz', Colors.black),
          icon: const Icon(
            Icons.arrow_right_rounded,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
