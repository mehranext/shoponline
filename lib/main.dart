import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoponline/consts/themes.dart';
import 'package:shoponline/users/authentication/login_screen.dart';
import 'package:shoponline/users/fragments/dashbord_of_fragments.dart';
import 'package:shoponline/users/userPerferences/user_preferences.dart';

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
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      home: FutureBuilder(
        future: RememberUserPrefs.readUserInfo(),
        builder: (context, dataSnapshot)
        {
          if(dataSnapshot.data == null)
            {
              return Loginscreen();
            }
          else
          {
            return DashbordOfFragments();
          }
      },
      ),
    );
  }
}