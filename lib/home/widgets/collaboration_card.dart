import 'package:extremebreaker1/constants/theme_constants.dart';
import 'package:flutter/material.dart';

class CollaborationCard extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final String title;
  final String description;
  const CollaborationCard({
    super.key,
    required this.iconData,
    required this.iconColor,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
            width: MediaQuery.of(context).size.width/5,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(iconData, color: iconColor, size: 48),
              SizedBox(height: 10),
              Text(
                title,
                softWrap: true,
                style: TextStyle(
                  color: ThemeConstants.primaryTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 10),
              Text(
                description,
                softWrap: true,
                style: TextStyle(
                  color: ThemeConstants.secondaryTextColor,
                  fontSize: 16,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
