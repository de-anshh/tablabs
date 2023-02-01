import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More',style: TextStyle(fontSize: 20, color: Color(0xFF7f6585),fontWeight: FontWeight.w400),),
        backgroundColor: Color(0xFFdab2e5),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
