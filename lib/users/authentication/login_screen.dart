import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});


  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
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

                    ],
                  ),
                ),
              );
            }
      ),
    );
  }
}
