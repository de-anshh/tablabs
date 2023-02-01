import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calandar_widget extends StatelessWidget {
  final focusedCalendarDate;
  final initialCalendarDate;
  final lastCalendarDate;
  const Calandar_widget({Key? key, required this.focusedCalendarDate,required this.initialCalendarDate,required this.lastCalendarDate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: focusedCalendarDate,
      // earliest possible date
      firstDay: initialCalendarDate,
      // latest allowed date
      lastDay: lastCalendarDate,
      // default view when displayed
      calendarFormat: CalendarFormat.month,
      // default is Saturday & Sunday but can be set to any day.
      // instead of day, a number can be mentioned as well.

      // default is Sunday but can be changed according to locale
      startingDayOfWeek: StartingDayOfWeek.sunday,
      // height between the day row and 1st date row, default is 16.0
      daysOfWeekHeight: 40.0,
      // height between the date rows, default is 52.0
      rowHeight: 60.0,
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        headerMargin: EdgeInsets.all(20),
        headerPadding: EdgeInsets.symmetric(horizontal: 10),
        titleTextStyle:
        TextStyle(color: Color(0xFF82858a), fontSize: 20.0),
        decoration: BoxDecoration(
            color: Color(0xFFffffff),
            borderRadius: BorderRadius.circular(30)),
        leftChevronIcon: Icon(
          Icons.chevron_left,
          color: Color(0xFF575a7c),
          size: 28,
        ),
        rightChevronIcon: Icon(
          Icons.chevron_right,
          color: Color(0xFF575a7c),
          size: 28,
        ),
      ),
      daysOfWeekStyle: const DaysOfWeekStyle(
        // Weekend days color (Sat,Sun)
        weekendStyle: TextStyle(color: Color(0xFFc5c5c5)),
      ),
      // Calendar Dates styling
      calendarStyle: const CalendarStyle(
        // Weekend dates color (Sat & Sun Column)
        weekendTextStyle: TextStyle(color: Color(0xFFc5c5c5)),
        // highlighted color for today
        todayDecoration: BoxDecoration(
          color: Color(0xFF6d5fdf),
          shape: BoxShape.circle,
        ),

        // highlighted color for selected day
        selectedDecoration: BoxDecoration(
          color: Color(0xFF6d5fdf),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
