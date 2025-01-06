import 'package:flutter/material.dart';
import 'admin_panel_dashboard.dart';

void main() {
  runApp(DoctorAppointmentApp());
}

class DoctorAppointmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Appointment Assistant',
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: AdminPanelDashboard(),
    );
  }
}
