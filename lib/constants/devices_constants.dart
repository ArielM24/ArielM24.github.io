import 'package:flutter/widgets.dart';

class DevicesConstants {
  static const double desktopMinWidth = 1280;
  static const double phoneMaxWidth = 412;

  static bool isDesktop(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= desktopMinWidth;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.sizeOf(context).width < desktopMinWidth &&
        MediaQuery.sizeOf(context).width > phoneMaxWidth;
  }

  static bool isPhone(BuildContext context) {
    return MediaQuery.sizeOf(context).width <= phoneMaxWidth;
  }

  static const int desktopTitleFontSize = 48;
  static const int desktopIconSize = 28;
  static const double desktopMainVerticalSeparation = 100;
  static const double tabletMainVerticalSeparation = 100;
  static const double phoneMainVerticalSeparation = 100;

  static double mainVerticalSeparation(BuildContext context) {
    if (isDesktop(context)) {
      return desktopMainVerticalSeparation;
    } else if (isTablet(context)) {
      return tabletMainVerticalSeparation;
    } else {
      return phoneMainVerticalSeparation;
    }
  }

  static const double desktopMainTopPadding = 100;
  static const double tabletMainTopPadding = 30;
  static const double phoneMainTopPadding = 10;
  static double mainTopPadding(BuildContext context){
    if(isDesktop(context)){
      return desktopMainTopPadding;
    }else if(isTablet(context)){
      return tabletMainTopPadding;
    }else {
      return phoneMainTopPadding;
    }
  }
  static const double desktopMainSidePadding = 50;
  static const double tabletMainSidePadding = 30;
  static const double phoneMainSidePadding = 10;
  static double mainSidePadding(BuildContext context){
    if(isDesktop(context)){
      return desktopMainSidePadding;
    }else if(isTablet(context)){
      return tabletMainSidePadding;
    }else {
      return phoneMainSidePadding;
    }
  }

  static const double desktopDescriptionSectionHeight = 450;
  static const double tabletDescriptionSectionHeight = 700;
  static const double phoneDescriptionSectionHeight = 700;
  static double descriptionSectionHeight(BuildContext context){
    if(isDesktop(context)){
      return desktopDescriptionSectionHeight;
    }else if(isTablet(context)){
      return tabletDescriptionSectionHeight;
    }else {
      return phoneDescriptionSectionHeight;
    }
  }

  static const double desktopProfilePictureSize = 320;
  static const double tabletProfilePictureSize = 320;
  static const double phoneProfilePictureSize = 320;
  static double profilePictureSize(BuildContext context){
    if(isDesktop(context)){
      return desktopProfilePictureSize;
    }else if(isTablet(context)){
      return tabletProfilePictureSize;
    }else {
      return phoneProfilePictureSize;
    }
  }
}
