import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shoponline/consts/themes.dart';
import 'package:shoponline/users/fragments/favorites_fragments_screen.dart';
import 'package:shoponline/users/userPerferences/current_user.dart';
class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Mehran"),
              accountEmail: Text("mehanalaei1219@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(child: Image.asset("images/12.jpg",height:80 ,width: 80,fit: BoxFit.cover,),)
          ),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/login.jpg",
              ),
                fit: BoxFit.cover,
            ),
          ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("favorites"),
            onTap: ()=> Get.to(FavoriteFragmentScreen()),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("friends"),
            onTap: ()=> Get.to(FavoriteFragmentScreen()),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("share"),
            onTap: ()=> Get.to(FavoriteFragmentScreen()),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Request"),
            onTap: ()=> null,
            trailing: Container(
              color: Colors.red,
              width: 20,
              height: 20,
              child: Center(
                child: Text('10'),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("settings"),
            onTap: ()=> Get.to(FavoriteFragmentScreen()),
          ),
          ListTile(
            leading: Icon(Icons.light_mode),
            title: Text("Theme"),
            onTap: (){
              Get.changeTheme(Get.isDarkMode?ThemeData.light():ThemeData.dark());
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Exit"),
            onTap: (){
              //EXIT CODE (DART IO ON TOP REQUIRED)
              if (Platform.isAndroid){
                SystemNavigator.pop();
              }else{
                exit(0);
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("about"),
            onTap: () {
              AlertDialog(title:
              Text('About:\"Nothing to explain thank you"'),
              );
            }
          ),
        ],
      ),
    );
  }
}
