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
        child:  Column(
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
            ],
            ),
            Container(
              //Text CheckOut that should be in below
              alignment: Alignment.center,
              height: 49,
              width: double.infinity ,
              decoration:BoxDecoration(
                color: darkblueColor,
                borderRadius: BorderRadius.circular(20),
              ) ,
              child: Text("Check Out",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
