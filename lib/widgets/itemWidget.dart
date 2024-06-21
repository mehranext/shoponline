import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../consts/colors.dart';
import '../pages/itempage.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      //it disable the scroll functionality of gridview
      //then it scroll in listview of home page
      crossAxisCount: 2,
      children: [
        for (int i = 1; i < 8; i++)
          Container(
            height: 300,
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
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
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "-50%",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Get.to(ItemPage());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 120,
                    width: 120,
                    //$i -> is related to for cycle that we create and
                    //it bring our images to the cycle:)
                    child: Image.asset("images/$i.png"),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Products Title",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: darkblueColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Write Description of product",
                    style: TextStyle(
                      fontSize: 15,
                      color: darkblueColor,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$55",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: darkblueColor,
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
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
