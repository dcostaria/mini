import 'package:flutter/material.dart';
import '../models/schedule.dart';

class ScheduleCard extends StatelessWidget {
  final Schedule schedule;

  ScheduleCard({required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(schedule.title),
        subtitle: Text(schedule.description),
        trailing: Text(schedule.dateTime.toString()),
      ),
    );
  }
}
