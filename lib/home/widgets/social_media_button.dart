import 'package:extremebreaker1/constants/theme_constants.dart';
import 'package:flutter/material.dart';

class SocialMediaButton extends StatefulWidget {
  final String text;
  final IconData iconData;
  final Color iconBackgroundColor;
  final Function onPressed;
  const SocialMediaButton({super.key, required this.text, required this.iconData, required this.iconBackgroundColor, required this.onPressed});

  @override
  State<SocialMediaButton> createState() => _SocialMediaButtonState();
}

class _SocialMediaButtonState extends State<SocialMediaButton> {
  double _scale = 1.0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            _scale = 1.05;
          });
        },
        onExit: (event) {
          setState(() {
            _scale = 1.0;
          });
        },
        child: AnimatedScale(
          scale: _scale,
          duration: Duration(microseconds: 200),
          child: InkWell(
            onTap: ()async=> await widget.onPressed(),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 232, 236, 255),
              ),
              height: 110,
              child: Padding(
                padding: const EdgeInsets.only(top:14, bottom: 14, left: 80, right: 80),
                child: Wrap(
                  direction: Axis.vertical,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.iconBackgroundColor
                      ),
                      width: 50,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(widget.iconData, color:  Colors.white, size: 28,),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(widget.text, style: TextStyle(color: ThemeConstants.primaryTextColor, fontWeight: FontWeight.bold, fontSize: 16),)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}