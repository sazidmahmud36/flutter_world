import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {


  HeaderWidget({super.key, required this.device});
  String? device;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      child: Text("$device View Dash Board",style: TextStyle(color: Colors.black,fontSize: 20),),
      color: Colors.lightBlueAccent,
    );
  }
}
