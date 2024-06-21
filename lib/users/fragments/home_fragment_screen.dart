import 'package:flutter/material.dart';
import 'package:shoponline/widgets/Sidebar.dart';
import 'package:shoponline/widgets/homeAppBar.dart';

import '../../widgets/categoriesWidget.dart';
import '../../widgets/itemWidget.dart';

class HomeFragmentScreen extends StatelessWidget
{
  const HomeFragmentScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const SideBar(),
      body: ListView(children: [
        const HomeAppBar(),
        Container(
          //height: 500,
          padding: const EdgeInsets.only(top: 15),
          decoration: const BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Column(
            children: [
              //search Widget
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child:Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border:InputBorder.none,
                          hintText: "Search Here...",
                        ),
                        ),
                      ),
                    const Spacer(),
                    const Icon(
                        Icons.camera_alt,
                      size: 27,
                      color: Color(0xFF4C53A5),
                    ),
                  ],
                ) ,
              ),

              //categories
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: const Text(
                    "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0xFF4C53A5)),
                ),
              ),
              //categories
              const CategoriesWidget(),

              //items
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(
                  vertical: 20, horizontal: 10,),
                child: const Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ),

              //itemsWidget
              const ItemsWidget(),
            ],
          ),
        ),
      ],)
    );
  }
}
