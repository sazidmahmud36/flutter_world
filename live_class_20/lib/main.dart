import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_class_20/pages/page_four.dart';
import 'package:live_class_20/pages/page_one.dart';
import 'package:live_class_20/pages/page_three.dart';
import 'package:live_class_20/pages/page_two.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/pageOne' : (context) => PageOne(),
        '/pageTwo' : (context) => PageTwo(),
        '/pageThree' : (context) => PageThree(),
        '/pageFour' : (context) => PageFour(),
      },
      home: PageOne(),
    );
  }
}
