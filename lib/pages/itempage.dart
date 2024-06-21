import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoponline/consts/colors.dart';

import '../widgets/ItemBottomNavBar.dart';
import '../widgets/itemappbar.dart';

// ignore: must_be_immutable
class ItemPage extends StatelessWidget {

  List<Color> Clrs = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.orange,
  ];

  ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          const ItemAppBar(),
          Padding(padding: const EdgeInsets.all(16),
          child: Image.asset("images/1.png",height: 300,),
          ),
          Arc(edge: Edge.TOP,
          arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:20),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(
                        top: 48,
                        bottom: 15,
                    ),
                      child: Row(
                        children: [
                          Text(
                            "Product Title:",
                            style: TextStyle(
                            fontSize: 18,
                              color: darkblueColor,
                              fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 5,bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => const Icon(
                              Icons.favorite,color: darkblueColor,
                            ),
                            onRatingUpdate: (index) {},
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: const Offset(0, 3),
                                    )
                                  ]
                                ),
                                child: const Icon(CupertinoIcons.minus,size: 18,color: darkblueColor,),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                child: const Text("01",style: TextStyle(
                                color: darkblueColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: const Offset(0, 3),
                                      )
                                    ]
                                ),
                                child: const Icon(CupertinoIcons.plus,size: 18,color: darkblueColor,),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text('This Is More description of product.You can write here more about the product.this is lengthy description. ' ,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: darkblueColor,
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(children: [
                      const Text("Size:",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold ),
                      ),
                      const SizedBox(width: 10,),
                      Row(children: [
                        for (int i=0 ; i<5 ; i++ )
                        Container(
                        height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 8,
                      ),
                        ]),
                        child: Text("$i",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: darkblueColor),),
                      )],)
                    ],),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(children: [
                        const Text("Color:",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold ),
                        ),
                        const SizedBox(width: 10,),
                        Row(children: [
                          for (int i=0 ; i<5 ; i++ )
                            Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  color:Clrs[i],
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                    ),
                                  ]),
                              child: const Text("",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Colors.white),),
                            )],)
                      ],),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const ItemBottomNavBar(),
    );
  }
}
