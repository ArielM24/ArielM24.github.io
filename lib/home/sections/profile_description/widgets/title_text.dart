import 'package:extremebreaker1/constants/theme_constants.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
      text: "Hello, I'm ",
      style: TextStyle(color: ThemeConstants.primaryTextColor, fontSize: 48, fontWeight: FontWeight.bold),
      children: [
        TextSpan(
          text: "Extremebreaker1 ",
      style: TextStyle(color: ThemeConstants.terciaryTextColor, fontSize: 48, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: "(he/him)",
      style: TextStyle(color: ThemeConstants.primaryTextColor, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ]
    ));
  }
}