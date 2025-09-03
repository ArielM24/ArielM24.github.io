import 'package:extremebreaker1/home/widgets/gradient_button.dart';
import 'package:flutter/material.dart';

class DescriptionButtons extends StatelessWidget {
  const DescriptionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GradientButton(
          onPressed: () {},
          iconData: Icons.play_circle_outline_rounded,
          iconColor: Colors.white,
          text: "Watch Live",
          gradientColors: [Colors.purpleAccent, Colors.deepPurple],
          textColor: Colors.white,
        ),
        SizedBox(width: 20),
        GradientButton(
          onPressed: () {},
          iconData: Icons.wallet_giftcard_outlined,
          text: "Support Me",
        ),
        SizedBox(width: 20),
        GradientButton(
          onPressed: () {},
          iconData: Icons.mail_outline,
          text: "Collaborate",
        ),
      ],
    );
  }
}
