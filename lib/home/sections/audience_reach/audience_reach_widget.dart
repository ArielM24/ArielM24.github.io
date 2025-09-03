import 'package:extremebreaker1/home/widgets/audience_card.dart';
import 'package:extremebreaker1/home/widgets/section_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AudienceReachWidget extends StatelessWidget {
  const AudienceReachWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SectionText(text: "Audience & Reach"),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AudienceCard(
                iconData: FontAwesomeIcons.twitch,
                iconText: "Twitch",
                stat1: "Followers",
                stat1Number: "12K+",
                stat2: "CCV*",
                stat2Number: "125+",
                iconColor: Colors.deepPurpleAccent,
              ),
              SizedBox(width: 10),
              AudienceCard(
                iconData: FontAwesomeIcons.tiktok,
                iconText: "TikTok",
                stat1: "Followers",
                stat1Number: "9K+",
                stat2: "Views*",
                stat2Number: "78K+",
                iconColor: Colors.black,
              ),
              SizedBox(width: 10),
              AudienceCard(
                iconData: FontAwesomeIcons.instagram,
                iconText: "Instagram",
                stat1: "Followers",
                stat1Number: "23K+",
                stat2: "Views*",
                stat2Number: "1.3M+",
                iconColor: Colors.pink,
              ),
              SizedBox(width: 10),
              AudienceCard(
                iconData: FontAwesomeIcons.xTwitter,
                iconText: "X/Twitter",
                stat1: "Followers",
                stat1Number: "11K+",
                stat2: "Impressions*",
                stat2Number: "100K+",
                iconColor: Colors.black,
              ),
              SizedBox(width: 10),
            ],
          ),
          SizedBox(height: 20),
          Text("* last 30 days", style: TextStyle(color: Colors.deepPurple)),
        ],
      ),
    );
  }
}
