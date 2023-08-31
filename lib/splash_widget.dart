import 'package:flutter/material.dart';
import 'package:quiz_app/button.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget(this.startQuiz, {super.key});

  static const margin = 30.0;
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz_logo.png',
          width: 250,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(height: margin),
        Text('Learn Flutter the fun way!',
            style: GoogleFonts.ubuntu(
                fontSize: 24, color: const Color.fromARGB(255, 200, 176, 241))),
        const SizedBox(height: margin),
        Button(
          'Start Quiz',
          startQuiz,
          icon: const Icon(Icons.arrow_forward),
        )
      ],
    );
  }
}
