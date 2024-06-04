import 'package:chaldim_app/authentication/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UserRepo extends GetxController{
  static UserRepo get instance => Get.find();

  final _db=FirebaseFirestore.instance;

  get user => null;

  //store user in firestore
  createUser(UserModel user) async {
    await _db.collection('Users').add(user.toJson())
        .whenComplete(() => Get.snackbar('Success', 'Your account has been created.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green.withOpacity(0.1),
        colorText: Colors.green),
    )
        .catchError((error,stackTrace) {
      Get.snackbar('Error','Something went wrong. Try again',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
      print(error.toString());
    });



  }

  //fetch all users or user details
  Future<UserModel> getUserDetails(String email) async {
    final snapShot=await _db.collection('Users').where('Email',isEqualTo:email).get();
    final userData=snapShot.docs.map((e)=>UserModel.fromSnapshot(e)).single;
    return userData;
  }

  Future<List<UserModel>> getUser() async {
    final snapShot=await _db.collection('Users').get();
    final userData=snapShot.docs.map((e)=>UserModel.fromSnapshot(e)).toList();
    return userData;
  }
}