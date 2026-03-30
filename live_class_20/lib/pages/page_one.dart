import 'package:flutter/material.dart';
import 'package:live_class_20/pages/page_two.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Text("Page One"),backgroundColor: Theme.of(context).colorScheme.inversePrimary,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You are in page one!"),
            ElevatedButton(onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context){
              //   return PageTwo();
              // }));
              Navigator.pushNamed(context, '/pageTwo', arguments: {
                'name': "Sazid",
                'age': 28
              });
              // print("Print from page one");
            }, child: Text("Page Two"))
          ],
        ),
      ),
    );
  }
}
