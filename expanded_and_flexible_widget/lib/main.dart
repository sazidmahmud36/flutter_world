import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity(),debugShowCheckedModeBanner: false,);
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expandable and Flexible"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     Expanded(flex: 1, child: Container(color: Colors.cyanAccent)),
      //     Expanded(flex: 2, child: Container(color: Colors.red)),
      //     Expanded(flex: 1, child: Container(color: Colors.green)),
      //     Expanded(flex: 3, child: Container(color: Colors.yellow)),
      //   ],
      // ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(fit: FlexFit.tight, flex:1, child: Container(color: Colors.cyanAccent,)),
          Flexible(flex:2, child: Container(color: Colors.red,)),
          Flexible(flex:3, child: Container(color: Colors.green,)),
          Flexible(flex:4, child: Container(color: Colors.yellow,)),
        ],
      ),
    );
  }
}
