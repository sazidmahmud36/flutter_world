import 'package:flutter/material.dart';
import 'package:live_class_20/pages/page_three.dart';
import 'package:live_class_20/pages/page_two.dart';

class PageFour extends StatefulWidget {
  const PageFour({super.key});

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(title: Text("Page Two"),backgroundColor: Theme.of(context).colorScheme.inversePrimary,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return PageThree();
              }));
            }, child: Text("Page Three")),


            Text("You are in page Four!"),

            ElevatedButton(onPressed: (){
              // Navigator.popUntil(context, (route) => route.settings.name  == '/pageTwo');
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => PageTwo()), (route)=>false);


            }, child: Text("Page Two")),
          ],
        ),
      ),
    );
  }
}
