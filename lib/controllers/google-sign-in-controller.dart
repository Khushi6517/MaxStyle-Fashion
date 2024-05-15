// ignore_for_file: unused_import, unused_field, non_constant_identifier_names, unused_local_variable, avoid_print, prefer_const_constructors, file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:khushi_collection/models/user-model.dart';
import 'package:khushi_collection/screens/user-panel/main_screen.dart';

class GoogleSignInComtroller extends GetxController{
  final GoogleSignIn googleSignIn =GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;


  Future<void> SignInWithGoogle() async{
    try{
      final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      if(googleSignInAccount != null){
        EasyLoading.show(status: "Please Wait");
        final GoogleSignInAuthentication googleSignInAuthentication=await googleSignInAccount.authentication;


        final AuthCredential credential=GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.idToken,
        );
         
         final UserCredential userCredential = await _auth.signInWithCredential(credential);

         final User? user =userCredential.user;

         if(user != null){
          UserModel userModel=UserModel(
            uId: user.uid,
            username: user.displayName.toString(), 
            email: user.email.toString(),
            phone: user.phoneNumber.toString(), 
            userImg: user.photoURL.toString(), 
            userDeviceToken: '', 
            country: '', 
            userAddress: '', 
            street: '', 
            isAdmin: false, 
            isActive: true, 
            createdOn: DateTime.now(), 
            city: ''
            );

           await FirebaseFirestore.instance
           .collection('users')
           .doc(user.uid)
           .set(userModel.toMap());
           EasyLoading.dismiss();
           Get.offAll(()=>MainScreen());

         }

      }
    } catch(e){
      EasyLoading.dismiss();
      print("error $e");
    }
  }
}