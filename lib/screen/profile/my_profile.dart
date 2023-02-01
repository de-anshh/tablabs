import 'package:flutter/material.dart';
import 'package:tablabs/utils/appImageConstant.dart';
import 'package:tablabs/widgets/custom_text_button.dart';


class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFdab2e5),
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
              color: Color(0xFFdab2e5),
              shape: BoxShape.rectangle,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Color(0xFF584662),
                        )),
                    Text(
                      'Profile',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF7f6585),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            'Deepak Salve',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF7f6585),
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Software Devloper",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF7f6585),
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Show Full Profile',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFFa06fbe),
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(AppImages.user),
                          radius: 50,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 415,
            height: 523,
            //color: Color(0xFFe2e2d7),
            padding: EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)),
            ),


            child: Column(

              children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   CustomTextButton(ButttonText: 'View Swipe Record ', Details: 'Average working hours of Q1: 10:20', title: 'Attendance', onTap: (){},)
                 ],
               ),
                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextButton(ButttonText: 'Update Now', Details: "Don't miss opportunities, Update your skills in career card now!", title: 'Career Card', onTap: (){},)
                  ],
                ),
                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextButton(ButttonText: 'More Details', Details: "Don't miss opportunities, Update your skills in career card now!", title: 'Alloted Projects', onTap: (){},)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
