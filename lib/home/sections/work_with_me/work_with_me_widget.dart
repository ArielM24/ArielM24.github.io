import 'package:extremebreaker1/constants/theme_constants.dart';
import 'package:extremebreaker1/home/sections/work_with_me/widgets/card_content.dart';
import 'package:extremebreaker1/home/widgets/section_text.dart';
import 'package:flutter/material.dart';

class WorkWithMeWidget extends StatelessWidget {
  const WorkWithMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 870,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SectionText(text: "Work With Me"),
          SizedBox(height: 20),
          Container(
            height: 800,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromARGB(255, 232, 236, 255),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32.0, left: 32),
                  child: Text(
                    "Why Collaborate With Me?",
                    style: TextStyle(
                      color: ThemeConstants.primaryTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                CardContent(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
