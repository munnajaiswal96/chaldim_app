import 'package:chaldim_app/dashboard/bottom_title_page/home_page.dart';
import 'package:chaldim_app/dashboard/main_page.dart';
import 'package:chaldim_app/authentication-controller/otp_phone_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var otp;
    var otpScreen=Get.put(OtpScreen());
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
                maxHeight: MediaQuery.of(context).size.height,
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Image(image: AssetImage('assets/images/codeimage.jpg'),),
                    Text('CO\nDE',style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    Text('Verification',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text('Enter the verification code sent at help@gmail.com'),
                    OtpTextField(
                      numberOfFields: 6,
                      fillColor: Colors.black.withOpacity(0.1),
                      filled: true,
                      keyboardType: TextInputType.number,
                      onSubmit: (code){
                        //print('OTP is =>$code');
                        otp=code;
                        OTPController.instance.verifyOTP(otp);
                      },
                    ),
                    SizedBox(height: 30,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Mainpage()),
                          );
                          OTPController.instance.verifyOTP(otp);
                          // Verify the OTP and navigate to HomePage if successful
                          // OTPController.instance.verifyOTP(otp).then((isVerified) {
                          //   if (isVerified) {
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(builder: (context) => HomePage()),
                          //     );
                          //   } else {
                          //     // Handle OTP verification failure (e.g., show an error message)
                          //     print('OTP verification failed');
                          //   }
                          // });
                        },
                        child: Text('Next'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
