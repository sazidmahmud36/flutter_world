import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {

  final List<TodoTask> todoList = [];
  final TextEditingController _todoController = TextEditingController();

  void addTodo(){
    // if (_todoController.text.toString().isEmpty){
    //   return ;
    // }
    setState(() {
      todoList.add(TodoTask(title: _todoController.text.toString().trim(), subTitle: "Todo Number:"));
      _todoController.clear();
    });
  }
  void deleteTodo(int index){
    setState(() {
      todoList.removeAt(index);
    });
  }

  void toggleDone(int index){
    setState(() {
      todoList[index].isDone = !todoList[index].isDone!;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: Text("To Do App"),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _todoController,
                    decoration: InputDecoration(
                      hint: Text("Add todo..."),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),

                  ),
                ),
                SizedBox(width: 8,),
                ElevatedButton(onPressed: (){
                  if(_todoController.text.toString().isEmpty){
                    return;
                  }else{
                    addTodo();
                  }


                }, child: Text("Add")),
              ],
            ),
          ),
          Expanded(
            child: todoList.isEmpty? Center(child: Text("No Data Found")) :  ListView.builder(
              itemCount: todoList.length,
              itemBuilder: (context,index) => Card(
                child: Dismissible(
                  key: Key(todoList[index].title.toString()+index.toString()),
                  child: ListTile(
                    title: Text("${todoList[index].title}", style: TextStyle(decoration: todoList[index].isDone! ? TextDecoration.lineThrough : TextDecoration.none),),
                    subtitle: Text("To do: ${index+1}"),
                    // trailing: Checkbox(value: false, onChanged: (value){}),
                    leading: Checkbox(value: todoList[index].isDone, onChanged: (value){
                      toggleDone(index);
                    }),
                  ),
                  onDismissed: (_)=> deleteTodo(index),
                ),
              ),
              physics: BouncingScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}


class TodoTask{
  String? title;
  String? subTitle;
  bool? isDone;

  TodoTask({required this.title, this.isDone = false, required this.subTitle});


}
