import 'package:extremebreaker1/constants/theme_constants.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final List<Color> gradientColors;
  final Color textColor;
  final Color iconColor;
  final Color borderColor;
  final Function onPressed;
  final IconData iconData;
  final String text;
  final FontWeight fontWeight;
  const GradientButton({
    super.key,
   this.gradientColors = const [ThemeConstants.secondaryBackgroundColor, ThemeConstants.secondaryBackgroundColor],
    this.textColor = ThemeConstants.primaryTextColor,
    this.borderColor = ThemeConstants.buttonBorderColor,
    required this.onPressed,
    required this.iconData,
    this.iconColor = ThemeConstants.primaryTextColor,
    required this.text,
    this.fontWeight = FontWeight.normal,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        gradient: LinearGradient(colors: gradientColors),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
        borderRadius:  BorderRadius.circular(20),
          onTap: () async => await onPressed(),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 9,
              bottom: 9,
            ),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Icon(iconData, color: iconColor, size: 18),
                SizedBox(width: 10),
                Text(
                  text,
                  style: TextStyle(color: textColor, fontWeight: fontWeight),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
