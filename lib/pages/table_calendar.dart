import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';

class TableCalendar extends StatelessWidget {
  TableCalendar({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: SafeArea(
        child: Calendar(
          isExpandable: true,
          startOnMonday: true,
          weekDays: ['Mon', 'Tue', 'Wen', 'Thu', 'Fri', 'Sat', 'Sun'],
          selectedColor: Colors.lightBlueAccent,
          eventDoneColor: Colors.blue,
          selectedTodayColor: Colors.lightBlueAccent,
          todayColor: Colors.blue,
          locale: 'en-us',
          todayButtonText: 'Today',
          allDayEventText: 'All day',
          multiDayEndText: 'End',
          isExpanded: true,
          expandableDateFormat: 'EEEE, dd. MMMM yyyy',
          datePickerType: DatePickerType.date,
          dayOfWeekStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 11),
        ),
      ),
    );
  }
}
