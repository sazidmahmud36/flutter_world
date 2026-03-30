import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // ===== AlertDialog =====
    void showAlertDialog(BuildContext context){
        showDialog(
            context: context,
            builder: (context)=>AlertDialog(
              title: Text("Do you want to delete?"),
              content: Text("Once Delete can't get back"),
              actions: [
                TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Cancel")),
                TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Delete")),
              ],
            )
        );
    }

    // ===== SimpleDialog =====
    void showSimpleDialog(BuildContext context){
      showDialog  (
          context: context,
          builder: (context)=>SimpleDialog(
            title: Text("Where are you from?"),
            children: [
              SimpleDialogOption(
                onPressed: ()=>Navigator.pop(context),
                child: Text("Dhaka"),
              ),
              SimpleDialogOption(
                onPressed: ()=>Navigator.pop(context),
                child: Text("London"),
              ),
            ],
          )
      );
    }

    // ===== SnackBar =====
    void showSnackbar(BuildContext context){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Deleted Successfully!"),
          behavior: SnackBarBehavior.floating,

        )
      );
    }

    // ===== Bottom Sheet =====

    void showBottomSheet(BuildContext context){
      showModalBottomSheet(
          context: context,
          builder: (context)=>Container(
            padding: EdgeInsets.all(20),
          ),
      );
    }



    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Dialogue"), centerTitle: true, elevation: 4),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){showAlertDialog(context);}, child: Text("Alert Dialog")),
            ElevatedButton(onPressed: (){showSimpleDialog(context);}, child: Text("Simple Dialog")),
            ElevatedButton(onPressed: (){showSnackbar(context);}, child: Text("Show Snackbar")),
            ElevatedButton(onPressed: (){showBottomSheet(context);}, child: Text("Show Bottom sheet")),
          ],
        ),
      )
    );
  }
}