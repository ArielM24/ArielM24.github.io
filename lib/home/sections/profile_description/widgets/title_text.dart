import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
      text: "Hello, I'm ",
      style: TextStyle(color: Colors.deepPurple, fontSize: 48, fontWeight: FontWeight.bold),
      children: [
        TextSpan(
          text: "Extremebreaker1 ",
      style: TextStyle(color: Colors.red, fontSize: 48, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: "(he/him)",
      style: TextStyle(color: Colors.deepPurple, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ]
    ));
  }
}