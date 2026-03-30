import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodgo/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_)=> HomeScreen())
      );
    });
  }

  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: SystemUiOverlay.values
    );
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        // color: Colors.green,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red.shade300,Color(0xFFFF0021)],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children: [
            Expanded(flex: 70, child: Center(child: Image.asset("lib/images/Foodgo.png"))),
            Expanded(flex: 30, child: Container(alignment: Alignment.bottomLeft,child: Image.asset("lib/images/burger.png"))),
          ],
        ),
      ),
    );
  }
}
