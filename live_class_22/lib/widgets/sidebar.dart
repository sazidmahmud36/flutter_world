import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sidebar extends StatelessWidget {
  const sidebar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text("Dashboard"),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.people),
            title: Text("Users"),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Orders"),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.inventory),
            title: Text("Products"),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.bar_chart),
            title: Text("Reports"),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text("Logout", style: TextStyle(color: Colors.red)),
            onTap: () {},
          ),

        ],
      ),
    );
  }
}