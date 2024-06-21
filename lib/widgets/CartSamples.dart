import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoponline/consts/colors.dart';

class CartItemSamples extends StatelessWidget {
  const CartItemSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i<4; i++)
        Container(
        height: 110,
        margin: const EdgeInsets.symmetric(horizontal: 15 ,vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10
          ),
        ),
        child: Row(children: [
          Radio(value: "",
            groupValue: "",
            activeColor: darkblueColor,
            onChanged: (index){},
          ),
          Container(
            height: 70,
            width: 70,
            margin: const EdgeInsets.only(right: 15),
            //$i for changing images in our loop on the top,
            child: Image.asset("images/$i.png"),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10),
         child: Column(
           crossAxisAlignment:CrossAxisAlignment.start ,
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Text("Product Title",
           style: TextStyle(
             fontWeight: FontWeight.normal,
             color: darkblueColor,
             fontSize: 18,
           ),
           ),
           Text("\$55",
             style: TextStyle(
               fontSize: 16,
               fontWeight: FontWeight.normal,
               color: darkblueColor,
             ),
           ),
         ],
         ),
          ),
          const Spacer(),
          Padding(padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.delete,
              color: Colors.red,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 10,
                        )
                      ]
                    ),
                     child: const Icon(CupertinoIcons.minus,
                     size: 18,
                     ),
                  ),
                  Container(margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text("01",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: darkblueColor,
                    ),),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 10,
                          )
                        ]
                    ),
                    child: const Icon(CupertinoIcons.plus,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
          ),
        ],
        ),
      )],
    );
  }
}
