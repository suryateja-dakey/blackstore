import 'package:black_store/sucess.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Netpayment extends StatefulWidget {
  const Netpayment({super.key});

  @override
  State<Netpayment> createState() => _NetpaymentState();
}

class _NetpaymentState extends State<Netpayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Net Banking ",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 30),),
          SizedBox(height: 10,),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/netpayment.png"),
          ),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: TextFormField(
                         //   controller: cardNumberController,
                            keyboardType: TextInputType.emailAddress,
                            
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Login",
                              //suffix: CardUtils.getCardIcon(cardType),
                            ),
                            onChanged:(value) {
                              
                            },
                          ),
           ),
            Padding(
             padding: const EdgeInsets.all(10.0),
             child: TextFormField(
                         //   controller: cardNumberController,
                            keyboardType: TextInputType.visiblePassword,
                            
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Password",
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
       }, icon: Icon(Icons.computer_outlined,size: 19+18 ,color: Colors.black,), label: Text("Pay now",style: TextStyle(fontSize:18+10,color: Colors.black),))
           ],
      ),
    );
  }
}