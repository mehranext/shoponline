import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoponline/api_connection/api_connection.dart';
import 'package:shoponline/users/authentication/signup_screen.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shoponline/users/fragments/dashbord_of_fragments.dart';
import 'package:shoponline/users/model/user.dart';
import 'package:shoponline/users/userperferences/user_preferences.dart';


class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});



  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen>
 {
   var formkey =GlobalKey<FormState>();
   var emailController = TextEditingController();
   var passwordController = TextEditingController();
   var isObsecure= true.obs;

   loginUserNow() async
   {
     try
     {
       var res = await http.post(
         Uri.parse(API.login),
         body: { "user_email": emailController.text.trim(),
           "user_password": passwordController.text.trim(),
         },
       );

       if (res.statusCode == 200) {
         var resBodyOfLogin = jsonDecode(res.body);
         if (resBodyOfLogin['success'] == true) {
           Fluttertoast.showToast(
               msg: "Congratulations!! You Are loged in Successfully");

           User userInfo =    User.fromJson(resBodyOfLogin["userData"]);
           //save user info to local storage (using shared preferences).
           await RememberUserPrefs.saveUserInfo(userInfo);
           Future.delayed(const Duration(milliseconds: 2000), ()
           {
             Get.to(DashbordOfFragments());
           });
         } else {
           Fluttertoast.showToast(msg: "please write correct password or email , Try Again Please");
         }
       }
     }
     catch(errorMSG)
     {
       print("Error :: $errorMSG");
     }
   }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
   backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context,cons)
            {
              return ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: cons.maxHeight,
                  ),
                child:SingleChildScrollView(
                  child: Column(
                    children: [

                      //login screen headder
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 285,
                        child: Image.asset(
                          'images/login.jpg'
                        ),
                      ),

                      //login screen sign-in form
                       Padding(
                         padding: const EdgeInsets.all(16.0),
                         child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(60),
                              ),
                              boxShadow: [
                                BoxShadow(blurRadius: 8,
                                color: Colors.black26,
                                  offset: Offset(0 ,-3),
                                ),
                              ]
                            ),
                           child: Padding(
                             //LTRB: Left & Top & Right & Button
                             padding: const EdgeInsets.fromLTRB(30,30,30,8),
                             //lets create our textfeild and buttons / form and row is under coverd by column
                             child: Column(
                               children: [
                                 //email - password - login button.
                                 Form(
                                   key: formkey ,
                                   child: Column(
                                     children: [
                                       //email
                                       TextFormField(
                                        controller: emailController,
                                         //for email (null or nut we create conditionn)
                                         validator: (val)=> val == ''? 'please write email friend' : null ,
                                          decoration: InputDecoration(
                                            prefixIcon: const Icon(
                                                Icons.email,
                                                    color: Colors.black,
                                            ),
                                            hintText: 'Email...',
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(30),
                                              borderSide: const BorderSide(color: Colors.white60)
                                            ),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                  borderSide: const BorderSide(color: Colors.white60)
                                              ) ,
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(30),
                                                borderSide: const BorderSide(color: Colors.white60)
                                            ),
                                            disabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(30),
                                                borderSide: const BorderSide(color: Colors.white60)
                                            ),
                                            contentPadding: const EdgeInsets.symmetric(
                                              horizontal: 14,
                                              vertical: 6,
                                            ),
                                            fillColor: Colors.white ,
                                            filled: true,
                                          ),
                                       ),

                                        const SizedBox(height: 18,),


                                       //password
                                       Obx(
                                           ()=>TextFormField(
                                             controller: passwordController,
                                             obscureText: isObsecure.value ,
                                             //for email (null or nut we create conditionn)
                                             validator: (val)=> val == ''? 'please write Password friend' : null ,
                                             decoration: InputDecoration(
                                               prefixIcon: const Icon(
                                                 Icons.vpn_key_sharp,
                                                 color: Colors.black,
                                               ),
                                               //suffix + OBX is for show password or not
                                               suffixIcon: Obx(
                                                     ()=> GestureDetector(
                                                   onTap:(){
                                                     isObsecure.value = !isObsecure.value;
                                                   },
                                                   child:Icon(
                                                     isObsecure.value? Icons.visibility_off : Icons.visibility,
                                                     color: Colors.black,

                                                   ) ,
                                                 ),
                                               ) ,
                                               hintText: 'Passworrd...',
                                               border: OutlineInputBorder(
                                                   borderRadius: BorderRadius.circular(30),
                                                   borderSide: const BorderSide(color: Colors.white60)
                                               ),
                                               enabledBorder: OutlineInputBorder(
                                                   borderRadius: BorderRadius.circular(30),
                                                   borderSide: const BorderSide(color: Colors.white60)
                                               ) ,
                                               focusedBorder: OutlineInputBorder(
                                                   borderRadius: BorderRadius.circular(30),
                                                   borderSide: const BorderSide(color: Colors.white60)
                                               ),
                                               disabledBorder: OutlineInputBorder(
                                                   borderRadius: BorderRadius.circular(30),
                                                   borderSide: const BorderSide(color: Colors.white60)
                                               ),
                                               contentPadding: const EdgeInsets.symmetric(
                                                 horizontal: 14,
                                                 vertical: 6,
                                               ),
                                               fillColor: Colors.white ,
                                               filled: true,
                                             ),
                                           ),
                                       ),

                                       const SizedBox(height: 18,),
                                       //Button
                                       Material(
                                         color: Colors.black,
                                         borderRadius:BorderRadius.circular(30) ,
                                         child: InkWell(
                                           onTap: ()
                                           {
                                            if(formkey.currentState!.validate()){
                                              loginUserNow();
                                            }
                                           },
                                           borderRadius: BorderRadius.circular(30),
                                           child: const Padding(
                                             padding: EdgeInsets.symmetric(
                                               vertical: 10,
                                               horizontal: 28,
                                             ),
                                             child: Text('LogIn',
                                               style: TextStyle(
                                                 color: Colors.white,
                                                 fontSize: 16,
                                               ),

                                             ),
                                           ),
                                         ),
                                       )
                                     ],
                                   ) ,
                                 ),
                                 const SizedBox(height: 16,),
                                 //dont have acc?- button widget signup
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     const Text(
                                         'Dont Have an Account?',style: TextStyle(color: Colors.white,fontSize: 16,
                                     ),
                                     ),
                                     TextButton(
                                         onPressed: ()
                                         {
                                           Get.to(const Signupscreen());
                                         },
                                         child: const Text(
                                             'SignUp Here',style: TextStyle(color: Colors.lightGreenAccent),
                                         ),
                                     ),
                                   ],

                                 ),

                                 //or text:)
                                 const Text(
                                   'Or',
                                   style: TextStyle(color: Colors.greenAccent,fontSize: 16,
                                   ),
                                 ),

                                 //are u admin?
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     const Text(
                                         'Are You Admin?', style: TextStyle(color: Colors.white,fontSize: 16,
                                     ),
                                     ),
                                     TextButton(
                                       onPressed: ()
                                       {

                                       },
                                       child: const Text(
                                           'Click Here', style: TextStyle(color: Colors.lightGreenAccent),
                                       ),
                                     ),
                                   ],

                                 ),
                               ],
                             ),
                           )  ,
                         ),
                       ),
                    ],
                  ),
                ),
              );
            }
      ),
    );
  }
}
