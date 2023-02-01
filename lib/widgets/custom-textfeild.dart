/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:tablabs/utils/color-resource.dart';
import 'package:tablabs/utils/style.dart';


class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final int maxLine;
  final bool isPhoneNumber;
  final bool isValidator;
  final bool isEmail;
  final bool isName;
  final bool isDigits;
  final TextCapitalization capitalization;
  final IconData? iconData;
  final bool? obsecure;
  final bool? readOnly;
  final String? validatorMsg;
  Function? onTap;
  Function? onValueChange;

  CustomTextField(
      {required this.controller,
        required this.hintText,
        required this.textInputType,
        this.maxLine = 1,
        this.validatorMsg,
        this.isPhoneNumber = false,
        this.isValidator = true,
        this.isEmail = false,
        this.isName = false,
        this.isDigits = false,
        this.capitalization = TextCapitalization.none,
        this.iconData,
        this.obsecure,
        this.readOnly,
        this.onTap,
        this.onValueChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 1),
      alignment: Alignment.center,
      // height: 45,
      child: TextFormField(
        onTap: () {
          onTap!();
        },
        onChanged: (vale){
          onValueChange;
        },
        controller: controller,
        inputFormatters: [
          isPhoneNumber
              ? FilteringTextInputFormatter.digitsOnly
              : FilteringTextInputFormatter.singleLineFormatter
        ],
        style: Style.dropdownValue,


        )


    );
  }
}*/
