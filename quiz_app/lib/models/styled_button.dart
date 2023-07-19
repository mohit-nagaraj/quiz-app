import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton(this.option, this.onTap, {super.key});
  final String option;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 12,
          left: 15,
          right: 15,
        ),
        //also can use padding: EdgeInsets.symmetric(vertical: 10, horizontal:15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
      child: Text(
        option,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
