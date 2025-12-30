import 'dart:ffi';

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
   HomeActivity({super.key});

  var MyItems = [
    {"img": "https://wallpapers-clan.com/wp-content/uploads/2025/03/watching-awesome-sunset-with-friends-laptop-wallpaper-preview.jpg", "title":"Soak in the soft"},
    {"img": "https://wallpapers-clan.com/wp-content/uploads/2024/07/brown-sunset-mountain-forest-desktop-wallpaper-preview.jpg", "title":"sunset"},
    {"img": "https://wallpapers-clan.com/wp-content/uploads/2024/06/meditation-mountain-top-serenity-sunset-desktop-wallpaper-preview.jpg", "title":"meditation"},
    {"img": "https://wallpapers-clan.com/wp-content/uploads/2025/04/los-angeles-sunset-palm-trees-desktop-wallpaper-preview.jpg", "title":"Golden Los Angeles"},
    {"img": "https://wallpapers-clan.com/wp-content/uploads/2024/07/aesthetic-lakeside-sunset-desktop-wallpaper-preview.jpg", "title":"lakeside "},
    {"img": "https://wallpapers-clan.com/wp-content/uploads/2025/05/sunset-summer-neighborhood-laptop-wallpaper-preview.jpg", "title":"neighborhood"},
    {"img": "https://wallpapers-clan.com/wp-content/uploads/2025/05/sunset-temple-artistic-background-desktop-wallpaper-preview.jpg", "title":"temple scene"},
    {"img": "https://wallpapers-clan.com/wp-content/uploads/2025/03/golden-sunset-over-misty-mountains-desktop-wallpaper-preview.jpg", "title":"mountains"},
    {"img": "https://wallpapers-clan.com/wp-content/uploads/2025/04/surfer-sunset-beach-desktop-wallpaper-preview.jpg", "title":"Surfing"},
    {"img": "https://wallpapers-clan.com/wp-content/uploads/2024/07/beautiful-landscape-desktop-wallpaper-preview.jpg", "title":"breathtaking"},
    {"img": "https://wallpapers-clan.com/wp-content/uploads/2024/05/blue-hills-sunset-minimalist-desktop-wallpaper-preview.jpg", "title":"Blue Hills"},
  ];

  mySnackBar(msg, context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
  // longTapAlert(){
  //   return showDialog(context: context, builder: (BuildContext context){
  //     return Expanded(child: AlertDialog(
  //       title: Text("Please Confirm!"),
  //       content: Text("Do you want to delete?"),
  //       actions: [
  //         TextButton(onPressed: (){}, child: Text("Yes")),
  //         TextButton(onPressed: (){}, child: Text("no")),
  //       ],
  //
  //     ));
  //   });
  // }

   void longTapAlert(BuildContext context){
      showDialog(context: context, builder: (BuildContext context){
        return Expanded(child: AlertDialog(
          title: Text("Please Confirm"),
          content: Text("Do you want to delete?"),
          actions: [
            TextButton(onPressed: (){
              mySnackBar("Delete command successful!", context);
              Navigator.of(context).pop();
              },child: Text("Yes")),
            TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
          ],
        ));
      });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic ListView"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: MyItems.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){mySnackBar(MyItems[index]['title'], context);},
            // onDoubleTap: (){mySnackBar(MyItems[index].toString(), context);},
            onLongPress: (){longTapAlert(context);},
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              child: Image.network(MyItems[index]['img']!,fit: BoxFit.fill,),
            ),
          );
        },
      )
    );
  }

}