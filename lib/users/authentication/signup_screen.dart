import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoponline/users/authentication/login_screen.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});



  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen>
{
  var formkey =GlobalKey<FormState>();
  var nameController = TextEditingController();
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

                    //Signup screen headder
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 285,
                      child: Image.asset(
                          'images/signup.jpg'
                      ),
                    ),

                    //signup screen sign-up form
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
                              //name - email - password - login button.
                              Form(
                                key: formkey ,
                                child: Column(
                                  children: [

                                    //name
                                    TextFormField(
                                      controller: nameController,
                                      //for email (null or nut we create conditionn)
                                      validator: (val)=> val == ''? 'please write your name friend' : null ,
                                      decoration: InputDecoration(
                                        prefixIcon: const Icon(
                                          Icons.person,
                                          color: Colors.black,
                                        ),
                                        hintText: 'Name...',
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
                                          child: Text('SignUp',
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
                              //already have acc?- button widget signup
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Already Have an Account?',style: TextStyle(color: Colors.white,fontSize: 16,
                                  ),
                                  ),
                                  TextButton(
                                    onPressed: ()
                                    {
                                    Get.to(Loginscreen());
                                    },
                                    child: const Text(
                                      'Login Here',style: TextStyle(color: Colors.lightGreenAccent),
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
