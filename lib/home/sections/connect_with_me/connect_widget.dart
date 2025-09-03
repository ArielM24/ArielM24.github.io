import 'package:extremebreaker1/home/widgets/rounded_button.dart';
import 'package:extremebreaker1/home/widgets/section_text.dart';
import 'package:extremebreaker1/home/widgets/social_media_button.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConnectWidget extends StatelessWidget {
  const ConnectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SectionText(text: "Connect with Me"),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            SocialMediaButton(text: "Twitch", iconData: FontAwesomeIcons.twitch, iconBackgroundColor: const Color.fromARGB(255, 137, 97, 246), onPressed: (){},),
            SizedBox(width: 10,),
            SocialMediaButton(text: "Instagram", iconData: FontAwesomeIcons.instagram, iconBackgroundColor: Colors.pink,onPressed: (){},),
            SizedBox(width: 10,),

            SocialMediaButton(text: "X/Twitter", iconData: FontAwesomeIcons.twitter, iconBackgroundColor: Colors.black,onPressed: (){},),
            SizedBox(width: 10,),

            SocialMediaButton(text: "TikTok", iconData: FontAwesomeIcons.tiktok, iconBackgroundColor: Colors.black,onPressed: (){},),
            SizedBox(width: 10,),
            
            SocialMediaButton(text: "YouTube", iconData: FontAwesomeIcons.youtube, iconBackgroundColor: Colors.red,onPressed: (){},),
            SizedBox(width: 10,),
            
            SocialMediaButton(text: "Discord", iconData: FontAwesomeIcons.discord, iconBackgroundColor: const Color.fromARGB(255, 86, 106, 246),onPressed: (){},),
          ],),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedButton(text: "Amazon Whislist", iconData: FontAwesomeIcons.amazon, onPressed: (){}),
              SizedBox(width: 10,),
              RoundedButton(text: "Throne", iconData: Icons.star_border, onPressed: (){}),
              SizedBox(width: 10,),
              RoundedButton(text: "Donations", iconData: FontAwesomeIcons.paypal, onPressed: (){}),
            ],
          )
        ],
      ),
    );
  }
}