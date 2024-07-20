import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF00D9FF), Color(0xFF00C3A9)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: const Center(
              child: Text('My App',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.login, color: Colors.teal),
            title: const Text('Login', style: TextStyle(fontSize: 18)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.app_registration, color: Colors.teal),
            title: const Text('Sign Up', style: TextStyle(fontSize: 18)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
