import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoponline/widgets/Sidebar.dart';
import 'package:badges/badges.dart';
import '../users/fragments/order_fragment_screenn.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(height:75,
      child: Container(
        child: AppBar(
          title: Text('Welcome To Dr Shop',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
              ),
          ),
          backgroundColor: Colors.grey,
        ),
      ),
    );
  }
}
