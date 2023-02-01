import 'package:flutter/material.dart';
class CustomTextButton extends StatelessWidget {
  final String ButttonText;
  final String Details;
  final String title;
  Function onTap;
   CustomTextButton({Key? key, required this.ButttonText, required this.Details, required this.title, required this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              //'Attendance',
              title,textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF555750),
                  fontWeight: FontWeight.bold),
            ),

          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          //"Average working hours of Q1: 10:20 ",
          Details,
          style: TextStyle(
              fontSize: 13,
              color: Color(0xFF7f6585),
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 7,
        ),
        TextButton(
          onPressed: onTap(),
          child:  Text(

            ButttonText,
            style: TextStyle(
                fontSize: 14,
                color: Color(0xFFa06fbe),
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
