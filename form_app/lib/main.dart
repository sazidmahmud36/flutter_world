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
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});



  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60),
      backgroundColor: Colors.lightBlue,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Form App"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(labelText: "First Name",border: OutlineInputBorder()),),),
          Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(labelText: "Last Name",border: OutlineInputBorder()),),),
          Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(labelText: "Email",border: OutlineInputBorder()),),),
          Padding(padding: EdgeInsets.all(10), child: ElevatedButton(onPressed: (){}, child: Text("Submit"),style: buttonStyle,)),
        ],
      )
    );
  }
}