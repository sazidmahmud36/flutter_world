import 'package:flutter/material.dart';
import 'package:todo/calculator_screen.dart';
import 'package:todo/todo.dart';
import 'package:todo/todo_recorded.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),

      ),
      home: TodoRecorded(),
    );
  }
}

