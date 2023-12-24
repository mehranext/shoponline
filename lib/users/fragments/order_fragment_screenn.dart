import 'package:flutter/material.dart';
import 'package:shoponline/consts/colors.dart';
import 'package:shoponline/widgets/CartBottomNavBar.dart';

import '../../widgets/CartAppBar.dart';
import '../../widgets/CartSamples.dart';

class OrderFragmentScreen extends StatelessWidget

{
  const OrderFragmentScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppbar(),

          Container(
          //temporary height
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
            ),
            child: Column(children: [
              CartItemSamples(),
              Container(
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                // ),
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: darkblueColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(Icons.add,color: Colors.white,
                    ),
                  ),
                  Padding(
                      padding:EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Add Coupon Code",
                    style: TextStyle(
                    color: darkblueColor,
                    fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    ),
                  ),
                ],),
              )
            ],),
          ),
        ],
      ),
      bottomNavigationBar:CartBottomNavBar() ,
    );
  }
}
