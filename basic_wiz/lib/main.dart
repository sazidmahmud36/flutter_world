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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          MySnackBar("I'm Floating Action Button", context);
        },
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.message),label: "Contact"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
      ],
        onTap: (int index){
          if(index == 0){
            MySnackBar("Bottom Navigation (Home)", context);
          }
          if(index == 1){
            MySnackBar("Bottom Navigation (Contact)", context);
          }
          if(index == 2){
            MySnackBar("Bottom Navigation (Profile)", context);
          }
        },

      ),
      body: Center(
        child: Text("Hello Flutter Basic"),
      ),
    );
  }
}