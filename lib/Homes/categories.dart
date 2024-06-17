// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/cupertino.dart';
import 'package:black_store/Homes/Homescreen.dart';
import 'package:black_store/mensscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Categories extends StatefulWidget {
   bool men;
   bool women;
   bool kid;
   bool eles;
   bool accs;

  Categories(this.men, this.women,this.kid,this.eles,this.accs);
  @override
  CategoriesState createState() => CategoriesState();
}

class CategoriesState extends State<Categories> {
  
  @override
  late int selectedIndex;
   
  bool active = false;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Categories"),
        ),
        backgroundColor:Color.fromARGB(160, 55, 39, 66),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             SizedBox(height: 19,),
            
            Text("Cloths                            ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,color:Colors.white),),
          
            SizedBox(height: 30,),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 190,
                        height:280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                         
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Mens(categories: Categories(true,false,false,false,false))),
                            );
                          },
                          child: Container(
                         
                              decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                             color: Color.fromARGB(255, 0, 0, 0),
                             image: DecorationImage(
                image: AssetImage("images/cat_men.jpeg"),
                fit: BoxFit.cover,
              ),
                          boxShadow: [
                            BoxShadow(
                           // blurRadius: 25.0,
                            ),
                          ],
                        ),
                            child: Center(child: Column(
                              children: [ 
                                SizedBox(height: 190,),
                                Text("+ FOR HIM ",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                              fontSize:25,    fontWeight: FontWeight.w600,backgroundColor:Color.fromARGB(94, 255, 255, 255),
                              decoration: TextDecoration.underline),),
                              ],
                            )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                           
                          boxShadow: [
                            BoxShadow(
                            //  blurRadius: 15.0,
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Mens(categories: Categories(false,true,false,false,false))),
                            );
                          },
                          child: Container(
                            
                              decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                             color: Color.fromARGB(255, 0, 0, 0),
                              image: DecorationImage(
                image: AssetImage("images/cat_womenn.jpeg"),
                fit: BoxFit.cover,
              ),
              
                          boxShadow: [
                            BoxShadow(
                           // blurRadius: 25.0,
                            ),
                          ],
                        ),
                         child: Center(child: Column(
                              children: [ 
                                SizedBox(height: 140,),
                                Text("+ FOR HER ",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                              fontSize:19,    fontWeight: FontWeight.w600,backgroundColor:Color.fromARGB(94, 255, 255, 255),
                              decoration: TextDecoration.underline),),
                              ],
                            )),
                            // child: Image(
                            //   image: AssetImage(
                            //     'images/mobileMain.jpeg',
                            //   ),
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                        ),
                      ),
                      
                    ),

                    // new container
                     Container(
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                            //  blurRadius: 15.0,
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Mens(categories: Categories(false,false,true,false,false))),
                            );
                          },
                          child: Container(
                            
                              decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                             color: Color.fromARGB(255, 0, 0, 0),
                              image: DecorationImage(
                image: AssetImage("images/cat_baby.jpg"),
                fit: BoxFit.cover,
              ),
                          boxShadow: [
                            BoxShadow(
                           // blurRadius: 25.0,
                            ),
                          ],
                        ),
                         child: Center(child: Column(
                              children: [ 
                                SizedBox( height: 35,),
                                Text("+KIDS ",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                              fontSize:19,    fontWeight: FontWeight.w600,backgroundColor:Color.fromARGB(114, 255, 255, 255),
                              decoration: TextDecoration.underline),),
                              ],
                            )),
                            // child: Image(
                            //   image: AssetImage(
                            //     'images/mobileMain.jpeg',
                            //   ),
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
             Text("Gadgets                         ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,color:Colors.white),),
          
            SizedBox(height: 30,),
            Row(
              children: <Widget>[

                SizedBox(
                  width: 30,
                ),
                
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                             // blurRadius: 25.0,
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Mens(categories: Categories(false,false,false,true,false))),
                            );
                          },
                          child: Container(
                          
                              decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                             color: Color.fromARGB(255, 0, 0, 0),
                              image: DecorationImage(
                image: AssetImage("images/cat_moob.jpg"),
                fit: BoxFit.cover,
              ),
                          boxShadow: [
                            BoxShadow(
                           // blurRadius: 25.0,
                            ),
                          ],
                        ), child: Center(child: Column(
                              children: [ 
                                SizedBox( height: 10,),
                                Text("+ELECTRONICS ",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                              fontSize:18,    fontWeight: FontWeight.w600,backgroundColor:Color.fromARGB(114, 255, 255, 255),
                              decoration: TextDecoration.underline),),
                              ],
                            )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                        //      blurRadius: 15.0,
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Mens(categories: Categories(false,false,false,false,true))),
                            );
                          },
                          child: Container(
                           
                              decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                             color: Color.fromARGB(255, 0, 0, 0),
                              image: DecorationImage(
                image: AssetImage("images/cat_acc.png"),
                fit: BoxFit.cover,
              ),
                          boxShadow: [
                            BoxShadow(
                           // blurRadius: 25.0,
                            ),
                          ],
                        ),
                             child: Center(child: Column(
                              children: [ 
                                SizedBox( height: 10,),
                                Text("+ACCESORIES ",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                              fontSize:18,    fontWeight: FontWeight.w600,backgroundColor:Color.fromARGB(114, 255, 255, 255),
                              decoration: TextDecoration.underline),),
                              ],
                            )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Container(
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(190.0),
        //       color: Colors.black,
        //     ),
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: GNav(
        //           gap: 8,
        //           padding: EdgeInsets.all(8),
        //           backgroundColor: Colors.black,
        //           color: Color.fromARGB(255, 255, 255, 255),
        //           activeColor: Color.fromARGB(255, 255, 255, 255),
        //           tabBackgroundColor: Color.fromARGB(223, 33, 26, 37),
        //           tabs: [
        //             GButton(
        //               icon: Icons.home,
        //               text: 'Home',
        //               onPressed: () {
        //                 active = true;
        //                 Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                       builder: (context) => HomeScreen1()),
        //                 );
        //               },
        //             ),
        //             GButton(
        //               icon: Icons.menu_rounded,
        //               text: 'Categorie',
        //               // onPressed: () {
        //               //   active = true;
        //               //   // selectedIndex=1;
        //               //   Navigator.push(
        //               //     context,
        //               //     MaterialPageRoute(builder: (context) => Categories()),
        //               //   );
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
        //           ]),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
