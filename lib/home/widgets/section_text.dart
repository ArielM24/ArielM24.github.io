import 'package:extremebreaker1/constants/theme_constants.dart';
import 'package:flutter/material.dart';

class SectionText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  const SectionText({super.key, required this.text, this.size = 32, this.fontWeight = FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: ThemeConstants.primaryTextColor, fontSize: size, fontWeight: fontWeight),);
  }
}