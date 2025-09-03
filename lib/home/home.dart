import 'package:extremebreaker1/home/sections/connect_with_me/connect_widget.dart';
import 'package:extremebreaker1/home/sections/profile_description/description_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Extremebreaker1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: [
            const Color.fromARGB(255, 197, 218, 255),
            const Color.fromARGB(255, 233, 213, 255),
          ])),
          
          child: ListView(children: [Container(
            padding: EdgeInsets.only(top: 90, left: 260, right: 260),
            child: Column(
              children: [
                DescriptionWidget(),
                SizedBox(height: 100,),
                ConnectWidget(),
              ],
            ))]),

        ),
      ),
    );
  }
}
