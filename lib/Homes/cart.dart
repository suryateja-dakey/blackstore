// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_element, dead_code

import 'dart:ui';

import 'package:black_store/Homes/Homescreen.dart';
import 'package:black_store/checkoutscreen.dart';
import 'package:black_store/details.dart';
import 'package:black_store/mensscreen.dart';
import 'package:black_store/navigate.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class Cartt extends StatefulWidget {
  // const Cartt({super.key});
  String? a, b, c, d;
  bool? bisFromMain;
  bool? f;
  Cartt({this.a, this.b, this.c, this.d, this.bisFromMain, this.f});

  @override
  State<Cartt> createState() => CarttState();
}

class CarttState extends State<Cartt> {
  //int quntity =3;
  bool showvalue = false;

  int price = 0;
  String cost = "";
  var tot;
  var tos;
  bool check = false;
  int count = 1;
  calc() {
    tot = 0;
    tos = 0;
    for (int i = 0; i < arrObects.length; i++) {
      var totalP =
          int.parse(arrObects[i]["price"]) * int.parse(arrObects[i]["qty"]);
      tos = tos + totalP;
    }
    for (int i = 0; i < arrObects.length; i++) {
      if (arrObects[i]["checker"] == true) {
        var totalPrice =
            int.parse(arrObects[i]["price"]) * int.parse(arrObects[i]["qty"]);
        tot = tot + totalPrice;
      }
    }

    setState(() {
      tot = tot;
    });
  }

  void add(int index) {
    var obj = arrObects[index];
    String i = obj['qty'];
    var j = int.parse(i);
    j++;
    arrObects[index]['qty'] = j.toString();

    setState(() {
      arrObects = arrObects;
    });
    //  cost=arrObects[index]["price"].toString();

    print(arrObects);
  }

  void minus(index) {
    var obj = arrObects[index];
    String i = obj['qty'];
    var j = int.parse(i);
    if (j > 0) {
      j--;
    } else {
      setState(() {
        arrObects
            .removeWhere((item) => item["title"] == arrObects[index]["title"]);
      });
    }

    arrObects[index]['qty'] = j.toString();

    setState(() {
      arrObects = arrObects;
    });
  }

  void checkBoxx(value, index) {
    setState(() {
      arrObects[index]["checker"] = value;
      showvalue = arrObects[index]["checker"];
      calc();
    });
  }

  @override
  void initState() {
    if (widget.bisFromMain == true) {
      calc();

      print(arrObects);
    } else {
      bool check = false;
      calc();

      if (arrObects.isEmpty == true) {
        arrObects.add({
          'image': widget.a,
          'title': widget.b,
          'price': widget.c,
          'qty': '1',
          'check': widget.f,
        });
      } else {
        print(arrObects.length);
        print('------66---');
        for (int num = 0;
            num < arrObects.length;
            num++) //for loop to print 1-10 numbers
        {
          if (arrObects[num]['title'] == widget.b) {
            int i = int.parse(arrObects[num]['qty'].toString());
            i++;
            arrObects[num]['qty'] = i.toString();
            print('-----uadating the existing the request----');
            print(i);
            check = true;
          }
        }

        if (check != true) {
          for (int num = 0; num < arrObects.length; num++) {
            print('-----78---');
            if (arrObects[num]['title'] != widget.b) {
              arrObects.add({
                'image': widget.a,
                'title': widget.b,
                'price': widget.c,
                'qty': '1',
                'checker': widget.f,
              });
            }

            return;

            print('-----addin the Data into array----');

            print(arrObects);
          }
        }
      }
    }

    // if (arrObects.contains(obj)) {
    //   print('having same object');
    // } else {
    //   print('--54--');
    // }

    //print(arrObects);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //  String s = widget.c!;
    // price = int.parse(s);

    return Scaffold(
      backgroundColor: Color.fromARGB(210, 0, 0, 0),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Nav()),
          );
        },
        backgroundColor: Color.fromARGB(255, 180, 118, 195),
        child: const Icon(
          Icons.home,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            SizedBox(
              height: 19,
            ),
            Center(
                child: Text(
              "Cart Items",
              style: TextStyle(
                  fontSize: 15 + 10,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )),
            Container(
              height: 570,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: arrObects.length,
                itemBuilder: (_, index) {
                  int p = int.parse(arrObects[index]["price"]);
                  int q = int.parse(arrObects[index]["qty"]);
                  int m = (p * q);
                  String t = m.toString();
                

                  print(t);
                  // tot=int.parse(arrObects[index]["price"])*int.parse(arrObects[index]["qty"]);

                  //   Text(int.parse(arrObects[index]["price"])*int.parse(arrObects[index]["qty"]).toInt().toString())

                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10 + 15),
                        color: Color.fromARGB(255, 180, 118, 195),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              arrObects[index]['image'],
                              width: 130,
                              height: 130,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                arrObects[index]['title'],
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 10 + 15),
                              ),
                              Text(
                                arrObects[index]['price'],
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 30),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        add(index);
                                        calc();
                                      },
                                      icon: Icon(
                                        Icons.add,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      )),
                                  Text(
                                    arrObects[index]['qty'],
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 10 + 8),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        minus(index);
                                        calc();
                                      },
                                      icon: Icon(
                                        Icons.remove,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      )),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Column(
                                    children: [
                                      TextButton.icon(
                                        onPressed: () {
                                          setState(() {
                                            arrObects.removeWhere((item) =>
                                                item["title"] ==
                                                arrObects[index]["title"]);
                                          });
                                        },
                                        icon: Icon(
                                          Icons.delete,
                                          color: Color.fromARGB(255, 202, 21, 8),
                                        ),
                                        label: Text(""),
                                      ),
                                      Checkbox(
                                        checkColor: Color.fromARGB(255, 85, 255, 0),
                                        activeColor: Color.fromARGB(255, 0, 0, 0),
                                        value: arrObects[index]["checker"],
                                        onChanged: (value) {
                                          checkBoxx(value, index);
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              //cost=arrObects[index]["price"].toString();
                              Text(
                                " ₹$t",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 10 + 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Color.fromARGB(255, 180, 118, 195),
                  ),
                  padding: EdgeInsets.all(4),
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      children: [
                        Text(
                          "Checked Amount :₹$tot",
                          style: TextStyle(
                              fontSize: 10 + 15,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        Text(
                          "Total :₹$tos",
                          style: TextStyle(
                              fontSize: 10 + 15,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
                //  height: 4,
                ),
            Container(
                //padding: EdgeInsets.all(1+1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19 + 5),
                    color: Color.fromARGB(255, 180, 118, 195)),
                child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Checkout()),
                      );
                    },
                    icon: Icon(
                      Icons.shopping_cart_checkout_outlined,
                      size: 30,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    label: Text(
                      "Checkout",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    )))
          ],
        ),
      ),
    );
  }
}
