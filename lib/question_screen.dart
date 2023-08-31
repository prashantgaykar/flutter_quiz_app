import 'package:flutter/material.dart';
import 'package:quiz_app/button_rounded.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.onSelectAnswer, {super.key});

  final Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.ubuntu(
                fontSize: 20, color: const Color.fromARGB(255, 212, 181, 241)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return ButtonRounded(answer, () => answerQuestion(answer));
          })
        ],
      ),
    );
  }
}
