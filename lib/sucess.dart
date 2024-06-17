// ignore_for_file: unnecessary_new, override_on_non_overriding_member

// import 'dart:async';
// import 'dart:typed_data';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:esys_flutter_share_plus/esys_flutter_share_plus.dart' as esys;
// import 'dart:async';
// import 'package:screenshot/screenshot.dart';
//import 'package:share/share.dart';
// import 'dart:typed_data';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'dart:math';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

class Sucess extends StatefulWidget {
  const Sucess({super.key});

  @override
  State<Sucess> createState() => _SucessState();
}

class _SucessState extends State<Sucess> {
  @override
   
   
var intValue = Random().nextInt(1000);

  late Uint8List imagefile;
  

  //Create an instance of ScreenshotController
  final ScreenshotController screenshotController = ScreenshotController(); 


   _saved(image) async {
    final result = await ImageGallerySaver.saveImage(image);
    
    print("Saved");
    final temp = await getTemporaryDirectory();
  
//Share.shareFiles([])
    
  } 
 
  void takescreenshot()async{


 final uint8List = await screenshotController.capture();
  String tempPath = (await getTemporaryDirectory()).path;
  File file = File('$tempPath/BlackStore_Order_Placed_.png');
  await file.writeAsBytes(uint8List!);
  await Share.shareFiles([file.path]);


  // imagefile=await screenshotController.capture(pixelRatio: 3);
  // {
  //               screenshotController
  //                   .capture(delay: Duration(milliseconds: 10))
  //                   .then((capturedImage) async {
  //                // ShowCapturedWidget(context, capturedImage!);
  //                imagess=capturedImage;
  //                print(imagess);
  //               }).catchError((onError) {
  //                 print(onError);
  //               });
  //             }
  //  Share.shareFiles([imagess]);
  }
  Widget build(BuildContext context) {
    return Screenshot( 
        controller: screenshotController,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body:  Column(
          children: [
           
             Image.asset("images/placed2.gif",),
              Text("Order Placed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
               Text("  Sucessfully! ✅",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
               Text(" Order ID: D8053f1$intValue ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
    
            
            Image.asset("images/placed.gif",height: 100+150,),
            TextButton(onPressed:(){
                     
                  
                    screenshotController
                        .capture(delay: Duration(milliseconds: 10))
                        .then((capturedImage) async {
                           _saved(capturedImage);
                         takescreenshot();
                          
                          
                    }).catchError((onError) {
                      print(onError);
                    });
              },
              
             child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Image.asset("images/share.png",height: 40,width: 80,),
                 Text("Share ",style: TextStyle(color: Colors.black,fontSize: 30),),
               ],
             ))
          ],
        ),
      ),
    );
  }
}