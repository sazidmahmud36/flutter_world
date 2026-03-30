import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(padding: const EdgeInsets.fromLTRB(5, 0, 5, 0), child: Chip(label: Text("All",style: TextStyle(color: Colors.white),),backgroundColor: Colors.red,),),
            chip_widget(category: 'Combos',),
            chip_widget(category: 'Sliders',),
            chip_widget(category: 'Classic',),
            chip_widget(category: 'Trending',),
            chip_widget(category: 'Recent',),
            chip_widget(category: 'Favorites',),
          ],
        ),
      ),
    );
  }
}

class chip_widget extends StatelessWidget {
  final String category;
  const chip_widget({
    required this.category,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.fromLTRB(5, 0, 5, 0), child: Chip(label: Text("$category",style: TextStyle(color: Colors.black),),backgroundColor: Colors.grey.shade100,),);
  }
}
