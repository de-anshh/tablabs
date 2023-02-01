import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tablabs/provider/employee_provider.dart';
import 'package:tablabs/provider/login_provider.dart';
import 'package:tablabs/screen/holiday/holidays.dart';

import 'package:tablabs/utils/appConstant.dart';
import 'package:tablabs/widgets/custom_Nav_bar.dart';
import 'screen/auth/login_screen.dart';
void main() {
    runApp(
        MultiProvider(
            providers: [
                ChangeNotifierProvider(create: (_) => EmployeeMasterProvider()),
                ChangeNotifierProvider(create: (_) => AuthProvider()),

            ],
            child: MyApp()
        )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyProfile(),
      home: HolidaysScreen(),
    );
  }
}

