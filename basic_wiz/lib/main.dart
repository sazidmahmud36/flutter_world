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

  MySnackBar(message, context){
    return ScaffoldMessenger.of(context)
        .showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Widget App"),
        backgroundColor: Colors.lightBlueAccent,
        titleSpacing: 10,
        // centerTitle: true,
        toolbarHeight: 55,
        toolbarOpacity: 1,
        elevation: 6,
        actions: [
          IconButton(onPressed: (){MySnackBar("I'm Comment", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar("I'm Settings", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("I'm More Button", context);}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Center(
        child: Text("Hello Flutter Basic"),
      ),
    );
  }
}