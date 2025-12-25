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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  accountName: Text("Sazid Mahmud",style: TextStyle(color: Colors.amber),),
                  accountEmail: Text("sazidmahmud@gmail.com"),
                  decoration: BoxDecoration(color: Colors.black),
                  currentAccountPicture: Image.network("https://avatars.githubusercontent.com/u/45362238?v=4"),
                  onDetailsPressed: (){MySnackBar("This is my Account", context);},
                )
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){MySnackBar("Drawer (Home)", context);}
            ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: (){MySnackBar("Drawer (Settings)", context);}
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: (){MySnackBar("Drawer (Profile)", context);}
            ),
            ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                onTap: (){MySnackBar("Drawer (Email)", context);}
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  accountName: Text("Sazid Mahmud",style: TextStyle(color: Colors.amber),),
                  accountEmail: Text("sazidmahmud@gmail.com"),
                  decoration: BoxDecoration(color: Colors.black),
                  currentAccountPicture: Image.network("https://avatars.githubusercontent.com/u/45362238?v=4"),
                  onDetailsPressed: (){MySnackBar("This is my Account", context);},
                )
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){MySnackBar("Drawer (Home)", context);}
            ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: (){MySnackBar("Drawer (Settings)", context);}
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: (){MySnackBar("Drawer (Profile)", context);}
            ),
            ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                onTap: (){MySnackBar("Drawer (Email)", context);}
            ),
          ],
        ),
      ),
      // body: Container(
      //   height: 250,
      //   width: 250,
      //   child: Image.network("https://avatars.githubusercontent.com/u/45362238?v=4"),
      //   alignment: Alignment.center,
      //   margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
      //   decoration: BoxDecoration(
      //     color: Colors.amber,
      //     border: Border.all(color: Colors.black, width: 6),
      //   ),
      // ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 100, width: 100,child: Image.network("https://avatars.githubusercontent.com/u/45362238?v=4"),),
          Container(height: 100, width: 100,child: Image.network("https://avatars.githubusercontent.com/u/45362238?v=4"),),
          Container(height: 100, width: 100,child: Image.network("https://avatars.githubusercontent.com/u/45362238?v=4"),),
      ],),
    );
  }
}