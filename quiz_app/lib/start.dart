import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
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
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.all(12),
          ),
          label: const Text(
            'Start quiz',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          icon: const Icon(
            Icons.arrow_right_rounded,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
