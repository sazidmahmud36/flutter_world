import 'package:flutter/material.dart';

TextStyle headline(context){
  var width = MediaQuery.of(context).size.width;
  if(width < 700){
    //mobile device
    return TextStyle(
      color: Colors.black54,
      fontSize: 34,
    );
  }else{
    //deskto device
    return TextStyle(
      color: Colors.red,
      fontSize: 65,
    );

  }


}