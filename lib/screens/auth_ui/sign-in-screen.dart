// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:khushi_collection/screens/auth_ui/sign-up-screen.dart';
import 'package:khushi_collection/utils/app-constant.dart';
import 'package:lottie/lottie.dart';




class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

   @override
   State<SignInScreen> createState() => _SignInScreenState();


}

  // This widget is the root of your application.

class _SignInScreenState extends State<SignInScreen>{
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: AppConstant.appSecondaryColor,
        centerTitle: true,
        title: Text('Sign In',
        style: TextStyle(color: AppConstant.appTextColor,fontWeight: FontWeight.bold),),
       ),



       body: Container(
        child: Column(
          children: [
            isKeyboardVisible? Text("Welcome to MaxStyle!", style: TextStyle(color: AppConstant.appMainColor,fontWeight: FontWeight.bold),):
            Column(
              children: [
                Lottie.asset("assets/images/splash-sign-in.json", width: Get.width, height: Get.height/2.5)],
            ),

            SizedBox(
              height: Get.height/20,
            ),



             Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  cursorColor: AppConstant.appSecondaryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email),
                    contentPadding: EdgeInsets.only(top: 2.0,left: 8.0),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              )),

                Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  cursorColor: AppConstant.appSecondaryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility_off),
                    contentPadding: EdgeInsets.only(top: 2.0,left: 8.0),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              )),

             Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 1.0),
              child: Text(
                "Forget Password",
                style: TextStyle(color: AppConstant.appSecondaryColor,fontWeight: FontWeight.bold),
              ),
             ),

             SizedBox(
                height: Get.height/20,
              ),
              Material(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: Get.width/2.5,
                  height: Get.height/18,
                  decoration: BoxDecoration(
                    color:Color.fromARGB(224, 1, 37, 68),
                    borderRadius: BorderRadius.circular(20.0),

                  ),
                  child: TextButton(
                         child: Text("Sign In", 
                         style: TextStyle(fontSize: 22.0, color: Colors.white)
                         ),
                    onPressed: (){},
                    ),
                ),
                ),
                      
                      SizedBox(
                        height: Get.height/20,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(color: AppConstant.appSecondaryColor),
                        ),
                        GestureDetector(
                          onTap: () => Get.offAll(() => SignUpScreen()),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: AppConstant.appSecondaryColor,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],),


              
          ],
         
        ),
       ),
     );
     });
 }
}