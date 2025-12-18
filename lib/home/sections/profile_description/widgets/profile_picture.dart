import 'package:extremebreaker1/constants/devices_constants.dart';
import 'package:extremebreaker1/constants/theme_constants.dart';
import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DevicesConstants.profilePictureSize(context),
      width: DevicesConstants.profilePictureSize(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DevicesConstants.desktopProfilePictureSize),
        border: Border.all(color: ThemeConstants.pictureBorderColor, width: 4),
        boxShadow: [BoxShadow(color: ThemeConstants.pictureShadowColor, spreadRadius: 5, blurStyle: BlurStyle.normal, blurRadius: 5)]
      ),
      child: ClipOval(
        clipBehavior: Clip.antiAlias,
        child: Image.network(
          "https://static-cdn.jtvnw.net/jtv_user_pictures/c1ab3a94-1208-4690-95b9-beb3da056ad1-profile_image-70x70.png",
          fit: BoxFit.contain,
          height:DevicesConstants.profilePictureSize(context),
          width: DevicesConstants.profilePictureSize(context),
        ),
      ),
    );
  }
}
