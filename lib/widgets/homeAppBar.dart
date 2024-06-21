import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: AppBar(
        title: const Text(
          'Welcome To Dr Shop',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
        backgroundColor: Theme.of(context).cardColor,
      ),
    );
  }
}
