import 'package:flutter/material.dart';


class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final name = args["name"];
    final age = args["age"];

    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(title: Text("Page Two"),backgroundColor: Theme.of(context).colorScheme.inversePrimary,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              // Navigator.popUntil(context, (route)=> route.settings.name == '/pageOne');
              Navigator.pop(context);
              print("pop called");
            }, child: Text("Page One")),

            Text("$name"),
            Text("$age"),


            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/pageThree");
            }, child: Text("Page Three")),
          ],
        ),
      ),
    );
  }
}
