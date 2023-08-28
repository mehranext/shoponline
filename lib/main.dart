import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoponline/users/authentication/login_screen.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Shop',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: FutureBuilder(
        builder: (context, dataSnapshot)
        {
          return Loginscreen();
      },
      ),
    );
  }
}