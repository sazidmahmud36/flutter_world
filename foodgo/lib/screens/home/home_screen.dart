import 'package:flutter/material.dart';
import 'package:foodgo/screens/home/home_widgets/home_gridView.dart';
import 'home_widgets/chip_widget.dart';
import 'home_widgets/home_custom_appbar.dart';
import 'home_widgets/search_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          HomeCustomAppbar(),
          SearchBox(),
          ChipWidget(),
          HomeGridview(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        tooltip: 'Add New Item',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.home, color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.person,color: Colors.white)),
            IconButton(onPressed: (){}, icon: Icon(Icons.message,color: Colors.white)),
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.white)),
          ],
        ),
      ),

    );
  }
}
