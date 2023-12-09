import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../consts/colors.dart';
class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child:
      Row(
        children: [
          InkWell(
            onTap: (){
              Get.put(context);
            },
            child: Icon(Icons.arrow_back,
            size: 30,
            color: darkblueColor,
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20),
          child: Text("Products",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: darkblueColor,
          ),
          ),
          ),
          Spacer(),
          Icon(Icons.favorite,size: 30,color: Colors.red,)
        ],
      ),
    );
  }
}
