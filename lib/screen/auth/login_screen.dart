import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tablabs/provider/login_provider.dart';

import 'package:tablabs/utils/appImageConstant.dart';
import 'package:tablabs/utils/color-resource.dart';
import 'package:tablabs/utils/style.dart';
import 'package:tablabs/utils/responsive_widget.dart';
import 'package:tablabs/widgets/custom_Nav_bar.dart';
import 'package:tablabs/widgets/custom_button.dart';

import '../../widgets/centre-logo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    bool isChecked=false;
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Consumer<AuthProvider>(
        builder: (context, model, child) =>
           (
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ResponsiveWidget.isSmallScreen(context) ? const SizedBox() : Expanded(
                  child: Container(
                    height: height,
                    child: Image.asset(AppImages.slider,fit: BoxFit.cover,),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: height,
                    margin: EdgeInsets.symmetric(horizontal: ResponsiveWidget.isSmallScreen(context)? height * 0.035 : height * 0.10),
                    color: AppColors.whiteColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: height * 0.2),
                        LogoTkd().getLogo(),
          
                        const SizedBox(height: 40.0),
                        Container(
                          height: 50.0,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: AppColors.whiteColor,
                          ),
                          child: TextFormField(
                            controller: emailController,
                            
                            style: tablabsStyle.copyWith(
                              fontWeight: FontWeight.w800,
                              color: AppColors.blueDarkColor,
                              fontSize: 12.0,
                            ),
          
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
          
                              ),
                              
                              suffixIcon: IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.alternate_email),
                              ),
                              contentPadding: const EdgeInsets.only(top: 16.0,left:13),
                              
                              hintText: 'Enter Email',
                              hintStyle: tablabsStyle.copyWith(
                                fontWeight: FontWeight.w800,
                                color: AppColors.blueDarkColor.withOpacity(0.5),
                                fontSize: 14.0,
                                
                              ),
                            ),
                          ),
                        ),
          
          
                        const SizedBox(height: 10.0),
                        Container(
                          height: 50.0,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: AppColors.whiteColor,
                          ),
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            style: tablabsStyle.copyWith(
                              fontWeight: FontWeight.w800,
                              color: AppColors.blueDarkColor,
                              fontSize: 14.0,
                            ),
          
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
          
                              ),
                              
                              suffixIcon: IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.lock),
                              ),
                              contentPadding: const EdgeInsets.only(top: 16.0,left:13),
                              
                              hintText: 'Enter Password',
                              hintStyle: tablabsStyle.copyWith(
                                fontWeight: FontWeight.w800,
                                color: AppColors.blueDarkColor.withOpacity(0.5),
                                fontSize: 16.0,
                                
                              ),
                            ),
                          ),
                        ),
          
                        SizedBox(height: height * 0.02),
                        Row(
                          children: [
                            Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Checkbox(checkColor: Colors.white,
                                fillColor: MaterialStateProperty.resolveWith(getColor),
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                   isChecked = value!;
                                  });
                                },),
                              const Text("Remember Me"),
                            ],
                          )
                        ),
                         SizedBox(width: width*0.219,),
                            Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: (){},
                            child: Text('Forgot Password?',
                              style: tablabsStyle.copyWith(
                                fontSize: 12.0,
                                color:const Color(0xFF632d86),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                       
                         
                          ],
                        ),
                       
          
                        SizedBox(height: height * 0.01),
                        Material(
                          color: Colors.transparent,
                          child: CustomButton(onTap:  () async {
                            var result = await model
                                .loginUsingEmailId(
                                emailController.text,passwordController.text,"Android", "eF_63nzf-io:APA91bE7d3_uNNalQxxmtiQS0YJrkmIaqX0Prq2n72BBaabfDdgNIGAYlHPuC4uMa23PVDn7ni55MbE7C2SCZb74tMouN5HCLgZ-un7tVmHIqPJH-3Tr7CvzjhxhjoXFFz96IIj_5F-S");

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          CustomNavBar()));

                          }, buttonText: 'Login',),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
            ),
        ),
        ),

    );
  }
}
