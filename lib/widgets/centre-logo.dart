import 'package:flutter/cupertino.dart';
import 'package:tablabs/utils/appImageConstant.dart';
import 'package:tablabs/utils/color-resource.dart';
import 'package:tablabs/utils/style.dart';

class LogoTkd {
  Widget getLogo() {
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            AppImages.tablabs,
            height: 120,
            width: 210,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Welcome to Tabalbs HRM",
                  style: tablabsStyle.copyWith(
                    fontWeight: FontWeight.w800,
                    color: Color(0xFFd0ced0),
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
