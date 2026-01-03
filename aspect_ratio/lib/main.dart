import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Aspect Ratio"),backgroundColor: Colors.pink,foregroundColor: Colors.white,),
      // ==================== AspectRatio ==================

      // body: Container(
      //   width: double.infinity,
      //   height: 300,
      //   color: Colors.red,
      //   alignment: Alignment.center,
      //   child: AspectRatio(
      //     aspectRatio: 16/9,
      //     child: Container(
      //       color: Colors.green,
      //     ),
      //   ),
      // ),

      // ==================== FractionallySizedBox ==================

      // body: Center(
      //   child: FractionallySizedBox(
      //     widthFactor: 0.5,
      //     heightFactor: 0.5,
      //     child: Container(
      //       color: Colors.green,
      //     ),
      //   ),
      // ),


      // ==================== Layout Builder ==================

      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constrains){
        if(constrains.maxWidth > 600){
          return Container(
            height: 400,
            width: 400,
            color: Colors.green,
          );
        }else{
          return Container(
            height: 200,
            width: 200,
            color: Colors.red,
          );
        }
      }),



    );
  }

}