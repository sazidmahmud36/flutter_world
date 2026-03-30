import 'package:class_23/screens/listview_screen.dart';
import 'package:class_23/screens/myhomepage.dart';
import 'package:class_23/screens/scrolling_widget_practice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: ScrollingWidgetPractice(),
    );
  }
}
