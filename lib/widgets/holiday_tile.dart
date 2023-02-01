import 'package:flutter/material.dart';
import 'package:tablabs/utils/appImageConstant.dart';
import 'package:tablabs/utils/color-resource.dart';

class HolidayTile extends StatelessWidget {
  final Color color;
  final Color textColor;

  final String title;
  final String Subtitle;

  const HolidayTile(
      {super.key, required this.color, required this.title, required this.Subtitle, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        shape: BoxShape.rectangle,
      ),
      height: 99,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [

            const SizedBox(
              width: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(

                    color: textColor,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  Subtitle,
                  style: TextStyle(
                    color: Color(0xFF090100),
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),

      ]),
    );
  }
}
