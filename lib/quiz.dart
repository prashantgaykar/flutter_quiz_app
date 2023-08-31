import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/screen.dart';
import 'package:quiz_app/splash_widget.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  int currScreen = Screen.splash;
  List<String> _selectedAnswers = [];

  @override
  void initState() {
    currScreen = Screen.splash;
    super.initState();
  }

  void switchScreen() {
    setState(() {
      _selectedAnswers = [];
      currScreen = Screen.questions;
    });
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);
    if (_selectedAnswers.length == questions.length) {
      setState(() {
        currScreen = Screen.result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(getScreen(currScreen)),
      ),
    );
  }

  Widget getScreen(currScreen) => switch (currScreen) {
        Screen.splash => SplashWidget(switchScreen),
        Screen.questions => QuestionScreen(chooseAnswer),
        Screen.result => ResultScreen(_selectedAnswers, switchScreen),
        _ => SplashWidget(switchScreen),
      };
}
