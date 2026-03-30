import 'package:flutter/material.dart';
import 'package:live_class_20/pages/page_four.dart';
import 'package:live_class_20/pages/page_two.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title: Text("Page Three"),backgroundColor: Theme.of(context).colorScheme.inversePrimary,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context){
              //   return PageTwo();
              // }));
              // print("Print from page one");
              Navigator.popUntil(context, (route)=> route.settings.name == '/pageTwo');
            }, child: Text("Page Two")),
            Text("You are in page Three!"),
            ElevatedButton(onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context){
              //   return PageFour();
              // }));
              // print("Print from page one");

              Navigator.pushNamed(context, '/pageFour');
            }, child: Text("Page Four"))
          ],
        ),
      ),
    );
  }
}
