import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(13, 148, 136, 1.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/profile.jpg'), // Update with your profile image asset
                ),
                SizedBox(height: 10),
                Text(
                  'Username',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'user@example.com',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              // Add navigation or action here
            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Post Review'),
            onTap: () {
              Navigator.pop(context);
              // Add navigation or action here
            },
          ),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text('Login'),
            onTap: () {
              Navigator.pop(context);
              // Navigate to settings page
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.app_registration),
            title: const Text('SignUp'),
            onTap: () {
              Navigator.pop(context);
              // Perform logout action
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Profile'),
            onTap: () {
              Navigator.pop(context);
              // Perform logout action
            },
          ),
          ListTile(
            leading: const Icon(Icons.admin_panel_settings_outlined),
            title: const Text('Admin login'),
            onTap: () {
              Navigator.pop(context);
              // Perform logout action
            },
          ),
        ],
      ),
    );
  }
}
