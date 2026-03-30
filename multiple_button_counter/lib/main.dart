import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CounterScreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Multiple button Counter",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CounterScreen(),
    );
  }

}