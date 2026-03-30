import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String input = "";
  String result = "0";

  final buttons = [
    "AC","±","%","÷",
    "7","8","9","x",
    "4","5","6","-",
    "1","2","3","+",
    "0",".","=",
  ];
  void onClickButton(String value){
    if(value == "AC"){
      setState(() {
        input = "";
        result = "0";
      });
      return;
    }
    if(value == "="){
      calculateResult();
    }
    setState(() {
      input += value;
    });

  }
  void calculateResult(){
    try{
      String expression = input.replaceAll('÷', '/').replaceAll('x', '*');

      Parser parser = Parser();
      Expression exp = parser.parse(expression);

      ContextModel contextModel = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, contextModel);

      setState(() {
        result = eval.toString();
      });



    }catch (e){
      setState(() {
        result = "Error";
      });
    }

  }

  Widget buildButton(String text){
    return GestureDetector(
      onTap: (){onClickButton(text);},
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(text,style: TextStyle(fontSize: 22,color: Colors.white),),

        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: Text("To Do App"),),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("$input",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
                    SizedBox(height: 10,),
                    Text("$result", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
          ),
          // Buttons
          Expanded(
            flex: 4,
            child: GridView.builder(
              itemCount: buttons.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (context, index){
                return buildButton(buttons[index]);
              },


            ),
          ),
        ],
      ),
    );
  }
}
