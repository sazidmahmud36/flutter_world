import 'package:flutter/material.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  int counter = 0;

  void increament(){
    setState(() {
      counter = counter + 1;
    });
  }

  void decrement(){
    setState(() {
      counter = counter - 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("State Management"),),
      body: Column(
        children: [
          Center(
            child: Text("$counter",style: TextStyle(color: Colors.black, fontSize: 32),),
          ),
          Center(
            child: Row(
              children: [
                ElevatedButton(onPressed: (){
                  increament();
                }, child: Text("Add")),
                ElevatedButton(onPressed: (){
                  decrement();
                }, child: Text("Sub")),
              ],
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: (){
      //       setState(() {
      //         counter = counter+1;
      //       });
      //     },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
