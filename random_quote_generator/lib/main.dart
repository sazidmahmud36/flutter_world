import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_quote_generator/screens/QuoteGeneratorPage.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "র‍্যান্ডম কোট জেনেরেটর",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: Quotegeneratorpage(),
    );
  }

}