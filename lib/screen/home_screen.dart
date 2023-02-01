import 'package:flutter/material.dart';
import 'package:tablabs/screen/attendance/attendance_calender.dart';
import 'package:tablabs/screen/holiday/holidays.dart';
import 'package:tablabs/utils/appImageConstant.dart';
import 'package:tablabs/utils/color-resource.dart';
import 'package:tablabs/widgets/interactions.dart';
import 'package:tablabs/widgets/people_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        //minimum: const EdgeInsets.all(12.0),
        top: true,
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Today",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Good Morning',
                            style: TextStyle(color: Colors.blueGrey),
                          ),
                        ],
                      ),
                      //Image.asset('assets/images/profile.jpg')
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(28),
                              child: Image.asset(
                                AppImages.user,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //search bar
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFeeeeee),
                        borderRadius: BorderRadius.circular(30.0)),
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 35,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Interactions",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Interactions(
                          title: 'Check In',
                          emoji: '☑',
                          //
                          color: Color(0xFFd4e5fb),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) =>
                                      const Attendance_calender()),
                            );
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //Work
                        Interactions(
                          title: 'Holidays',
                          color: Color(0xFFf8d9d7),
                          emoji: '💻',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) =>
                                  const HolidaysScreen()),
                            );
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //Work
                        Interactions(
                          title: 'Work',
                         // color: Color(0xFFd4e5fb),
                          color: Color(0xFFfbead8),
                          emoji: '💻',
                          onTap: () {},
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //My Interaction
                        Interactions(
                          title: 'Meets',
                          emoji: '🤝',
                         // color: Color(0xFFf8d9d7),
                          color: Color(0xFFd4e5fb),
                          onTap: () {},
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //logs
                        Interactions(
                          title: 'Work log',
                          emoji: '📝',
                          color: Color(0xFFfbead8),
                          onTap: () {},
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //check in
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Tablabs Team",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(14),
              child: Column(
                children: const [
                  PeopleTile(
                    color: Color(0xFFedf0fb),
                    name: 'Ajay',
                    work: 'Developer',
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  PeopleTile(
                    color: Color(0xFFfceef1),
                    name: 'Pratiksha',
                    work: ' Developer',
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  PeopleTile(
                    name: 'Darshan',
                    color: Color(0xFFfaf4ed),
                    work: 'Sales',
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  PeopleTile(
                    name: 'Darshan',
                    color: Color(0xFFfaf4ed),
                    work: 'Marketing',
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
