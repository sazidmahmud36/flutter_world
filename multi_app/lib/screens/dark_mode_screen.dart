import 'package:flutter/material.dart';

class DarkModeScreen extends StatefulWidget {
  const DarkModeScreen({super.key});

  @override
  State<DarkModeScreen> createState() => _DarkModeScreenState();
}

class _DarkModeScreenState extends State<DarkModeScreen> {
  bool _isDarkMode = false;

  void toggleTheme(){
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Dark Mode Toggle App',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_isDarkMode ? "Dark Mode" : "Light Mode", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Icon(
                _isDarkMode ? Icons.dark_mode : Icons.sunny,
                size: 50,
                color: _isDarkMode ? Colors.yellow : Colors.orange,
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){toggleTheme();}, child: Text("Change Theme")),
              SizedBox(height: 20,),
              Switch(value: _isDarkMode, onChanged: (value){toggleTheme();}),
            ],
          ),
        ),
      ),
    );
  }
}
