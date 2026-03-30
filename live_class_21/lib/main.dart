import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_class_21/homeScreen.dart';
import 'package:live_class_21/notificationScreen.dart';
import 'package:live_class_21/personScreen.dart';
import 'package:live_class_21/settingsScreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawerPage(),
    );
  }
}

class DrawerPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Drawer"),),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Menu")),
            ListTile(title: Text("home"),onTap: ()=>{},leading: Icon(Icons.home),),
            ListTile(title: Text("Settings"),onTap: ()=>{},leading: Icon(Icons.settings),),
            ListTile(title: Text("Profile"),onTap: ()=>{},leading: Icon(Icons.person),),
            ListTile(title: Text("Notification"),onTap: ()=>{},leading: Icon(Icons.notifications),),
          ],
        ),
      ),
      
    );
  }

}


class TabBarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("MyApp"),
            bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home),),
                  Tab(icon: Icon(Icons.settings),),
                  Tab(icon: Icon(Icons.notifications),),
                  Tab(icon: Icon(Icons.person),),

                ]
            ),
          ),
          body: TabBarView(
              children: [
                Homescreen(),
                Settingsscreen(),
                Notificationscreen(),
                Personscreen()
              ]
          ),
        )
    );
  }

}
class BottomNavigationBarPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => BottomNavigationBarState();
}
class BottomNavigationBarState extends State<BottomNavigationBarPage>{
  int index = 0;
  final List<Widget> screens = [
    Homescreen(),
    Personscreen(),
    Notificationscreen(),
    Settingsscreen()

  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          selectedLabelStyle: TextStyle(color: Colors.black),
          onTap: (i){
            setState(() {
              index = i;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Person"),
            BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notifications"),
          ]
      ),
    );
  }

}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is my App"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
        ],
      ),
    );
  }

}