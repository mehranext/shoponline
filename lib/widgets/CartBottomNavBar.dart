import 'package:flutter/material.dart';
import 'package:shoponline/consts/colors.dart';
class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        height: 130,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total",style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                ),
                Text("\$250",
                style: TextStyle(
                  color: darkblueColor,
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
                ),
            ],),
          ],
        ),
      ),
    );
  }
}
