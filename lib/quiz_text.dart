import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizText extends StatelessWidget {
  const QuizText(this.text,
      {this.size = 16,
      this.color = const Color.fromARGB(255, 200, 176, 241),
      super.key});

  final String text;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.ubuntu(fontSize: size, color: color),
    );
  }
}
