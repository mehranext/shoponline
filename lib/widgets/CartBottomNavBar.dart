import 'package:flutter/material.dart';
import 'package:shoponline/consts/colors.dart';
import 'package:shoponline/widgets/core/button.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      height: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Text(
                "\$250",
                style: TextStyle(
                  color: darkblueColor,
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Button(
            onPressed: () {},
            borderRadius: 15,
            color: Colors.blue,
            lable: 'Check out',
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
