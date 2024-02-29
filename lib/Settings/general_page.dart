import 'package:flutter/material.dart';

class GeneralPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Language'),
            trailing: Icon(Icons.language),
            onTap: () {
              // Handle language setting
            },
          ),
          ListTile(
            title: Text('Notifications'),
            trailing: Icon(Icons.notifications),
            onTap: () {
              // Handle notifications setting
            },
          ),
          // Add more settings as needed
        ],
      ),
    );
  }
}
