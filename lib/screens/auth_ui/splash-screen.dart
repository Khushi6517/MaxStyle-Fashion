// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:lottie/lottie.dart';

import '../../utils/app-constant.dart';
import 'welcome-screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  // ignore: must_call_super
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), () {
      Get.offAll(()=> WelcomeScreen());
     });
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    //final size =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor : AppConstant.appSecondaryColor,
      appBar: AppBar(
      backgroundColor: AppConstant.appSecondaryColor,
      elevation: 0,
    ),
    body: Container(
      child:Column(
          children: [
            Expanded(
              child: Container(width:Get.width, 
              alignment: Alignment.center,
              child: Lottie.asset('assets/images/splash-icon.json'),),
            ),
      
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(bottom: 5.0),
               child: Text(
                AppConstant.appMainName,
                // ignore: prefer_const_constructors
                style: const TextStyle(
                color: Color.fromARGB(238, 236, 236, 240),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                ),
               ),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 20.0),
              width: Get.width,
              child: Text(
                AppConstant.appPoweredBy,
                // ignore: prefer_const_constructors
                style: const TextStyle(
                color: AppConstant.appTextColor,
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
       ),
    ),
  );
}
}