// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AboutAppDrawer extends StatelessWidget {
  const AboutAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Column(
                children: [
                  // Logo
                  DrawerHeader(
                    child: Icon(
                      Icons.apple,
                      size: 160,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 50),

                  // Home
                  ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),

                  // About
                  ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: Icon(Icons.info),
                    title: Text("About"),
                  ),
                ],
              ),
            ),

            // Logout
            ListTile(
              iconColor: Colors.grey[500],
              textColor: Colors.grey[500],
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}
