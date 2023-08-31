import 'package:flutter/material.dart';
import 'package:quiz_app/button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';
import 'package:quiz_app/quiz_text.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.chosenAnswers, this.restartQuiz, {super.key});

  static const margin = 30.0;
  final void Function() restartQuiz;

  final List<String> chosenAnswers;

  List<Map<String, Object>> get summary {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'chosen_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final totalQuestions = questions.length;
    final correctAnswers = summary
        .where((data) => data['correct_answer'] == data['chosen_answer'])
        .length;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          QuizText(
            'You answered $correctAnswers out of $totalQuestions questions correctly!',
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(height: 30),
          QuestionSummary(summary),
          const SizedBox(height: 30),
          Button(
            'Restart Quiz',
            restartQuiz,
            icon: const Icon(Icons.restart_alt),
          )
        ],
      ),
    );
  }
}
