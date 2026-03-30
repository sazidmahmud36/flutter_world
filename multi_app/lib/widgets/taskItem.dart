
import 'package:flutter/material.dart';

import '../models/task.dart';

class Taskitem extends StatelessWidget {
  final Task task;
  final VoidCallback onDelete;
  final Function(bool?) onToggle;


  Taskitem({
    Key? key,
    required this.task,
    required this.onDelete,
    required this.onToggle
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0,3),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        leading: Checkbox(
          value: task.isComplete,
          onChanged: onToggle,
          activeColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        title: Text(task.title,style: TextStyle(
          decoration: task.isComplete ? TextDecoration.lineThrough : null,
          color: task.isComplete ? Colors.grey : Colors.black,
          fontWeight: FontWeight.w500,
        ),),
        trailing: IconButton(onPressed: onDelete, icon: Icon(Icons.delete_outline, color: Colors.red,)),
      ),
    );
  }
}
