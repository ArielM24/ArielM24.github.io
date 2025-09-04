import 'package:extremebreaker1/constants/theme_constants.dart';
import 'package:flutter/material.dart';

class AudienceCard extends StatelessWidget {
  final IconData iconData;
  final String iconText;
  final String stat1;
  final String stat1Number;
  final String stat2;
  final String stat2Number;
  final Color iconColor;
  const AudienceCard({
    super.key,
    required this.iconData,
    required this.iconText,
    required this.stat1,
    required this.stat1Number,
    required this.stat2,
    required this.stat2Number,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border(top: BorderSide(color: Colors.purpleAccent, width: 5)),
          color: const Color.fromARGB(255, 232, 236, 255),
        ),
        height: 150,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32, top: 32),
              child: Row(
                children: [
                  Icon(iconData, color: iconColor),
                  SizedBox(width: 10),
                  Text(
                    iconText,
                    style: TextStyle(color: ThemeConstants.primaryTextColor, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 66, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(
                        stat1,
                        style: TextStyle(color: ThemeConstants.secondaryTextColor, fontSize: 16),
                      ),
                      Text(
                        stat1Number,
                        style: TextStyle(color: ThemeConstants.primaryTextColor, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 66),
                    child: Wrap(
                      direction: Axis.vertical,
                      children: [
                        Text(
                          stat2,
                          style: TextStyle(color: ThemeConstants.secondaryTextColor, fontSize: 16),
                        ),
                        Text(
                          stat2Number,
                          style: TextStyle(color: ThemeConstants.primaryTextColor, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
