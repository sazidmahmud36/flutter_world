import 'package:flutter/material.dart';

import '../../details/details_screen.dart';

class HomeGridview extends StatefulWidget {
  const HomeGridview({super.key});

  @override
  State<HomeGridview> createState() => _HomeGridviewState();
}

class _HomeGridviewState extends State<HomeGridview> {
  final List<Map<String, dynamic>> items = [
    {
      "name":"Cheeseburger",
      "subtitle":"Wendy's Burger",
      "rating":"4.9",
      "image":"lib/images/img_wendy's.png",
      "fav":false,
      "price": "8.24",
      "description" : "The Cheeseburger Wendy's Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles.",
      "duration": "26 mins",
    },
    {
      "name":"Hamburger",
      "subtitle":"Veggie Burger",
      "rating":"4.9",
      "image":"lib/images/img_veggie.png",
      "fav":false,
      "price": "9.99",
      "description" : "Enjoy our delicious Hamburger Veggie Burger, made with a savory blend of fresh vegetables and herbs, topped with crisp lettuce, juicy tomatoes, and tangy pickles, all served on a soft, toasted bun.",
      "duration": "14 mins",
    },
    {
      "name":"Hamburger",
      "subtitle":"Chicken Burger",
      "rating":"4.6",
      "image":"lib/images/img_chicken.png",
      "fav":false,
      "price": "12.48",
      "description" : "Our chicken burger is a delicious and healthier alternative to traditional beef burgers, perfect for those looking for a lighter meal option. Try it today and experience the mouth-watering flavors of our Hamburger Chicken Burger!",
      "duration": "33 mins",
    },
    {
      "name":"Hamburger",
      "subtitle":"Fried Chicken Burger",
      "rating":"4.8",
      "image":"lib/images/img_fried_chicken.png",
      "fav":false,
      "price": "14.99",
      "description" : "Indulge in our crispy and savory Fried Chicken Burger, made with a juicy chicken patty, hand-breaded and deep-fried to perfection, served on a warm bun with lettuce, tomato, and a creamy sauce.",
      "duration": "21 mins",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          padding: EdgeInsets.all(12),
          physics: BouncingScrollPhysics(),
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.80,
          ),
          itemBuilder: (context, index){
            final singleItem = items[index];
            favourite_item(int index){
              setState(() {
                items[index]["fav"] = !items[index]["fav"];
              });
            }
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => DetailsScreen(item: singleItem),
                )
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 10,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Image.asset(items[index]["image"],height: 100, fit: BoxFit.contain,)),
                      SizedBox(height: 10,),
                      Text("${items[index]["name"]}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey.shade900),),
                      Text("${items[index]["subtitle"]}", ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 80,
                            child: Row(
                              children: [
                                Icon(Icons.star,size: 18,color: Colors.amber,),
                                SizedBox(width: 5,),
                                Text("${items[index]["rating"]}"),
                              ],
                            ),
                          ),
                          // Expanded(flex: 20, child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite))),
                          Expanded(
                            flex: 20,
                            child: GestureDetector(
                              onTap: (){
                                // print("${items[index]["name"]} tapped");
                                favourite_item(index);
                              },
                              child: Icon(
                                items[index]["fav"]? Icons.favorite: Icons.favorite_outline,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
