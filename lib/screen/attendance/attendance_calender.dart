import 'package:flutter/material.dart';
import 'package:tablabs/screen/attendance/attendance_details.dart';
import 'package:tablabs/widgets/days_tile.dart';


import '../../widgets/Calender.dart';

class Attendance_calender extends StatefulWidget {
  const Attendance_calender({Key? key}) : super(key: key);

  @override
  State<Attendance_calender> createState() => _Attendance_calenderState();
}

class _Attendance_calenderState extends State<Attendance_calender> {
  final _focusedCalendarDate = DateTime.now();
  final _initialCalendarDate = DateTime.utc(2020, 10, 16);
  final _lastCalendarDate = DateTime.utc(2040, 12, 31);
  String title = "Attendance";
  final WorkingDays = "21";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf4f4f6),
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color(0xFF6c5ede),
        centerTitle: true,
        toolbarHeight: 60.2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFffffff),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Calandar_widget(
                          focusedCalendarDate: _focusedCalendarDate,
                          initialCalendarDate: _initialCalendarDate,
                          lastCalendarDate: _lastCalendarDate,
                        ),
                      ),
                    ),
                  ),


                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFffffff),
                    borderRadius: BorderRadius.circular(20.0)),
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Total Working Days",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Color(0xFF87868b), fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF6d5fdf),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(28),
                          child: const Center(
                            child: Text(
                              '21',
                              style: TextStyle(
                                  color: Color(0xFFeef6f9), fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Day_tile(
                    color: Color(0xFFeb4d91),
                    Title: '     Total Absent',
                    Days: '02',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Day_tile(
                    Days: '19',
                    color: Color(0xFF21d2fe),
                    Title: '     Total Present',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
