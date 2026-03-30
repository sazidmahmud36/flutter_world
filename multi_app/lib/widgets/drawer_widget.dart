import 'package:flutter/material.dart';

class drawer_widget extends StatelessWidget {
  const drawer_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue,),
            child: Text('Multi feature App', style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.pin),
            title: const Text('Counter'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/counter');
            },
          ),
          ListTile(
            leading: Icon(Icons.edit_note_outlined),
            title: const Text('To Do'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/todo');
            },
          ),
          ListTile(
            leading: Icon(Icons.format_quote),
            title: const Text('Quote Generator'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/quotes');
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: const Text('Courses'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/courses');
            },
          ),
          ListTile(
            leading: Icon(Icons.question_mark),
            title: const Text('FAQ'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/faq');
            },
          ),
          ListTile(
            leading: Icon(Icons.shield_moon),
            title: const Text('Dark Mode'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/darkmode');
            },
          ),
          ListTile(
            leading: Icon(Icons.color_lens),
            title: const Text('Color Shade'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/colorshade');
            },
          ),


        ],
      ),
    );
  }
}
