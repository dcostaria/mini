import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('T-Glide'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Slideshow
          Container(
            height: MediaQuery.of(context).size.height * 0.3, // Adjust height as needed
            child: Placeholder(), // Replace Placeholder with your slideshow widget
          ),
          SizedBox(height: 20), // Add some spacing

          // Buttons
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Icons with Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildButtonWithIcon(Icons.schedule, 'View Schedule', () {
                        // Navigate to Schedule Screen
                      }),
                      _buildButtonWithIcon(Icons.school, 'View Courses', () {
                        // Navigate to Courses Screen
                      }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildButtonWithIcon(Icons.person, 'View Attendance', () {
                        // Navigate to Attendance Screen
                      }),
                      _buildButtonWithIcon(Icons.attach_money, 'View Fees', () {
                        // Navigate to Fees Screen
                      }),
                    ],
                  ),
                  _buildButtonWithIcon(Icons.payment, 'Make Payment', () {
                    // Navigate to Payment Screen
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonWithIcon(IconData iconData, String label, Function()? onPressed) {
    return Column(
      children: [
        Icon(iconData, size: 60, color: Colors.blue),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: onPressed,
          child: Text(label),
        ),
      ],
    );
  }
}
