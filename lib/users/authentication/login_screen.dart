import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login screen'),
      ),
    );
  }
}
