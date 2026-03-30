import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Screen"),),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsetsGeometry.all(8.0),
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          Padding(
              padding: EdgeInsetsGeometry.all(8.0),
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
