import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  StyledText(this.text, this.c, {super.key});
  StyledText.dflt(this.text, {super.key}) : c = Colors.white;
  String text;
  final Color c;
  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        color: c,
        fontSize: 30,
      ),
      textAlign: TextAlign.center,
    );
  }
}
