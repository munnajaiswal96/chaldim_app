import 'package:chaldim_app/authentication/authentication_repo.dart';
import 'package:chaldim_app/authentication/user_model.dart';
import 'package:chaldim_app/authentication/user_repository.dart';
import 'package:chaldim_app/dashboard/bottom_title_page/home_page.dart';
import 'package:chaldim_app/pages/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  // Textfield controllers to get data from textfields
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  final userRepo = Get.put(UserRepo(), permanent: true);

  // Call this function from the design & it will do the rest
  //its only accept email and password
  void loginUser(String email, String password) {
    //AuthenticationRepo.instance.createUserWithEmailAndPassword(email, password);
    String? error=AuthenticationRepo.instance.loginUserWithEmailAndPassword(email, password) as String?;
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
