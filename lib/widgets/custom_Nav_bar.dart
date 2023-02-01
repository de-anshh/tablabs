import 'package:flutter/material.dart';
import 'package:tablabs/screen/More_page.dart';
import 'package:tablabs/screen/home_screen.dart';
import 'package:tablabs/screen/profile/my_profile.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MyProfile(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Container(
          height: 90,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Color(0xFF1f2946),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.white, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              unselectedItemColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.thumb_up,
                      color: Color(0xFFfefefd),
                    ),
                    label: 'Home',
                    backgroundColor: Color(0xFF1f2847)),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      color: Color(0xFFfefefd),
                    ),
                    label: 'Profile',
                    backgroundColor: Color(0xFF1f2847)),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.menu_open,
                      color: Color(0xFFfefefd),
                    ),
                    label: 'Home',
                    backgroundColor: Color(0xFF1f2847))
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          )),
    );
  }
}
