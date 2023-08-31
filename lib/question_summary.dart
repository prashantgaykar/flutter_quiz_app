import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_text.dart';
import 'package:quiz_app/circular_text.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summary, {super.key});

  final colorRight = const Color.fromARGB(255, 71, 159, 7);
  final colorWrong = const Color.fromARGB(255, 214, 79, 16);

  bool isCorrectAnswer(Map<String, Object> data) {
    return data['correct_answer'] == data['chosen_answer'];
  }

  Color getColor(Map<String, Object> data) {
    return isCorrectAnswer(data) ? colorRight : colorWrong;
  }

  final List<Map<String, Object>> summary;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
            children: summary.map((data) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircularText(((data['index'] as int) + 1).toString(),
                    backgroundColor: getColor(data)),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      QuizText(
                        data['question'] as String,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 5),
                      QuizText(
                        data['chosen_answer'] as String,
                        color: getColor(data),
                      ),
                      const SizedBox(height: 5),
                      QuizText(
                        data['correct_answer'] as String,
                        color: colorRight,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }).toList()),
      ),
    );
  }
}
