import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../uidata.dart';

class Date extends StatefulWidget {
  const Date({ Key? key }) : super(key: key);

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
   DateTime selectday=DateTime.now();
    DateTime focusday=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return  TableCalendar(
                  firstDay: DateTime.utc(2022, 01, 01),
                  lastDay: DateTime.utc(2050, 01, 01),
                  focusedDay: focusday,
                  daysOfWeekVisible: true,
                  calendarFormat: CalendarFormat.week,
                  startingDayOfWeek: StartingDayOfWeek.monday,
                 headerStyle: HeaderStyle(
                   formatButtonVisible: false,
                titleTextStyle: TextStyle(
              fontSize: 15,
              color: UIData.mainColor,
              fontWeight: FontWeight.bold,
            )),
onDaySelected: (DateTime selectDay, DateTime focusDay) {
              setState(() {
                selectday = selectDay;
                focusday = focusDay;
              });
              print(focusday);
            },
            selectedDayPredicate: (DateTime date) {
              return isSameDay( selectday, date);

            },

            calendarStyle: CalendarStyle(
              isTodayHighlighted: true,
              selectedDecoration: BoxDecoration(
               border: Border.all(
          color: UIData.mainColor,
        ),
         borderRadius: BorderRadius.all(Radius.circular(9)),
                shape:BoxShape.rectangle,
              ),
              selectedTextStyle: TextStyle(
              
              )
            ));
  }
}