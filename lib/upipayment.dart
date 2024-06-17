// ignore_for_file: prefer_const_constructors

import 'package:black_store/sucess.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Upipayment extends StatefulWidget {
  const Upipayment({super.key});

  @override
  State<Upipayment> createState() => _UpipaymentState();
}

class _UpipaymentState extends State<Upipayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Text("UPI Payment",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 30),),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset("images/upis.png"),
          ),
           Padding(
             padding: const EdgeInsets.all(30.0),
             child: TextFormField(
                         //   controller: cardNumberController,
                            keyboardType: TextInputType.number,
                            
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter Virtual ID ex: ' 647864786@ybl '",
                              //suffix: CardUtils.getCardIcon(cardType),
                            ),
                            onChanged:(value) {
                              
                            },
                          ),
           ),

        TextButton.icon(onPressed:(){
           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Sucess())
           );
       }, icon: Icon(Icons.phone_android,size: 19+18 ,color: Colors.black,), label: Text("Pay now",style: TextStyle(fontSize:18+10,color: Colors.black),))
         ],
      ),
    );
  }
}