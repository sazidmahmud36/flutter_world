import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Quiz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto',colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF4CC9F0),brightness: Brightness.dark),useMaterial3: true),
      home: QuizHomeScreen(),

    );
  }
}
