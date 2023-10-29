import 'package:flutter/material.dart';
import 'package:shoponline/consts/colors.dart';

class CartAppbar extends StatelessWidget {
  const CartAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              //goes back to previous screen
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,
            size: 30,
            color: darkblueColor,
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20),
            child: Text("Cart",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: darkblueColor,
            ),
            ),
          ),
          Spacer(),
          Icon(Icons.more_vert,
            size: 30,
            color: darkblueColor,
          ),
        ],
      ),
    );
  }
}
