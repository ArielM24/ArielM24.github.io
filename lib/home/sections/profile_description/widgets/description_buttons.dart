import 'package:extremebreaker1/constants/theme_constants.dart';
import 'package:extremebreaker1/home/widgets/gradient_button.dart';
import 'package:flutter/material.dart';

class DescriptionButtons extends StatelessWidget {
  static const double _buttonsWidthProportion = 0.08;
  static const double _buttonsHeightProportion = 0.04;
  static const double _iconProportion = 0.01;
  const DescriptionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * _buttonsWidthProportion,
                height: MediaQuery.sizeOf(context).height * _buttonsHeightProportion,
                child: GradientButton(
                  onPressed: () {},
                  //iconSize: MediaQuery.sizeOf(context).width * _iconProportion,
                  iconData: Icons.play_circle_outline_rounded,
                  iconColor: ThemeConstants.secondaryBackgroundColor,
                  text: "Watch Live",
                  gradientColors: ThemeConstants.mainGradientColors,
                  textColor: ThemeConstants.secondaryBackgroundColor,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * _buttonsWidthProportion,
                height: MediaQuery.sizeOf(context).height * _buttonsHeightProportion,
                child: GradientButton(
                  onPressed: () {},
                  iconData: Icons.wallet_giftcard_outlined,
                  text: "Support Me",
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * _buttonsWidthProportion,
                height: MediaQuery.sizeOf(context).height * _buttonsHeightProportion,
                child: GradientButton(
                  onPressed: () {},
                  iconData: Icons.mail_outline,
                  text: "Collaborate",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
