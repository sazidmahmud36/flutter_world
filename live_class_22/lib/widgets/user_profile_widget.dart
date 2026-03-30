import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Icon(CupertinoIcons.profile_circled),),
      title: Text("Sazid Mahmud"),
      subtitle: Text("Flutter Developer"),
    );
  }
}
