import 'package:flutter/material.dart';

class BookedAppointmentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text and underline
            children: [
              Text(
                'Manage Booked Appointments',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4), // Add space between text and underline
              Divider(
                thickness: 2, // Thickness of the underline
                color: Colors.black, // Color of the underline
                endIndent: 16, // Add a little padding to the right
              ),
            ],
          ),
        ),
        Expanded(
          child: Text('Table from Firestore (Booked Appointments)', style: TextStyle(fontSize: 16)),
        ),
      ],
    );
  }
}
