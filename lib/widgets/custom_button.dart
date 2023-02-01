import 'package:tablabs/utils/color-resource.dart';
import 'package:tablabs/utils/custom_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Function onTap;
  final String? buttonText;
  CustomButton({required this.onTap, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: ElevatedButton(
        onPressed: (){
          onTap();
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple,
          onPrimary: Colors.black,
          elevation: 10,
          minimumSize: const Size.fromHeight(50),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(05))),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
          child: Text(buttonText!,
              style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),),
        ),
      ),
    );
  }
}