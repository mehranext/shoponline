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
          const CartAppbar(),

          Container(
          //temporary height
            height: 700,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
            ),
            child: Column(children: [
              const CartItemSamples(),
              Container(
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                // ),
                margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                padding: const EdgeInsets.all(10),
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: darkblueColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(Icons.add,color: Colors.white,
                    ),
                  ),
                  const Padding(
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
      bottomNavigationBar:const CartBottomNavBar() ,
    );
  }
}
