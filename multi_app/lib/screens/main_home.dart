import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),elevation: 0,backgroundColor: Colors.blue,foregroundColor: Colors.white,centerTitle: true,),
      drawer: drawer_widget(),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/counter');
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.pin, size: 40, color: Colors.white),
                  SizedBox(height: 10),
                  Text("Counter",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/todo');
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.edit_note, size: 40, color: Colors.white),
                  SizedBox(height: 10),
                  Text("Todo",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/quotes');
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.format_quote, size: 40, color: Colors.white),
                  SizedBox(height: 10),
                  Text("Quotes",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/courses');
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.book, size: 40, color: Colors.white),
                  SizedBox(height: 10),
                  Text("Courses",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/faq');
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.question_mark, size: 40, color: Colors.white),
                  SizedBox(height: 10),
                  Text("FAQ",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/darkmode');
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shield_moon, size: 40, color: Colors.white),
                  SizedBox(height: 10),
                  Text("Night Mode",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/colorshade');
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.color_lens, size: 40, color: Colors.white),
                  SizedBox(height: 10),
                  Text("Color",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
          ),

        ],
      ),

    );
  }
}
