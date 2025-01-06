import 'package:flutter/material.dart';

class AdminPanelDashboard extends StatefulWidget {
  @override
  _AdminPanelDashboardState createState() => _AdminPanelDashboardState();
}

class _AdminPanelDashboardState extends State<AdminPanelDashboard> {
  int _selectedIndex = 0;

  // Pages corresponding to each drawer menu
  final List<Widget> _pages = [
    DashboardPage(),
    ManageUsersPage(),
    BookedAppointmentsPage(),
    HospitalDatabasePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); // Close the drawer
  }

  void _logout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Logout'),
        content: Text('Are you sure you want to log out?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Logged out successfully')),
              );
            },
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Panel Dashboard'),
      ),
      body: _pages[_selectedIndex], // Display the selected page
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'images/logo.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'Doctor Appointment Assistant',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Dashboard'),
              leading: Icon(Icons.dashboard),
              onTap: () => _onItemTapped(0),
            ),
            ListTile(
              title: Text('Manage Users'),
              leading: Icon(Icons.people),
              onTap: () => _onItemTapped(1),
            ),
            ListTile(
              title: Text('Booked Appointments'),
              leading: Icon(Icons.calendar_today),
              onTap: () => _onItemTapped(2),
            ),
            ListTile(
              title: Text('Hospital Database'),
              leading: Icon(Icons.local_hospital),
              onTap: () => _onItemTapped(3),
            ),
            Divider(),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),
              onTap: () => _logout(context),
            ),
          ],
        ),
      ),
    );
  }
}

// Define each page as separate widgets

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
        ),
        Expanded(
          child: Center(child: Text('Graph from Firebase Analytics')),
        ),
        Expanded(
          child: Center(child: Text('Usage Metrics from Firestore')),
        ),
      ],
    );
  }
}

class ManageUsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Manage Users\nTable from Firestore'),
    );
  }
}

class BookedAppointmentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Manage Booked Appointments\nTable from Firestore'),
    );
  }
}

class HospitalDatabasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Manage Hospital Database\nTable from Firestore'),
    );
  }
}
