import 'package:flutter/material.dart';

import '../models/quotes.dart';

class Quotegeneratorpage extends StatefulWidget {
  const Quotegeneratorpage({super.key});

  @override
  State<Quotegeneratorpage> createState() => _QuotegeneratorpageState();
}

class _QuotegeneratorpageState extends State<Quotegeneratorpage> {
  late Quotes currentQuote;
  @override
  void initState() {
    super.initState();
    currentQuote = quotes[0];
  }

  void generateRandomQuote(){
    setState(() {
      int randomIndex = DateTime.now().millisecondsSinceEpoch % quotes.length;
      currentQuote = quotes[randomIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("উক্তি চিন্তা", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),
        centerTitle: true,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue.shade700, Colors.purple.shade700],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue.shade50,Colors.purple.shade50]),
        ),
        child: Card(
          elevation: 12,
          shadowColor: Colors.blue.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.white, Color(0xFFF5F5F5F)],
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.format_quote_rounded,size: 40,color: Colors.blue.shade200,),
                    Icon(Icons.format_quote_rounded,size: 40,color: Colors.blue.shade200,),
                  ],
                ),
                SizedBox(height: 16,),
                Text(
                  currentQuote.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                    height: 1.6,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 24,),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text("- ${currentQuote.author}",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue.shade800,
                  ),),
                ),
                SizedBox(height: 48,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(colors:[Colors.blue.shade700,Colors.purple.shade700]),
                    boxShadow: [BoxShadow(color: Colors.blue.shade200,blurRadius: 15, offset:Offset(0, 5))],
                  ),
                  child: ElevatedButton(
                      onPressed: generateRandomQuote,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.auto_awesome_rounded,size: 24,color: Colors.white,),
                          SizedBox(width: 12,),
                          Text("নতুন উক্তি দেখুন",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      )
                  ),
                ),
                SizedBox(height: 30,),
                Text("প্রতিদিন নতুন প্রেরণা",style: TextStyle(color: Colors.grey.shade600,fontSize: 14),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
