import 'package:extremebreaker1/constants/devices_constants.dart';
import 'package:extremebreaker1/home/sections/profile_description/desktop/desktop_description_widget.dart';
import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: DevicesConstants.descriptionSectionHeight(context),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if(DevicesConstants.isDesktop(context)){
            return DesktopDescriptionWidget();
          }else if(DevicesConstants.isTablet(context)){
            return DesktopDescriptionWidget();
          }else {
            return DesktopDescriptionWidget();
          }
        }
      ),
    );
  }
}