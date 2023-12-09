import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../consts/colors.dart';
import '../pages/itempage.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //it disable the scroll functionality of gridview
      //then it scroll in listview of home page
      physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
      childAspectRatio: 0.68,
      shrinkWrap: true,
      children: [
        for (int i= 1; i<8; i++)
        Container(
          padding: EdgeInsets.only(left: 15,right: 15,top: 10),
          margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
          decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                //the mainAxisAlignment space between is for space between like icon and discount
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("-50%",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                  Icon(Icons.favorite_border,color: Colors.red,)
                ],
              ),
              InkWell(onTap: (){
                Get.to(ItemPage());
              },
                child: Container(
                  margin: EdgeInsets.all(10),
                  //$i -> is related to for cycle that we create and
                  //it bring our images to the cycle:)
                  child: Image.asset("images/$i.png"),
                  height: 120,
                  width: 120,
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text("Products Title",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: darkblueColor,
                ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Write Description of product",
                style: TextStyle(
                  fontSize: 15,
                  color: darkblueColor,
                ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$55",
                  style: TextStyle(fontSize: 13,
                  fontWeight: FontWeight.bold,
                    color: darkblueColor,
                  ),
                  ),
                  Icon(Icons.shopping_cart_checkout,
                    color: darkblueColor,
                  ),
                ],
              ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
