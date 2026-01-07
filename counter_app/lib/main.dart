import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyHomePageUI();
  }

}

class MyHomePageUI extends State<MyHomePage>{
  int countNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App"),backgroundColor: Colors.pink,foregroundColor: Colors.white,),
      body: Center(
        child: Text("Counting Number: $countNumber"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            countNumber = countNumber + 1;
          });

        },
        child: Icon(Icons.add),
      ),
    );
  }
}