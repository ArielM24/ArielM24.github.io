import 'package:extremebreaker1/constants/theme_constants.dart';
import 'package:extremebreaker1/home/widgets/collaboration_card.dart';
import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, top: 16, right: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CollaborationCard(
            iconData: Icons.person_add_alt,
            iconColor: ThemeConstants.secondaryTextColor,
            title: "Engaged Community",
            description:
                "My audience is highly interactive and responsive to authentic content and recommendations.",
          ),
          SizedBox(width: 10),
          CollaborationCard(
            iconData: Icons.star_border_outlined,
            iconColor: Colors.yellow,
            title: "Quality Content",
            description:
                "I pride myself on creating high-quality, entertaining content that resonates with viewers.",
          ),
          SizedBox(width: 10),
          CollaborationCard(
            iconData: Icons.favorite_border,
            iconColor: Colors.pink,
            title: "Authentic Approach",
            description:
                "I only partner with brands I genuinely believe in, ensuring authentic promotion.",
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
