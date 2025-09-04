import 'package:extremebreaker1/constants/theme_constants.dart';
import 'package:flutter/material.dart';

class CollaborationTypes extends StatefulWidget {
  const CollaborationTypes({super.key});

  @override
  State<CollaborationTypes> createState() => _CollaborationTypesState();
}

class _CollaborationTypesState extends State<CollaborationTypes> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32.0, left: 32),
          child: Text(
            "Collaboration Types",
            style: TextStyle(
              color: ThemeConstants.primaryTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        
      ],
    );
  }
}
