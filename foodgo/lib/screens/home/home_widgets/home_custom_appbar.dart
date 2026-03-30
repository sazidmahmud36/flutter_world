import 'package:flutter/material.dart';

class HomeCustomAppbar extends StatelessWidget {
  const HomeCustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),

      child: SafeArea(
        bottom: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Image.asset("lib/images/foodgoBlack.png"),
              Text("Order your favourite food!",style: TextStyle(fontSize: 15,),),
            ],),
            CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage("lib/images/user_image.png"),
            ),
            // Image.asset("lib/images/user_image.png"),
          ],
        ),
      ),
    );
  }
}
