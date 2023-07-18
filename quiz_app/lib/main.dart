import 'package:flutter/material.dart';
import 'package:quiz_app/start.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: StartScreen(),
        ),
      ),
    ),
  );
}
