import 'package:flutter/material.dart';
import 'package:HR/setting.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class Tugas extends StatefulWidget {
  const Tugas();

  @override
  State<Tugas> createState() => _TugasState();
}

List<TimeRegion> _getTimeRegions() {
  final List<TimeRegion> regions = <TimeRegion>[];
  regions.add(TimeRegion(
      startTime: DateTime.now(),
      endTime: DateTime.now().add(Duration(hours: 1)),
      enablePointerInteraction: false,
      recurrenceRule: 'FREQ=DAILY;INTERVAL=1',
      textStyle: TextStyle(color: Colors.black45, fontSize: 15),
      color: Colors.grey.withOpacity(0.2),
      text: 'Break'));

  return regions;
}

class _TugasState extends State<Tugas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: biru,
      body: Container(
          child: SfCalendar(
        view: CalendarView.month,
        specialRegions: _getTimeRegions(),
        appointmentBuilder: (context, calendarAppointmentDetails) {
          return Container(
            color: birumuda,
          );
        },
        onTap: (calendarTapDetails) {
          print(calendarTapDetails.appointments);
        },
        monthViewSettings: MonthViewSettings(
          showAgenda: true,
          agendaStyle: AgendaStyle(
              backgroundColor: putih,
              appointmentTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontStyle: FontStyle.italic),
              dayTextStyle: TextStyle(
                  color: Colors.red, fontSize: 13, fontStyle: FontStyle.italic),
              dateTextStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal)),
          agendaItemHeight: 50,
        ),
      )),
    );
  }
}
