import 'package:black_store/Homes/categories.dart';
import 'package:black_store/details.dart';
import 'package:black_store/navigate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


class Mens extends StatefulWidget {
  //const Mens(Categories categories, {super.key});
   
   final Categories categories;
   

  // In the constructor, require a Person
  const Mens({ Key? key, required this.categories}) : super(key: key);

  @override
  State<Mens> createState() => _MensState();
}

class _MensState extends State<Mens> {
  
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Men Black shirt",
      "price": "2555",
      "images":
          "images/men1.jpeg",
    },
    {
      "title": "Black T-Shirt",
      "price": "1245",
      "images":
          "images/ccmain11.jpg",
    },
    {
      "title": "Black Full T-Shirt",
      "price": "1755",
      "images":
          "images/ccmain22.jpg",
    },
    {
      "title": "Black Track pant.",
      "price": "1275",
      "images":"images/ccmain23.jpg",
        
    },
    {
      "title": "Men Slides",
      "price": "825",
      "images":"images/cmain12.jpg",
    },
    {
      "title": "Men Blackcap",
      "price": "527",
      "images":"images/cmain22.jpg",
    },
    {
      "title": "Black Watch",
      "price": "3955",
      "images": "images/cmain111.jpg",
    },
     {
      "title": "Black belt ",
      "price": "655",
     "images": "images/cmain112.jpg",
    }
  ];
  
   final List<Map<String, dynamic>> gridMapWomen = [
    {
      "title": "Black shirt",
      "price": "2550",
      "images":
          "images/women1.jpeg",
    },
    {
      "title": "Black T-Shirt",
      "price": "1245",
      "images":
          "images/women2.jpeg",
    },
    {
      "title": "Full T-Shirt",
      "price": "1755",
      "images":
          "images/women3.jpeg",
    },
    {
      "title": "Track pant.",
      "price": "1275",
      "images":"images/ccmain12.jpg",
        
    },
    {
      "title": "Women Slides",
      "price": "825",
      "images":"images/cmain13.jpg",
    },
    {
      "title": "Black cap",
      "price": "527",
      "images":"images/cmain22.jpg",
    },
    {
      "title": "Black Watch",
      "price": "3955",
      "images": "images/women5.jpeg",
    },
     {
      "title": "Black belt ",
      "price": "655",
     "images": "images/women6.jpeg",
    }
  ];

  final List<Map<String, dynamic>> gridMapKids = [
    {
      "title": "kids shirt",
      "price": "1300",
      "images":
          "images/kids1.jpeg",
    },
    {
      "title": "kids socks",
      "price": "1245",
      "images":
          "images/kids3.jpeg",
    },
    {
      "title": "Black  T-Shirt",
      "price": "1755",
      "images":
          "images/kids4.jpeg",
    },
    {
      "title": "Track pant.",
      "price": "1275",
      "images":"images/kids5.jpeg",
        
    },
    {
      "title": "kids Shoes",
      "price": "825",
      "images":"images/kids6.jpeg",
    },
    {
      "title": "Black cap kids",
      "price": "527",
      "images":"images/kids7.jpeg",
    },
    {
      "title": "Black Watch",
      "price": "3955",
      "images": "images/kids8.jpeg",
    },
     {
      "title":  "Kids Blackbelt ",
      "price": "655",
     "images": "images/kids9.jpeg",
    }
  ];

 final List<Map<String, dynamic>> gridMapElectronics = [
    {
      "title": "Iphone 13 Mini",
      "price": "59000",
      "images":
          "images/acc1.jpeg",
    },
    {
      "title": "Nothing phone 1",
      "price": "35000",
      "images":
          "images/cat_moob.jpg",
    },
    {
      "title": "Asus black Laptop",
      "price": "95000",
      "images":
          "images/acc3.jpeg",
    },
    {
      "title": "Sony Qled tv",
      "price": "111275",
      "images":"images/acc4.jpeg",
        
    },
    {
      "title": "LG Monitor",
      "price": "9825",
      "images":"images/acc5.jpeg",
    },
    {
      "title": "Lenovo yoga Tab",
      "price": "36,270",
      "images":"images/acc6.jpeg",
    },
    {
      "title": "Bose Home Theater ",
      "price": "113955",
      "images": "images/acc7.jpeg",
    },
     {
      "title": "JBL Soundbar ",
      "price": "15999",
     "images": "images/acc8.jpeg",
    }
  ];

  final List<Map<String, dynamic>> gridMapAccesories = [
    {
      "title": "Iphone Back case",
      "price": "1000",
      "images":
          "images/cmain11.jpg",
    },
    {
      "title": "JBL earbuds",
      "price": "3000",
      "images":
          "images/cat_acc.png",
    },
    {
      "title": "Sony  Headset",
      "price": "6000",
      "images":
          "images/ele1.jpeg",
    },
    {
      "title": "Smart Bag",
      "price": "1275",
      "images":"images/cmain21.jpg",
        
    },
    {
      "title": "Iphone Charger",
      "price": "9825",
      "images":"images/ele2.jpeg",
    },
    {
      "title": "Smart glasses",
      "price": "36270",
      "images":"images/ele3.jpeg",
    },
    {
      "title": "Mouse",
      "price": "1955",
      "images": "images/ele4.jpeg",
    },
     {
      "title": "Keyboard ",
      "price": "3599",
     "images": "images/ele5.jpeg",
    }
  ];

 
     

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: Visibility(
          visible: true,
          child: FloatingActionButton(
            onPressed: () {
               Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Nav()),
                          );
                  },
            backgroundColor: Color.fromARGB(255, 73, 45, 92),
            child: const Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
        ),
      body: ListView(
        children:[ Column(
          children: [
          SingleChildScrollView(
            reverse: false,
            
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                  mainAxisExtent: 310,
                ),
                itemCount: gridMap.length,
               itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                       onTap: () {
                        var im= widget.categories.men==true?
                                "${gridMap.elementAt(index)['images']}": widget.categories.women==true? "${gridMapWomen.elementAt(index)['images']}":widget.categories.kid==true?"${gridMapKids.elementAt(index)['images']}":widget.categories.eles==true?"${gridMapElectronics.elementAt(index)['images']}":"${gridMapAccesories.elementAt(index)['images']}";
                          var dis=  widget.categories.men==true?
                                    "${gridMap.elementAt(index)['title']}": widget.categories.women==true?"${gridMapWomen.elementAt(index)['title']}":widget.categories.kid==true?"${gridMapKids.elementAt(index)['title']}":widget.categories.eles==true?"${gridMapElectronics.elementAt(index)['title']}":"${gridMapAccesories.elementAt(index)['title']}";
                          var pric=  widget.categories.men==true?
                                    "${gridMap.elementAt(index)['price']}":widget.categories.women==true?
                                    "${gridMapWomen.elementAt(index)['price']}":widget.categories.kid==true?
                                    "${gridMapKids.elementAt(index)['price']}":widget.categories.eles==true?
                                     "${gridMapElectronics.elementAt(index)['price']}":  "${gridMapAccesories.elementAt(index)['price']}" ;                  
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>Detail(x:im,y:dis,z:pric)),
                              );
                            },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            16.0,
                          ),
                          color: Color.fromARGB(255, 180, 118, 195),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                             
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(16.0),
                              ),
                              child: Image.asset(
                                 widget.categories.men==true?
                                "${gridMap.elementAt(index)['images']}": widget.categories.women==true? "${gridMapWomen.elementAt(index)['images']}":widget.categories.kid==true?"${gridMapKids.elementAt(index)['images']}":widget.categories.eles==true?"${gridMapElectronics.elementAt(index)['images']}":"${gridMapAccesories.elementAt(index)['images']}",
                                height: 170,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.categories.men==true?
                                    "${gridMap.elementAt(index)['title']}": widget.categories.women==true?"${gridMapWomen.elementAt(index)['title']}":widget.categories.kid==true?"${gridMapKids.elementAt(index)['title']}":widget.categories.eles==true?"${gridMapElectronics.elementAt(index)['title']}":"${gridMapAccesories.elementAt(index)['title']}",
                    
                    
                                    style: Theme.of(context).textTheme.subtitle1!.merge(
                                          const TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                     widget.categories.men==true?
                                    "₹${gridMap.elementAt(index)['price']}":widget.categories.women==true?
                                    "₹${gridMapWomen.elementAt(index)['price']}":widget.categories.kid==true?
                                    "₹${gridMapKids.elementAt(index)['price']}":widget.categories.eles==true?
                                     "₹${gridMapElectronics.elementAt(index)['price']}":  "₹${gridMapAccesories.elementAt(index)['price']}" ,
                    
                                    style: Theme.of(context).textTheme.subtitle2!.merge(
                                          TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 23 ,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          ),
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.favorite),
                                      Icon(Icons.shopping_cart_sharp)
                                   //  IconButton(onPressed: (){},iconSize: 10, icon: Icon(Icons.favorite),),
                                     // IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart_sharp),)
                                     
                                    
                                     
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),]
      ),
    );
  }
}
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //    child: Column(
  //       children: [
  //      //   ListView()
  //       ],
  //     )
  //   );
  // }
