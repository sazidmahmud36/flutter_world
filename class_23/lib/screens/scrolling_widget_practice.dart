import 'package:flutter/material.dart';

class ScrollingWidgetPractice extends StatelessWidget {
  const ScrollingWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scrolling Widget Practice"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index){
              return Padding(
                  padding: EdgeInsetsGeometry.all(10),
                child: Container(
                  color: index % 2 == 0 ? Colors.red : Colors.purple,
                  height: 200,
                  width: 100,
                  child: Center(
                      child: Text("${index+1}",style: TextStyle(fontSize: 30,color: Colors.white),
                      )
                  ),
                )
              );
            }
        ),
      ),
    );
  }
}
