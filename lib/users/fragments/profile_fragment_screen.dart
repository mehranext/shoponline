import 'package:flutter/material.dart';
import 'package:shoponline/users/authentication/login_screen.dart';
import 'package:shoponline/users/userPerferences/current_user.dart';
import 'package:get/get.dart';
import 'package:shoponline/users/userPerferences/user_preferences.dart';
class ProfileFragmentScreen extends StatelessWidget
{

 final CurrentUser _currentUser = Get.put(CurrentUser());

signOutUser() async
{
var resultResponse =  await Get.dialog(
  AlertDialog(
    backgroundColor: Colors.grey,
    title: const Text(
      "Logout",
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18),
    ),
    content: const Text(
      "Are You Sure?\n You Want To Logout From App?",
    ),
    actions: [
      TextButton(
          onPressed: ()
          {
            Get.back();
          },
          child: const Text("No",
            style: TextStyle(
                color: Colors.black),
          ),
      ),
      TextButton(
        onPressed: ()
        {
          Get.back(result: "loggedOut");
        },
        child: const Text("Yes",
          style: TextStyle(
              color: Colors.black),
        ),
      ),
    ],
  ),
);

if(resultResponse== 'loggedOut')
{
  //delet the user data from phone local storage

  RememberUserPrefs.removeUserInfo()
      .then((value)
  {
    Get.off(Loginscreen());
  }
  );
}

}

// any time that need this widget you should just call userInf....
//this is the best way to clean and professional coding in app.
  Widget userInfoItemProfile(IconData iconData , String userData)
  {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blueGrey,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 30,
            color: Colors.black,
          ),
          const SizedBox(width: 16,),
          Text(
            userData,
            style: const TextStyle(fontSize:15,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        Image.asset("images/open.png",cacheHeight: 500),
        const SizedBox(height: 20,),
        
        //it's time to call our method
        
        userInfoItemProfile(Icons.person, _currentUser.user.user_name),

        const SizedBox(height: 10,),

        userInfoItemProfile(Icons.email, _currentUser.user.user_email),

        const SizedBox(height: 25,),

        Center(
          child: Material(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              onTap:()
                  {
                    signOutUser();
                  },
              borderRadius: BorderRadius.circular(32),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,vertical: 12,
                ),
                child: Text(
                  "SignOut",style: TextStyle(color: Colors.white,fontSize:16),
                ),
              ),
            ),
          ),
        )
        
      ],
    );
  }
}
