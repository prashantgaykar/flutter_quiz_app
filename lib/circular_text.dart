import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_text.dart';

class CircularText extends StatelessWidget {
  const CircularText(this.text,
      {this.size = 16,
      this.textColor = const Color.fromARGB(255, 200, 176, 241),
      this.backgroundColor = const Color.fromARGB(255, 45, 11, 104),
      super.key});

  final String text;
  final double size;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(40))),
      padding: const EdgeInsets.all(10),
      alignment: Alignment.topCenter,
      child: QuizText(
        text,
        color: textColor,
        size: 16,
      ),
    );
  }
}
