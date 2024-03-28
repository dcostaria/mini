import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/schedule_screen.dart';
import 'screens/courses_screen.dart';
import 'screens/attendance_screen.dart';
import 'screens/fees_screen.dart';
import 'screens/payment_screen.dart';
import 'screens/login_screen.dart'; // Import the login screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'T-Glide',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/login', // Set the initial route to login
      routes: {
        '/login': (context) => LoginScreen(), // Define login route
        '/home': (context) => HomeScreen(),
        '/schedule': (context) => ScheduleScreen(),
        '/courses': (context) => CoursesScreen(),
        '/attendance': (context) => AttendanceScreen(),
        '/fees': (context) => FeesScreen(),
        '/payment': (context) => PaymentScreen(),
      },
    );
  }
}

