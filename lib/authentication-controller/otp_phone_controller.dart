// import 'package:chaldim_app/pages/authentication_repo.dart';
// import 'package:chaldim_app/pages/home_page.dart';
// import 'package:get/get.dart';
//
// class OTPController extends GetxController{
//   static OTPController get instance => Get.find();
//
//   void verifyOTP(String otp) async{
//     var isVerified = await AuthenticationRepo.instance.verificationId(otp);
//     isVerified ? Get.offAll(const HomePage()):Get.back();
//   }
// }

import 'package:chaldim_app/authentication/authentication_repo.dart';
//import 'package:chaldim_app/dashboard/bottom_title_page/home_page.dart';
import 'package:chaldim_app/dashboard/login_page.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  // Get an instance of OTPController using Get.find()
  static OTPController get instance => Get.find();

  // Variable to handle loading state
  var isLoading = false.obs;

  // Method to verify OTP
  void verifyOTP(String otp) async {
    isLoading.value = true; // Start loading

    try {
      var isVerified = await AuthenticationRepo.instance.verificationId(otp);
      // Ensure isVerified is a boolean
      if (isVerified == true) {
        //Get.offAll(() => const HomePage());  // Navigate to HomePage if verified
        Get.offAll(() => const LoginPage());
      } else {
        Get.back(); // Go back if not verified
      }
    } catch (e) {
      // Handle error
      Get.snackbar('Error', 'Failed to verify OTP: $e');
    } finally {
      isLoading.value = false; // Stop loading
    }
  }
}
