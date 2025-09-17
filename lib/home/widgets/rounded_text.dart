import 'package:flutter/material.dart';

class RoundedText extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final EdgeInsets padding;
  final double borderRadius;
  const RoundedText({super.key, required this.text, required this.color, required this.textColor, this.padding = const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15), this.borderRadius = 20});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
      color: color,
    ),
    child: Padding(
      padding: padding,
      child: Text(text, maxLines: 1,overflow:  TextOverflow.ellipsis,style: TextStyle(color: textColor, fontWeight: FontWeight.bold),),
    ),);
  }
}