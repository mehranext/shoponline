import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loginscreen extends StatefulWidget {


  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen>
 {
   var formkey =GlobalKey<FormState>();
   var emailController = TextEditingController();
   var passwordController = TextEditingController();
   var isObsecure= true.obs;
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
                             child: Column(
                               children: [
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
                                 )
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
