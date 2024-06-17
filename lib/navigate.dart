// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:black_store/Homes/cart.dart';
import 'package:black_store/Homes/categories.dart';
import 'package:black_store/mensscreen.dart';
import 'package:black_store/profile.dart';
import 'package:flutter/material.dart';

import 'Homes/Homescreen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Homes/asd.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
 
int _tabIndex = 1+1;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }



  @override
  Widget build(BuildContext context) {
    var det=false;
    return Scaffold(
    extendBody: true,

    //  int selectedIndex = 0;
      //  const TextStyle optionStyle =
      // TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  //  List<Widget> _widgetOptions = <Widget>[
    
  //   //  HomeScreen1(),
  //   //    screen1(),
  //   //    Categories()
  //   Text(
  //     'Likes',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Search',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Profile',
  //     style: optionStyle,
  //   ),
  // ];
   
      backgroundColor:Color.fromARGB(160, 55, 39, 66),
     
      //   selectedIndex ==3?
      // Categories(): selectedIndex ==1?screen1():
      
      //  body:Center(
      //   child: _widgetOptions.elementAt(selectedIndex),
      // ),

     // ignore: unused_label, dead_code
     bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(190.0),
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            //  const EdgeInsets.symmetric(horizontal:  15,vertical: 19),
            child: GNav(
                gap: 8,
                padding: EdgeInsets.all(8),
                backgroundColor:Color.fromARGB(255, 0, 0, 0),
                color: Color.fromARGB(255, 255, 255, 255),
                activeColor: Color.fromARGB(255, 255, 255, 255),
                tabBackgroundColor: Color.fromARGB(160, 55, 39, 66),
                tabs:  [
                 
                  GButton(
                    icon: Icons.menu_rounded,
                    text: 'Categorie',
                    // onPressed:(){
                    //   Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => Categories()),
                    //       );
                    // },
                  ),
                  GButton(
                    icon: Icons.favorite,
                    text: 'Wishlist',
                  ),
                   GButton(
                    icon: Icons.home,
                    text: 'Home',
                     onPressed:(){
                        det=true;
                        print("wwwwww");
                    },

                  ),
                  GButton(
                    icon: Icons.shopping_cart,
                    text: 'Cart',
                  ),
                  GButton(
                    icon: Icons.account_circle,
                    text: 'Profile',
                  ),
                ],
                 selectedIndex: tabIndex,
              onTabChange: (index) {
                setState(() {
                 tabIndex = index;
                 pageController.jumpToPage(tabIndex);
                  print(tabIndex);
                });
              },
                ),
          ),
        ),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex = v;
        },
        children: [
         
          Categories(false,false,false,false,false),
          screen1(),
          HomeScreen1(),
          Cartt(bisFromMain: true),
          Profile()


          
         
        ],
      ),
    );

  }

  }
