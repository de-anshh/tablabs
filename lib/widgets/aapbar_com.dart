import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tablabs/utils/style.dart';

import '../utils/color-resource.dart';
/*
class AppBarCommon {
  final String title;
  final String greeting;
  final BuildContext context;

   AppBarCommon(this.context,this.greeting , {required this.title});

  AppBar appBar(){
    return AppBar(
      title: Column(
          children: <Widget>[
            Text(
              'My App',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.raleway().toString(),
                  fontSize: 18),
            ),
            Text(greeting,style: TextStyle(color: Colors.grey,
                fontWeight: FontWeight.w800,
                fontFamily: GoogleFonts.raleway().toString(),
                fontSize: 12)),
          ]
      ),


      leading: IconButton(icon:Icon(Icons.person,color: Colors.black,),onPressed:(){
        Navigator.pop(context);
      } ,
      ),);
  }


}
*/


class AppBarCommon extends StatelessWidget {
  final String title;
  final String greeting;
  const AppBarCommon({super.key, required this.title, required this.greeting});
  @override
  Size get PreferredSize => const Size.fromHeight(60.0);
  @override
  Widget build(BuildContext context) {
    return
      AppBar(
          title: Column(
            children: [
              Text(
                "Today",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.raleway().toString(),
                    fontSize: 18),
              ),
              Text(greeting,style: TextStyle(color: Colors.grey,
                fontWeight: FontWeight.w800,
                fontFamily: GoogleFonts.raleway().toString(),
                fontSize: 12)),
            ],
          ),

          backgroundColor: AppColors.backColor,
          actions: [
            InkWell(
              onTap: () {},
              child: Image.asset('assets/images/profile.jpg'),
            ),
            SizedBox(
              width: 10,
            ),
          ],
          //leading: ,

    );
  }







}