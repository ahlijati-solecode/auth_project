// lib/screens/dashboard_screen.dart
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_screen.dart';

Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        ListTile(
          title: Text('Home TabBar'),
          leading: Icon(Icons.home),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        Divider(),
        ListTile(
          title: Text('List Mahasiswa'),
          leading: Icon(Icons.list),
          onTap: () {
            Navigator.pushNamed(context, '/mahasiswa');
          },
        ),
        Divider(),
        ListTile(
          title: Text('Contact'),
          leading: Icon(Icons.phone),
          onTap: () {
            Navigator.pushNamed(context, '/contacts1');
          },
        ),
      ],
    ),
  );
}

class DashboardScreen extends StatelessWidget {
  final User user;

  const DashboardScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
      drawer: buildDrawer(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, ${user.displayName ?? 'User'}!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text('Email: ${user.email ?? 'No email'}'),
          ],
        ),
      ),
    );
  }
}
