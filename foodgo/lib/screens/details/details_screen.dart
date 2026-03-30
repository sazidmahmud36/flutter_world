import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final Map<String, dynamic> item;
  const DetailsScreen({super.key, required this.item});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  @override
  void initState() {
    super.initState();
    totalCalculatedPrice = double.parse(widget.item["price"]);
  }

  double spicyLevel = 1;
  int itemCount = 1;
  double totalCalculatedPrice = 0;


  void calculatePrice(){
    double price = double.parse(widget.item["price"]);
    totalCalculatedPrice = price*itemCount;
  }


  void itemCountremove(){
    setState(() {
      if(itemCount > 1){
        itemCount--;
        calculatePrice();
      }
    });
  }
  void itemCountadd(){
    setState(() {
      itemCount++;
      calculatePrice();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: (){
        // print("Searchbutton Pressed");
      }, icon: Icon(Icons.search))],),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(child: Image.asset(widget.item["image"],height: 300,fit: BoxFit.contain,)),
            Text("${widget.item["name"]} ${widget.item["subtitle"]}", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
            Row(
              children: [
                Icon(Icons.star,color: Colors.amber,size: 20,),
                SizedBox(width: 5,),
                Text("${widget.item["rating"]} - ${widget.item["duration"]}",style: TextStyle(color: Colors.grey),),
              ],
            ),
            Text("${widget.item["description"]}", style: TextStyle(fontSize: 18,color: Colors.grey.shade700),),
            Row(
              children: [
                Expanded(flex: 45, child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Spicy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    Slider(
                        value: spicyLevel,
                        min: 0,
                        max: 100,
                        divisions: 100,
                        activeColor: Colors.red,
                        inactiveColor: Colors.grey,

                        onChanged: (value){
                          setState(() {
                            spicyLevel = value;
                            // print(value);
                          });
                        }
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Mild", style: TextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.bold)),
                        Text("Hot", style: TextStyle(fontSize: 12, color: Colors.red, fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                )),
                SizedBox(width: 10,),
                Expanded(flex: 45 , child: Column(
                  children: [
                    Text("Portion"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(onPressed: (){
                              // print("Remove clicked");
                              itemCountremove();
                            }, icon: Icon(Icons.remove,),color: Colors.white,),
                          ),
                        ),
                        Text("${itemCount}"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(onPressed: (){
                              // print("add clicked");
                              itemCountadd();
                            }, icon: Icon(Icons.add), color: Colors.white,),
                          ),
                        ),
                        
                      ],
                    )
                  ],
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                        blurRadius: 12,
                        spreadRadius: 0.1,
                      ),
                    ]
                  ),
                  child: Center(child: Text("\$ ${totalCalculatedPrice.toStringAsFixed(2)}",style: TextStyle(fontSize: 22,color: Colors.white),)),
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: Text("Order Now"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    elevation: 10,
                    side: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}
