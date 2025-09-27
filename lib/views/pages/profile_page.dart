import 'package:flutter/material.dart';
import 'package:ranapp/data/notifiers.dart';
import 'package:ranapp/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Column(
        children: [
          ListTile(
            title: Text('Logout'),
            onTap: () {
              selectedPageNotifier.value = 0; // Reset to home page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) {
                  return WelcomePage();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
