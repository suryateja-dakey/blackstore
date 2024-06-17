// ignore_for_file: unused_import, depend_on_referenced_packages, prefer_const_constructors, sort_child_properties_last

import 'package:black_store/Homes/asd.dart';
import 'package:black_store/Homes/categories.dart';
import 'package:flutter/material.dart';
import 'package:black_store/main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../mensscreen.dart';
//import 'package:flutter/widgets.dart';

class HomeScreen1 extends StatefulWidget {
  @override
  HomeScreen1State createState() => HomeScreen1State();
}

class HomeScreen1State extends State<HomeScreen1> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    return Scaffold(
      backgroundColor: Color.fromARGB(213, 0, 0, 0),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Hero(
                tag: "logs",
                child: Container(
                    color: Colors.black,
                    padding: EdgeInsets.fromLTRB(10, 33, 10, 15),
                    child: Image.asset("images/Brand_name.png")),
              ),

              SizedBox(
                height: 10,
              ),
              //Main container
              CarouselSlider(
                options: CarouselOptions(height: 199.0, autoPlay: true),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mens(
                                    categories: Categories(
                                        true, false, false, false, false))),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35.0),
                            image: DecorationImage(
                              image: AssetImage("images/main$i.jpg"),
                              fit: BoxFit.cover,
                            ),
                            //color: Color.fromARGB (183, 255, 255, 255),
                          ),
                          //  child:Center(child: Text("Starts Now",style: TextStyle(color: Colors.amber),))
                          // Center(child:Image.asset("images/main$i.png")),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              //--------------
              SizedBox(
                height: 30,
              ),

              Column(
                children: [
                  Text(
                    "Popular in Accesiories ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  // SizedBox(height: 10,),
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 199.0, autoPlay: false, reverse: true),
                    items: [1, 2, 3].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: GestureDetector(
                                   onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mens(
                                    categories: Categories(
                                         false,false, false, true, false))),
                          );
                        },
                                  
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 64, vertical: 80),
                                      //child: Text("surya"),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Color.fromARGB(184, 0, 0, 0),
                                      image: DecorationImage(
                                        image: AssetImage("images/cmain1$i.jpg"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: GestureDetector(
                                   onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mens(
                                    categories: Categories(
                                        true, false, false, true, false))),
                          );
                        },
                                  child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 64, vertical: 80),
                                        //child: Text("surya"),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30.0),
                                        color: Color.fromARGB(184, 0, 0, 0),
                                        image: DecorationImage(
                                          image:
                                              AssetImage("images/cmain2$i.jpg"),
                                          fit: BoxFit.fill,
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
              Text(
                "Popular in cloths",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              Column(
                children: [
                  //SizedBox(height: 5,),
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 199.0, autoPlay: false, reverse: true),
                    items: [1, 2, 3].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: GestureDetector(
                                   onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mens(
                                    categories: Categories(
                                        true, false, false, false, false))),
                          );
                        },
                                  child: GestureDetector(
                                     onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mens(
                                    categories: Categories(
                                        false, true, false, false, false))),
                          );
                        },
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 64, vertical: 85),
                                        //child: Text("surya"),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30.0),
                                        color: Color.fromARGB(184, 0, 0, 0),
                                        image: DecorationImage(
                                          image: AssetImage("images/ccmain1$i.jpg"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 64, vertical: 85),
                                      //child: Text("surya"),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Color.fromARGB(184, 0, 0, 0),
                                      image: DecorationImage(
                                        image:
                                            AssetImage("images/ccmain2$i.jpg"),
                                        fit: BoxFit.fill,
                                      ),
                                    )),
                              ),
                            ],
                          );
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      // backgroundColor: Color.fromARGB(210, 99, 88, 88),

      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Container(
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(190.0),
      //       color: Colors.black,
      //     ),
      //     child: Padding(
      //       padding: const EdgeInsets.all(10),
      //       //  const EdgeInsets.symmetric(horizontal:  15,vertical: 19),
      //       child: GNav(
      //           gap: 8,
      //           padding: EdgeInsets.all(8),
      //           backgroundColor: Colors.black,
      //           color: Color.fromARGB(255, 255, 255, 255),
      //           activeColor: Color.fromARGB(255, 255, 255, 255),
      //           tabBackgroundColor: Color.fromARGB(223, 33, 26, 37),
      //           tabs:  [
      //             GButton(
      //               icon: Icons.home,
      //               text: 'Home',
      //                onPressed:(){
      //                 Navigator.push(
      //                       context,
      //                       MaterialPageRoute(
      //                           builder: (context) => HomeScreen1()),
      //                     );
      //               },

      //             ),
      //             GButton(
      //               icon: Icons.menu_rounded,
      //               text: 'Categorie',
      //               // onPressed:(){
      //               //   Navigator.push(
      //               //         context,
      //               //         MaterialPageRoute(
      //               //             builder: (context) => Categories()),
      //               //       );
      //               // },
      //             ),
      //             GButton(
      //               icon: Icons.favorite,
      //               text: 'Wishlist',
      //             ),
      //             GButton(
      //               icon: Icons.shopping_cart,
      //               text: 'Cart',
      //             ),
      //             GButton(
      //               icon: Icons.account_circle,
      //               text: 'Profile',
      //             ),
      //           ],
      //            selectedIndex: selectedIndex,
      //         onTabChange: (index) {
      //           setState(() {
      //             selectedIndex = index;
      //             print(selectedIndex);
      //           });
      //         },
      //           ),
      //     ),
      //   ),
      // ),
    );
  }
}




// // Container(
       
// //         child: Column(
//           children: [
//             SizedBox(height: 300,),
//             GNav(
//        // rippleColor: Colors.grey[800], // tab button ripple color when pressed
//        // hoverColor: Colors.grey[700], // tab button hover color
//             haptic: true, // haptic feedback
//             tabBorderRadius: 15, 
//             tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
//             tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
//             tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
//             curve: Curves.easeOutExpo, // tab animation curves
//             duration: Duration(milliseconds: 900), // tab animation duration
//             gap: 8, // the tab button gap between icon and text 
//             color: Colors.grey[800], // unselected icon color
//             activeColor: Colors.purple, // selected icon and text color
//             iconSize: 24, // tab button icon size
//             tabBackgroundColor: Colors.purple.withOpacity(0.1), // selected tab background color
//             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
//             tabs: [
//               GButton(
//             icon: Icons.abc,
//             text: 'Home',
//               ),
//               GButton(
//             icon: Icons.heart_broken,
//             text: 'Likes',
//               ),
//               GButton(
//             icon: Icons.heart_broken,
//             text: 'Search',
//               ),
//               GButton(
//             icon: Icons.heart_broken,
//             text: 'Profile',
//               )
//             ]
//       ),
//           ],
//         ),
//       )