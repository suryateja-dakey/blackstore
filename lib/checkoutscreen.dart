// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:black_store/cardpayment.dart';
import 'package:black_store/netpayment.dart';
import 'package:black_store/sucess.dart';
import 'package:black_store/upipayment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
   bool c=false;
   void che(value) {
    setState(() {
     c = value;
      value = c;
      
    });
  }
  @override
  Widget build(BuildContext context) {
    
  
   return Scaffold(
    backgroundColor: Color.fromARGB(255, 0, 0, 0),
     body: Column(

      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
        SizedBox(height: 33,),
        Center(child: Text("Payment",style: TextStyle(fontSize: 15+10,fontWeight: FontWeight.w600,color: Colors.white),)),
         Padding(
           padding: const EdgeInsets.all(16.0),
           child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text("Delivery Address 🚚",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                  Text("Street:  C-19, Community Centre, Opp Main Iit Gate",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                  Text("📍 City:   Delhi",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                    Text("State/province/area:    Delhi",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                    Text("Phone number  01126511155",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                    Text("Zip code  110016",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                    Text("Country calling code  +91",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                     Text("Country  India  🇮🇳",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                ],
              ),


       ),
            
            
            decoration: BoxDecoration(color: Color.fromARGB(255, 190, 121, 202),borderRadius: BorderRadius.circular(30)),
             ),
         ),
      
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Image.asset("images/upii.png",height:50,width:50,),
                Text("   UPI                            ",style: TextStyle(fontSize: 10+15),),
                 IconButton(onPressed:() {

                 if(c==true) {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Upipayment()),
                          );}
                }, icon: Icon(Icons.navigate_next,size: 40,))
              ],
            ),
          ),
                      decoration: BoxDecoration(color: Color.fromARGB(255, 190, 121, 202),borderRadius: BorderRadius.circular(30)),
      
        ),
      ),
       Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                  Image.asset("images/inb.png",height:50,width:50,),
                Text("  Net Banking             ",style: TextStyle(fontSize: 10+15),),
                 IconButton(onPressed:() {
                   if(c==true) {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Netpayment()),
                          );}

                }, icon: Icon(Icons.navigate_next,size: 40,))
              ],
            ),
          ),
                      decoration: BoxDecoration(color: Color.fromARGB(255, 190, 121, 202),borderRadius: BorderRadius.circular(30)),
      
        ),
      ), 
       Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                  Image.asset("images/card.png",height:50,width:50,),
                Text(" Debit & Credit Cards",style: TextStyle(fontSize: 10+15),),
                IconButton(onPressed:() {
                   if(c==true) {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Cardpayment()),
                          );}


                }, icon: Icon(Icons.navigate_next,size: 40,))
              ],
            ),
          ),
                      decoration: BoxDecoration(color: Color.fromARGB(255, 190, 121, 202),borderRadius: BorderRadius.circular(30)),
      
        ),
      ),
       Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                  Image.asset("images/cash.png",height:50,width:50,),
                Text("  Cash on delevery    ",style: TextStyle(fontSize: 10+15),),
                 IconButton(onPressed:() {
                       if(c==true) {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Sucess()),
                          );}
                }, icon: Icon(Icons.navigate_next,size: 40,))
              ],
            ),
          ),
                      decoration: BoxDecoration(color: Color.fromARGB(255, 190, 121, 202),borderRadius: BorderRadius.circular(30)),
      
        ),
      ),  
      
      
     Padding(
       padding: const EdgeInsets.all(30.0),
       child: Container(
        height: 50,
        color: Color.fromARGB(255, 255, 255, 255),
         child: Row(
           children: [
             Checkbox(    
                                                checkColor: Color.fromARGB(255, 0, 0, 0),
                                                activeColor: Color.fromARGB(255, 27, 165, 0),
                                                value: c,
                                                onChanged: (value) {
                                                   setState(() {
                                                   che(value);
                                                   print(c);
                                                   });
                                                },
                                              ),
               Text("Accept terms and conditions",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
           ],
         ),
       ),
     ),   ],
     )
    

   );
  }
  

}