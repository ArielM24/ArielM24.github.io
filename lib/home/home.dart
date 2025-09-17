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
          decoration: BoxDecoration(gradient: LinearGradient(colors: ThemeConstants.backgroundGradientColors)),
          child: ListView(children: [Container(
            padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height*_topPaddingProportion, left: MediaQuery.sizeOf(context).width*_sidePaddingProportion, right: MediaQuery.sizeOf(context).width*_sidePaddingProportion),
            child: Column(
              children: [
                DescriptionWidget(),
                SizedBox(height: 100,),
                ConnectWidget(),
                SizedBox(height: 100,),
                AudienceReachWidget(),
                SizedBox(height: 100,),
                WorkWithMeWidget()
              ],
            ))]),

        ),
      ),
    );
  }
}
