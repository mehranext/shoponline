import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../users/fragments/order_fragment_screenn.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
          Padding(padding: EdgeInsets.only(left: 20,
          ),
            child: Text(
              "DR Shop",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
        Badge(
          backgroundColor: Colors.red,
          padding: EdgeInsets.all(7),
          isLabelVisible: true,
          label: Text(
          "3",
            style: TextStyle(color: Colors.black),
          ),
          child: InkWell(
            onTap: (){Get.to(OrderFragmentScreen());
              },
            child:  Icon(
              Icons.shopping_bag_outlined,
              size:32,
              color: Color(0xFF4C53A5),
            ),
          ),
        ),
        ],
      ),
    );
  }
}
