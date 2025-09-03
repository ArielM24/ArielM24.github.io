import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Function onPressed;
  const RoundedButton({
    super.key,
    required this.text,
    required this.iconData,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () async => await onPressed(),
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 232, 236, 255),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Icon(iconData, color: Colors.deepPurple),
                SizedBox(width: 10),
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
