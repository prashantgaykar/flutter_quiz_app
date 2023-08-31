import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.childWidget, {super.key});

  final Widget? childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.deepPurple, Color.fromARGB(255, 56, 31, 99)])),
        child: Center(
          child: childWidget,
        ));
  }
}
