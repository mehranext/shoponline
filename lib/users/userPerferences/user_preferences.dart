import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoponline/users/model/user.dart';

class RememberUserPrefs {
  //save-remember user info
  static Future<void> saveUserInfo (User userInfo) async
  {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  String userJsonData = jsonEncode(userInfo.toJson());
  await preferences.setString("currentUser", userJsonData);
  //"currentuser" is a key name that we use on current user and parts of save info.
  }

  //get-read user info:
static Future<User?> readUserInfo() async
{
    User? currentUserInfo ;
    SharedPreferences preferences = await SharedPreferences.getInstance();
   String? userInfo = preferences.getString("currentUser");
   if (userInfo !=null)
     {
    Map<String, dynamic> userDataMap = jsonDecode(userInfo);
    currentUserInfo = User.fromJson(userDataMap);
     }
   return currentUserInfo;
}
}