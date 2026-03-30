import 'package:flutter/material.dart';

class card_item_widget extends StatelessWidget {
  int? index;
  card_item_widget({
    super.key,
    required this.index,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      color: Colors.grey,
      child: Center(child: Text("Item ${index!+1}"),),
    );
  }
}