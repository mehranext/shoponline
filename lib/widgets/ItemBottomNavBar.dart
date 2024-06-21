import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoponline/consts/colors.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ]),
          child: Row(
            children: [
              const Text("\$120",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: darkblueColor,
                ),
              ),
              const Spacer(),
              ElevatedButton.icon(onPressed: (){},
                  icon:const Icon(CupertinoIcons.cart_badge_plus) ,
                  label: const Text("Add To Cart",
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                    ),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(darkblueColor),
                  padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 13,horizontal: 15,)),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                    )
                  ),
                ),
            ],
          ),
        ),
    );
  }
}
