import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  const Button(this.text, this.onPressed, {this.icon, super.key});

  final String text;
  final Function()? onPressed;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    if (icon == null) {
      return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          textStyle: GoogleFonts.ubuntu(fontSize: 16),
        ),
        child: Text(text),
      );
    } else {
      return ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          textStyle: GoogleFonts.ubuntu(fontSize: 16),
        ),
        icon: icon!,
        label: Text(text),
      );
    }
  }
}
