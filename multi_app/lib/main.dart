import 'package:flutter/material.dart';
import 'package:multi_app/screens/Quotegeneratorpage.dart';
import 'package:multi_app/screens/color_shade_screen.dart';
import 'package:multi_app/screens/counter_screen.dart';
import 'package:multi_app/screens/course_home_screen.dart';
import 'package:multi_app/screens/dark_mode_screen.dart';
import 'package:multi_app/screens/faq_screen.dart';
import 'package:multi_app/screens/main_home.dart';
import 'package:multi_app/screens/todo_homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => MainHome(),
        '/todo': (context) => TodoHomescreen(),
        '/counter': (context) => CounterScreen(),
        '/quotes': (context) => Quotegeneratorpage(),
        '/courses': (context) => CourseHomeScreen(),
        '/faq': (context) => FaqScreen(),
        '/darkmode': (context) => DarkModeScreen(),
        '/colorshade': (context) => ColorShadeScreen(),

      },
      title: 'Simple To-do List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[50],
      ),

      home: MainHome(),

    );
  }
}
