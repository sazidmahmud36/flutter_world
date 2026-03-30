import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _increament(){
    setState(() {
      _counter++;
    });
  }
  void _decrement(){
    setState(() {
      _counter--;
    });
  }
  void _reset(){
    setState(() {
      _counter = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter"),centerTitle: true,backgroundColor: Colors.amber,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("বর্তমান কাউন্টার ভ্যালু:",style: TextStyle(fontSize: 20),),
            Text("$_counter",style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold,color: Colors.blue),),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){_increament();},
                    child: Icon(Icons.add,size: 30, color: Colors.white,),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.all(20),
                  ),
                ),
                ElevatedButton(
                    onPressed: (){_reset();},
                    child: Icon(Icons.lock_reset_sharp,size: 30, color: Colors.white,),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.all(20),
                  ),
                ),
                ElevatedButton(
                    onPressed: (){_decrement();},
                    child: Icon(Icons.remove,size: 30, color: Colors.white,),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.all(20),
                  ),
                ),
              ],
            )
          ],
        ),
      ),

    );
  }
}
