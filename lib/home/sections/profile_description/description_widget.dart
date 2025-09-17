import 'package:extremebreaker1/constants/theme_constants.dart';
import 'package:extremebreaker1/home/sections/profile_description/widgets/description_buttons.dart';
import 'package:extremebreaker1/home/sections/profile_description/widgets/description_text.dart';
import 'package:extremebreaker1/home/sections/profile_description/widgets/profile_picture.dart';
import 'package:extremebreaker1/home/sections/profile_description/widgets/title_text.dart';
import 'package:extremebreaker1/home/widgets/rounded_text.dart';
import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  static const double _textProportion = 0.35;
  static const double _textHeightProportion = 0.45;

  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * _textHeightProportion,
                  width: MediaQuery.sizeOf(context).width * _textProportion,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RoundedText(text: "✨ Partnered Twitch Streamer", color: ThemeConstants.flatBackgroundColor, textColor: ThemeConstants.terciaryTextColor),
                      SizedBox(height: 20,),
                      TitleText(),
                      SizedBox(height: 20,),
                      DescriptionText(),
                      SizedBox(height: 20,),
                      DescriptionButtons()
                    ],
                  ),
                ),
                Expanded(child: Center(child: ProfilePicture()))
              ],
            );
  }
}