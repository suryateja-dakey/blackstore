// ignore_for_file: prefer_const_constructors, unnecessary_import, unused_label

import 'package:black_store/Homes/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Detail extends StatefulWidget {
  String? x, y, z;
  Detail({this.x, this.y, this.z});
  @override
  State<Detail> createState() => DetailState();
}

class DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    var q=widget.z!;
    return Scaffold(
        backgroundColor: Color.fromARGB(201, 17, 14, 18),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Center(child: Image.asset(widget.x!)),
                ),
                SizedBox(
                    height: 1 + 1,
                    child: Container(
                      color: Colors.white,
                    )),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        widget.y!,
                        style: TextStyle(fontSize: 19 + 6, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 19 + 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          size: 50,
                          color: Color.fromARGB(255, 243, 243, 243),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Special offer",
                      style: TextStyle(
                          fontSize: 19 + 6,
                          color: Color.fromARGB(255, 47, 255, 0))),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("₹$q",
                      style: TextStyle(fontSize: 45, color: Colors.white)),
                ),

                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "Rating",
                    style: TextStyle(fontSize: 15 + 15, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Color.fromARGB(134, 125, 116, 116),
                    child: RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 25,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.keyboard_return,
                        size: 30,
                        color: Color.fromARGB(255, 58, 117, 0),
                      ),
                      Text("10 days replacement policy",
                          style:
                              TextStyle(fontSize: 19 + 3, color: Colors.white)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.money_sharp,
                        size: 30,
                        color: Color.fromARGB(255, 63, 158, 0),
                      ),
                      Text(" Cash on delevery avaiiable",
                          style: TextStyle(fontSize: 19, color: Colors.white)),
                    ],
                  ),
                ),
                Container(
                    color: Color.fromARGB(255, 180, 118, 195),
                    child: Center(
                        child: TextButton.icon(
                            onPressed: () {
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cartt(
                                      f: false,
                                      d: '1',
                                        a: widget.x, b: widget.y, c: widget.z)),
                              );
                            },
                            icon: Icon(
                              Icons.shopping_cart_sharp,
                              size: 39,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            label: Text(
                              "Add to Cart",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 19 + 5),
                            )))),
                // TextButton.icon(onPressed: (){}, icon:Icon( Icons.shopping_cart_sharp), label: Text("label"))
              ],
            ),
          ),
        ));
  }
}
