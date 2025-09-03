import 'package:flutter/material.dart';

class SectionText extends StatelessWidget {
  final String text;
  const SectionText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.deepPurple, fontSize: 32, fontWeight: FontWeight.w900),);
  }
}