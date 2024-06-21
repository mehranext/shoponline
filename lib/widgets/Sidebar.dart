import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shoponline/users/fragments/favorites_fragments_screen.dart';
class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: const Text("Mehran"),
              accountEmail: const Text("mehanalaei1219@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(child: Image.asset("images/12.jpg",height:80 ,width: 80,fit: BoxFit.cover,),)
          ),
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("images/login.jpg",
              ),
                fit: BoxFit.cover,
            ),
          ),
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text("favorites"),
            onTap: ()=> Get.to(const FavoriteFragmentScreen()),
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("friends"),
            onTap: ()=> Get.to(const FavoriteFragmentScreen()),
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text("share"),
            onTap: ()=> Get.to(const FavoriteFragmentScreen()),
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text("Request"),
            onTap: (){},
            trailing: Container(
              color: Colors.red,
              width: 20,
              height: 20,
              child: const Center(
                child: Text('10'),
              ),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("settings"),
            onTap: ()=> Get.to(const FavoriteFragmentScreen()),
          ),
          ListTile(
            leading: const Icon(Icons.light_mode),
            title: const Text("Theme"),
            onTap: (){
              Get.changeTheme(Get.isDarkMode?ThemeData.light():ThemeData.dark());
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text("Exit"),
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
            leading: const Icon(Icons.info),
            title: const Text("about"),
            onTap: () {
              const AlertDialog(title:
              Text('About:"Nothing to explain thank you"'),
              );
            }
          ),
        ],
      ),
    );
  }
}
