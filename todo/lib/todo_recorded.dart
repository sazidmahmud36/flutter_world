  import 'package:flutter/material.dart';
  import 'package:todo/style.dart';

  class TodoRecorded extends StatefulWidget {
    const TodoRecorded({super.key});

    @override
    State<TodoRecorded> createState() => _TodoRecordedState();
  }

  class _TodoRecordedState extends State<TodoRecorded> {
    List todoList = [];
    String item = "";


    MyInputOnChange(content){
      setState(() {
        item = content;
      });
    }

    addItem(){
      setState(() {
        todoList.add({'item': item});
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("To Do"),centerTitle: true,),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(flex: 70, child: TextFormField(onChanged:(content){MyInputOnChange(content);} ,decoration: AppInputDecoration("List Item"),)),
                    Expanded(flex: 30, child: ElevatedButton(onPressed: (){addItem();}, child: Text("Add"),style: AppButtonStyle(),)),
                  ],
                ),
              ),
              Expanded(
                flex: 90,
                  child: ListView.builder(
                    itemCount: todoList.length,
                      itemBuilder: (context, index){
                        return Card(
                          child: sizedBox50(
                            Row(
                              children: [
                                Expanded(flex: 80, child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(item),
                                )),
                                Expanded(flex: 20, child: IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.green,),)),
                              ],
                            )
                          ),
                        );
                      }
                  ),
              ),
            ],
          ),
        ),
      );
    }
  }
