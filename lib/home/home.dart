import 'package:extremebreaker1/constants/devices_constants.dart';
import 'package:extremebreaker1/constants/theme_constants.dart';
import 'package:extremebreaker1/home/sections/audience_reach/audience_reach_widget.dart';
import 'package:extremebreaker1/home/sections/connect_with_me/connect_widget.dart';
import 'package:extremebreaker1/home/sections/profile_description/description_widget.dart';
import 'package:extremebreaker1/home/sections/work_with_me/work_with_me_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const _sidePaddingProportion = 0.1;
  static const _topPaddingProportion = 0.1;
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Extremebreaker1',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: ThemeConstants.backgroundGradientColors,
            ),
          ),
          padding: EdgeInsets.only(
                  top:
                      DevicesConstants.mainTopPadding(context),
                  left:
                       DevicesConstants.mainSidePadding(context),
                  right:
                       DevicesConstants.mainSidePadding(context),
                ),
          child: ListView(
            children: [
              Column(
                children: [
                  DescriptionWidget(),
                  SizedBox(
                    height: DevicesConstants.mainVerticalSeparation(context),
                  ),
                  // ConnectWidget(),
                  // SizedBox(
                  //   height: DevicesConstants.mainVerticalSeparation(context),
                  // ),
                  // AudienceReachWidget(),
                  // SizedBox(
                  //   height: DevicesConstants.mainVerticalSeparation(context),
                  // ),
                  // WorkWithMeWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
