// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khushi_collection/controllers/google-sign-in-controller.dart';
import 'package:lottie/lottie.dart';
import '../../utils/app-constant.dart';
class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  final GoogleSignInComtroller _googleSignInComtroller=Get.put(GoogleSignInComtroller());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appMainColor,
        elevation: 0,
        // ignore: prefer_const_constructors
        title: Text("Elevate Your Style: MaxStyle!", style: TextStyle(color: Color.fromRGBO(247, 250, 253, 0.878), fontWeight: FontWeight.bold),),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(child: Lottie.asset('assets/images/splash-icon.json'),),

            Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(top: 20),
              // ignore: prefer_const_constructors
              child: Text("Fashion at your fingertips.", 
              style: TextStyle(
                color: AppConstant.appMainColor,
                 fontSize: 18, 
                 fontWeight: FontWeight.bold
                 ),
                 ),
              ),

              SizedBox(
                height: Get.height/24,
              ),
             
              Material(
                child: Container(
                  width: Get.width/1.2,
                  height: Get.height/18,
                  decoration: BoxDecoration(
                    color:Color.fromARGB(224, 1, 37, 68),
                    borderRadius: BorderRadius.circular(20.0),

                  ),
                  child: TextButton.icon(
                    icon: Image.asset('assets/images/final-google-logo.png' , height: Get.height/20,),
                    label: Text("Sign in with google", style: TextStyle(fontSize: 22.0, color: Colors.white)),
                    onPressed: (){
                      _googleSignInComtroller.SignInWithGoogle();
                    },
                    ),
                ),
                ),


              SizedBox(
                height: Get.height/30,
              ),
             
              Material(
                child: Container(
                  width: Get.width/1.2,
                  height: Get.height/18,
                  decoration: BoxDecoration(
                    color:Color.fromARGB(224, 1, 37, 68),
                    borderRadius: BorderRadius.circular(20.0),

                  ),
                  child: TextButton.icon(
                    icon: 
                    Icon(Icons.email,
                    color: AppConstant.appTextColor ),
                    label: Text("Sign in with Email", style: TextStyle(fontSize: 22.0, color: Colors.white)),
                    onPressed: (){},
                    ),
                ),
                )
  

          ],
        ),
      ),
    );
 
  }
}

