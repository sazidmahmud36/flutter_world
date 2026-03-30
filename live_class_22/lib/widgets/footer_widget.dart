import 'package:flutter/material.dart';

class footer_widget extends StatelessWidget {
  const footer_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Text("@2026 company"),
    );
  }
}