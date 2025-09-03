import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 650,
      child: Text(
        "A partnered Twitch streamer and variety gaming content creator. I love creating high-energy, interactive content filled with funny moments and \"professional\" gameplay, making every stream and video an experience for my community. I'm always excited to collaborate with brands in creative ways that bring value to my audience while keeping things fun and authentic.",
        style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.w400, fontSize: 20),
        maxLines: 7,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
