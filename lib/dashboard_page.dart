import 'package:flutter/material.dart';


class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Admin Panel Dashboard', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          Container(
            height: 200,
            color: Colors.grey[300],
            child: Center(child: Text('Graph from Firebase Analytics')),
          ),
          SizedBox(height: 16),
          Container(
            height: 200,
            color: Colors.grey[300],
            child: Center(child: Text('Graph from Firestore')),
          ),
        ],
      ),
    );
  }
}
