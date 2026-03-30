import 'package:flutter/material.dart';
import 'package:todo_list_app/models/task.dart';
import 'package:todo_list_app/widgets/taskItem.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Task> _tasks =[];
  TextEditingController _taskController = TextEditingController();


  void _addTask(){
    if(_taskController.text.isNotEmpty){
      setState(() {
        _tasks.add(
          Task(id: DateTime.now().toString(), title: _taskController.text),
        );
        _taskController.clear();
      });
    }
  }

  void _deleteTask(String id){
    setState(() {
      _tasks.removeWhere((task)=>task.id == id);
    });
  }
  void _toggleTask(String id, bool? value){
    setState(() {
      final task = _tasks.firstWhere((task) => task.id == id);
      task.isComplete = value ?? false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple To-do List"),elevation: 0,backgroundColor: Colors.blue,foregroundColor: Colors.white,centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(child: TextField(
                  controller: _taskController,
                  decoration: InputDecoration(
                    hintText: "Write your task...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[100],
                    contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  ),
                  onSubmitted: (_) => _addTask(),
                )),
                SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(onPressed: _addTask, icon: Icon(Icons.add,color: Colors.white,)),
                ),
              ],
            ),
          ),
          Expanded(
              child: _tasks.isEmpty ? emptyTask() : taskListView(),
          ),


        ],
      ),
    );
  }

  Widget emptyTask(){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.task_alt,size: 80,color: Colors.grey[400],),
          SizedBox(height: 10,),
          Text("No tasks yet",style: TextStyle(fontSize: 18,color: Colors.grey),),
          Text("Add a task to get started!",style: TextStyle(fontSize: 14,color: Colors.grey),),
        ],
      ),
    );
  }
  Widget taskListView(){
    return ListView.builder(
      itemCount: _tasks.length,
        itemBuilder: (context,index){
        final task = _tasks[index];
          return Taskitem(
              task: task,
              onDelete: ()=> _deleteTask(task.id),
              onToggle: (value) => _toggleTask(task.id, value),
          );
        }
    );
  }


}
