import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonRounded extends StatelessWidget {
  const ButtonRounded(this.text, this.onPressed, {super.key});

  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 43, 21, 81),
          foregroundColor: Colors.white,
          textStyle: GoogleFonts.ubuntu(fontSize: 16),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
