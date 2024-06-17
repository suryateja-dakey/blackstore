// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:black_store/sucess.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Cardpayment extends StatefulWidget {
  const Cardpayment({super.key});

  @override
  State<Cardpayment> createState() => _CardpaymentState();
}

class _CardpaymentState extends State<Cardpayment> {
  TextEditingController cardNumberController = TextEditingController();


  String name = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            SizedBox(height: 40,),
              Text("Card Payment",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 30),),
         // SizedBox(height: 10,),
    
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image.asset("images/credit2.gif"),
            ),
           Padding(
             padding: const EdgeInsets.all(10+10),
             child: Form(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: cardNumberController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(16),
                            //CardNumberInputFormatter(),
                          ],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Card Number",
                            //suffix: CardUtils.getCardIcon(cardType),
                          ),
                          onChanged:(value) {
                            
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Enter Full Name"),
                            onChanged: (value) {
                              name = value;
                            },
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  // Limit the input
                                  LengthLimitingTextInputFormatter(4),
                                ],
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "CVV"),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(5),
                                 // CardMonthInputFormatter(),
                                ],
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "MM/YY"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
           ),


           // TextField(),
            // Row(
            //   children: [
            //     TextField(),
            //     TextField()
            //   ],
            // ),
       
            
       TextButton.icon(onPressed:(){
           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Sucess())
           );
       }, icon: Icon(Icons.payment,size: 19+18 ,color: Colors.black,), label: Text("Pay now",style: TextStyle(fontSize:18+10,color: Colors.black),))
       ],
        ),
      ),
    );
  }
}