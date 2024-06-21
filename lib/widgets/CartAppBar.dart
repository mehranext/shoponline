import 'package:flutter/material.dart';
import 'package:shoponline/consts/colors.dart';

class CartAppbar extends StatelessWidget {
  const CartAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              //goes back to previous screen
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back,
            size: 30,
            color: darkblueColor,
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 20),
            child: Text("Cart",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: darkblueColor,
            ),
            ),
          ),
          const Spacer(),
          const Icon(Icons.more_vert,
            size: 30,
            color: darkblueColor,
          ),
        ],
      ),
    );
  }
}
