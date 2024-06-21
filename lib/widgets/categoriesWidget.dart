import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i<10;i++)
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Image.asset(
                //using i variable to change pictures in loop :
                "images/$i.png",
                width: 40,
                height: 40,
              ),
              const Text("Bag",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Color(0XFF4C53A5),
              ),)
            ],
          ),
        )
      ],),
    );
  }
}
