import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routing_practice/screen/detailsScreen.dart';
import 'package:routing_practice/screen/homeScreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Homescreen(),
        '/details': (context) => Detailsscreen(),
      },
    );
  }

}