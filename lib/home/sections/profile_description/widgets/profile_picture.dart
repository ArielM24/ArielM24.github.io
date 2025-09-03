import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(320),
        border: Border.all(color: const Color.fromARGB(255, 254, 234, 233), width: 4),
        boxShadow: [BoxShadow(color: const Color.fromARGB(255, 230, 183, 180), spreadRadius: 5, blurStyle: BlurStyle.normal, blurRadius: 5)]
      ),
      child: ClipOval(
        clipBehavior: Clip.antiAlias,
        child: Image.network(
          "https://static-cdn.jtvnw.net/jtv_user_pictures/c1ab3a94-1208-4690-95b9-beb3da056ad1-profile_image-70x70.png",
          fit: BoxFit.cover,
          height: 320,
          width: 320,
        ),
      ),
    );
  }
}
