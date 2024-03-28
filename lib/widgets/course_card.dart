import 'package:flutter/material.dart';
import '../models/course.dart';

class CourseCard extends StatelessWidget {
  final Course course;

  CourseCard({required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(course.title),
        subtitle: Text(course.description),
        trailing: Text('\$${course.fee.toStringAsFixed(2)}'),
      ),
    );
  }
}
