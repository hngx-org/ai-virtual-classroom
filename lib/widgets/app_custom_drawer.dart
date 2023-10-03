import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 100,
              color: const Color(0xFF191D88),
              alignment: Alignment.center,
              child: Text(
                'AI Virtual Classroom',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: const Color(0xFF364356),
                size: 24,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color(0xFF364356),
                ),
              ),
              onTap: () {
                // Handles Home item tap.
              },
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                color: const Color(0xFF364356),
                size: 24,
              ),
              title: Text(
                'Payments',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color(0xFF364356),
                ),
              ),
              onTap: () {
                // Handles Payments item tap.
              },
            ),
            ListTile(
              leading: Icon(
                Icons.assignment,
                color: const Color(0xFF364356),
                size: 24,
              ),
              title: Text(
                'Essay Results',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color(0xFF364356),
                ),
              ),
              onTap: () {
                // Handles Essay Results item tap.
              },
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: const Color(0xFF364356),
                size: 24,
              ),
              title: Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color(0xFF364356),
                ),
              ),
              onTap: () {
                // Handles Notifications item tap.
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: const Color(0xFF364356),
                size: 24,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color(0xFF364356),
                ),
              ),
              onTap: () {
                // Handles Logout item tap.
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Custom Drawer Example'),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text('Content of the Home Screen'),
      ),
    ),
  ));
}
