import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: Card(
          elevation: 10,
          color: Colors.greenAccent,
          shadowColor: Colors.red,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(
              child: Text("This is card"),
            ),
          ),
        ),
      ),
    );
  }

}