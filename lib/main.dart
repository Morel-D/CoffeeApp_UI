import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

void main() {
  runApp(const MaterialApp(
    home: Coffee(),
  ));
}

class Coffee extends StatelessWidget {
  const Coffee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 450,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/coffee.jpeg'),
              ),
              borderRadius: BorderRadius.circular(22)
            ),

            child: Column(
              children: [
                SizedBox(height: 60,),
                Row(
                  children: [
                    SizedBox(width: 7,),
                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(7),
                      ),
                        child:Icon(Icons.arrow_back, color: Colors.white,)
                      ),
                    SizedBox(width: 12,),
                    Text("CHRONOS COFFEE", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 17),),
                    SizedBox(width: 100),
                    Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child:Icon(Icons.catching_pokemon_sharp, color: Colors.white,)
                    ),
                  ],
                ),
                SizedBox(height: 231,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 16.0, sigmaY: 19.0),
                        child: Container(
                          color: Colors.black54.withOpacity(0.2),
                          padding: EdgeInsets.all(20),
                          width: 420,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text("Cappuccino",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22
                              ),
                              ),
                              Text("Milk Coffee",
                              style: TextStyle(color: Colors.grey.withOpacity(0.7)),),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.orangeAccent,),
                                  Icon(Icons.star, color: Colors.orangeAccent,),
                                  Icon(Icons.star, color: Colors.orangeAccent,),

                                  Text(" 3.9",
                                  style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          Container
            (  
            padding: EdgeInsets.all(15),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Description", style:
                  TextStyle(color: Colors.grey,
                    fontSize: 20
                  ),
                  ),
                  SizedBox(height: 17),
                  Text("A perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elements into equal thirds. An expertly made cappuccino should be rich, but not acidic and have a mildly sweet flavouring from the milk.",
                    style: TextStyle(color: Colors.white70),),
                  SizedBox(height: 22),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.orangeAccent.withOpacity(0.8), width: 1)
                        ),
                        child: Text('S', style: TextStyle(color: Colors.orangeAccent),)
                      ),
                      SizedBox(width: 15),
                      Container(
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.withOpacity(0.5)
                          ),
                          child: Text('M', style: TextStyle(color: Colors.orangeAccent),)
                      ),
                      SizedBox(width: 15),
                      Container(
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.withOpacity(0.5),
                          ),
                          child: Text('L', style: TextStyle(color: Colors.orangeAccent),)
                      ),
                    ],
                  ),

                  SizedBox(height: 40),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('Price', style: TextStyle(color: Colors.grey),),
                          Row(
                            children: [
                              Text("500 ", style: TextStyle(color: Colors.white, fontSize: 17)),
                              Text("FCFA", style: TextStyle(color: Colors.orangeAccent, fontSize: 20, fontWeight: FontWeight.bold),),

                            ],
                          )
                        ],
                      ),
                      SizedBox(width: 80,),
                      TextButton(
                        onPressed: (){}, child: Text('Buy Now', style: TextStyle(color: Colors.white),),
                        style: TextButton.styleFrom(backgroundColor: Colors.orangeAccent, padding: EdgeInsets.fromLTRB(50, 17, 50, 17)),)
                    ],
                  )
                ],
              )
          )

        ],
      ),
        );
  }
}


