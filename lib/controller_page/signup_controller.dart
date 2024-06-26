// import 'package:chaldim_app/authentication/authentication_repo.dart';
// import 'package:chaldim_app/authentication/user_model.dart';
// import 'package:chaldim_app/authentication/user_repository.dart';
// import 'package:chaldim_app/pages/otp_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// class SignUpController extends GetxController {
//  static SignUpController get instance => Get.find();
//
//  //textfield controller to get data from textfields
//  final email = TextEditingController();
//  final password = TextEditingController();
//  final fullName = TextEditingController();
//  final phoneNo = TextEditingController();
//
//  final userRepo=Get.put(UserRepo());
//
//
//  //call this function from dsign & it will do the rest
//  void registerUser(String email, String password) {
//   AuthenticationRepo.instance.createUserWithEmailAndPassword(email, password);
//   //  String? error=AuthenticationRepo().instance.createUserWithEmailAndPassword(email, password) as String?;
//   //  if(error!=null){
//   //   Get.showSnackbar(GetSnackBar(message: error.toString(),));
//   // }
//  }
//
// //get phone no from user and pass it to auth repository  for firebase authentication
//  Future<void> createUser(UserModel user) async {
//   await userRepo.createUser(user);
//   phoneAuthentication(user.phoneNo);
//  }
//
//
//  void phoneAuthentication(String phoneNo) {
//   AuthenticationRepo.instance.phoneAuthentication(phoneNo);
//   Get.to(()=> const OtpScreen());
//   // Navigator.push(
//   //       context,
//   //       MaterialPageRoute(builder: (context) => OtpScreen()),
//   //     );
//  }
// }



// import 'package:chaldim_app/authentication/authentication_repo.dart';
// import 'package:chaldim_app/authentication/user_model.dart';
// import 'package:chaldim_app/authentication/user_repository.dart';
// import 'package:chaldim_app/pages/otp_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class SignUpController extends GetxController {
//  static SignUpController get instance => Get.find();
//
//  // Textfield controllers to get data from textfields
//  final email = TextEditingController();
//  final password = TextEditingController();
//  final fullName = TextEditingController();
//  final phoneNo = TextEditingController();
//
//  final userRepo = Get.put(UserRepo(), permanent: true);
//
//  // Call this function from the design & it will do the rest
//  void  registerUser(String email, String password) {
//   AuthenticationRepo.instance.createUserWithEmailAndPassword(email, password);
//  }
//
//  // Get phone no from user and pass it to auth repository for firebase authentication
//  Future<void> createUser(UserModel user) async {
//   await userRepo.createUser(user);
//   phoneAuthentication(user.phoneNo);
//  }
//
//  void phoneAuthentication(String phoneNo) {
//   AuthenticationRepo.instance.phoneAuthentication(phoneNo);
//   Get.to(() => const OtpScreen());
//  }
// }


import 'package:chaldim_app/authentication/authentication_repo.dart';
import 'package:chaldim_app/authentication/user_model.dart';
import 'package:chaldim_app/authentication/user_repository.dart';
import 'package:chaldim_app/dashboard/bottom_title_page/home_page.dart';
import 'package:chaldim_app/pages/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
 static SignUpController get instance => Get.find();

 // Textfield controllers to get data from textfields
 final email = TextEditingController();
 final password = TextEditingController();
 final fullName = TextEditingController();
 final phoneNo = TextEditingController();

 final userRepo = Get.put(UserRepo(), permanent: true);

 // Call this function from the design & it will do the rest
 //its only accept email and password

 void registerUser(String email, String password) {
  //AuthenticationRepo.instance.createUserWithEmailAndPassword(email, password);
  String? error=AuthenticationRepo.instance.createUserWithEmailAndPassword(email, password) as String?;
  if(error!=null){
   Get.showSnackbar(GetSnackBar(message: error.toString()));
  }
  //Get.to(()=> const HomePage());
 }

 // Get email from user and pass it to auth repository for firebase authentication
 // Future<void> createUser(UserModel user) async {
 //  await userRepo.createUser(user);
 //  registerUser(user.email);
 // }

 // Get phone no from user and pass it to auth repository for firebase authentication
 Future<void> createUser(UserModel user) async {
  await userRepo.createUser(user);
  phoneAuthentication(user.phoneNo);
  Get.to(()=> const OtpScreen());
 }

 void phoneAuthentication(String phoneNo) {
  AuthenticationRepo.instance.phoneAuthentication(phoneNo);
  //Get.to(() => const OtpScreen());
 }
//
// Future<void> signupAndNavigateToHome() async {
//  final user = UserModel(
//   email: email.text.trim(),
//   password: password.text.trim(),
//   fullName: fullName.text.trim(),
//   phoneNo: phoneNo.text.trim(),
//  );
//
//  await createUser(user);
//
//  // Navigate to HomePage on successful signup
//  Get.offAll(() => HomePage());
// }

}
