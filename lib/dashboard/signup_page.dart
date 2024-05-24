//self written code



// import 'package:chaldim_app/authentication/user_model.dart';
// import 'package:chaldim_app/dashboard/login_page.dart';
// import 'package:chaldim_app/pages/otp_screen.dart';
// import 'package:chaldim_app/controller_page/signup_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// class SignupPage extends StatelessWidget {
//   const SignupPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final controller=Get.put(SignUpController());
//     final _formKey=GlobalKey<FormState>();
//     final size=MediaQuery.of(context).size;
//     return SafeArea(
//       child:Scaffold(
//         body:SingleChildScrollView(
//           child: Container(
//             padding: EdgeInsets.all(12),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Image(image: AssetImage('assets/images/welcomeimage.jpeg',),
//                   height: size.height*0.2 ,
//                   width: double.maxFinite,),
//                 Text('Get On Board!',
//                   style: TextStyle(
//                     fontSize:20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 5),
//                 Text('Create your profile to start your Journey.',
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.w500,
//                   ),),
//                 Column(
//                   children: [
//                     Form(
//                       key: _formKey,
//                       child: Container(
//                         padding: EdgeInsets.symmetric(vertical: 20.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             TextFormField(
//                               controller:controller.fullName,
//                               decoration: InputDecoration(
//                                 prefixIcon: Icon(Icons.person),
//                                 labelText:'Full Name',
//                                 hintText: "John Wick",
//                                 border: OutlineInputBorder(),
//                               ),
//                             ),
//                             SizedBox(height: 10,),
//                             TextFormField(
//                               controller:controller.email,
//                               decoration: InputDecoration(
//                                 prefixIcon: Icon(Icons.mail_outline),
//                                 labelText:'E-mail',
//                                 hintText: "john@gmail.com",
//                                 border: OutlineInputBorder(),
//                               ),
//                             ),
//                             SizedBox(height: 10,),
//                             TextFormField(
//                               controller:controller.phoneNo,
//                               decoration: InputDecoration(
//                                 prefixIcon: Icon(Icons.local_phone_sharp),
//                                 labelText:'Phone Number',
//                                 hintText: "+977-9*********",
//                                 border: OutlineInputBorder(),
//                               ),
//                             ),
//                             SizedBox(height: 10,),
//                             TextFormField(
//                               controller:controller.password,
//                               decoration: InputDecoration(
//                                 prefixIcon: Icon(Icons.fingerprint),
//                                 labelText:'Password',
//                                 hintText: "*******",
//                                 border: OutlineInputBorder(),
//                                 suffixIcon: IconButton(
//                                   onPressed: null,
//                                   icon: Icon(Icons.remove_red_eye_rounded),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: 10,),
//                             SizedBox(
//                               width: double.infinity,
//                               child: ElevatedButton(
//                                 onPressed: (){
//                                   if(_formKey.currentState!.validate()){
//                                     //email authentication
//                                     //SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
//
//                                     //phone number authentication
//                                     //SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());
//
//                                     //get user nad pass it to controller
//                                     final user=UserModel(
//                                       email: controller.email.text.trim(),
//                                       password:controller.password.text.trim(),
//                                       fullName: controller.fullName.text.trim(),
//                                       phoneNo: controller.phoneNo.text.trim(),
//                                     );
//
//                                     SignUpController.instance.createUser(user);
//
//
//                                     //navigate code
//                                     //Get.to(()=> const OtpScreen());
//                                     // Navigator.push(
//                                     //   context,
//                                     //   MaterialPageRoute(builder: (context) => OtpScreen()),
//                                     // );
//                                   }
//                                 },
//                                 child: Text('SIGNUP'),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text('OR'),
//                     SizedBox(height: 10,),
//                     SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton.icon(
//                         icon: Image(image: AssetImage('assets/logo/googlelogoimage.png'),width: 20,),
//                         onPressed: (){},
//                         label: Text('Sign-in with Google'),
//                       ),
//                     ),
//                     SizedBox(height: 10,),
//                     TextButton(
//                       onPressed: (){
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => LoginPage()),
//                         );
//                       },
//                       child: Text.rich(
//                         TextSpan(
//                           text: 'Already have an Account?',
//                           style: TextStyle(color: Colors.black),
//                           children: [
//                             TextSpan(
//                               text: 'Login',
//                               style: TextStyle(color: Colors.blueAccent),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:chaldim_app/authentication/user_model.dart';
import 'package:chaldim_app/dashboard/login_page.dart';
import 'package:chaldim_app/controller_page/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage('assets/images/welcomeimage.jpeg'),
                  height: size.height * 0.2,
                  width: double.maxFinite,
                ),
                Text(
                  'Get On Board!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Create your profile to start your Journey.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: controller.fullName,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            labelText: 'Full Name',
                            hintText: "John Wick",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your full name';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: controller.email,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail_outline),
                            labelText: 'E-mail',
                            hintText: "john@gmail.com",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: controller.phoneNo,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.local_phone_sharp),
                            labelText: 'Phone Number',
                            hintText: "+977-9*********",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your phone number';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: controller.password,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint),
                            labelText: 'Password',
                            hintText: "*******",
                            border: OutlineInputBorder(),
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                final user = UserModel(
                                  email: controller.email.text.trim(),
                                  password: controller.password.text.trim(),
                                  fullName: controller.fullName.text.trim(),
                                  phoneNo: controller.phoneNo.text.trim(),
                                );
                                controller.createUser(user);
                              }
                            },
                            child: Text('SIGNUP'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('OR'),
                    SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        icon: Image(
                          image: AssetImage('assets/logo/googlelogoimage.png'),
                          width: 20,
                        ),
                        onPressed: () {},
                        label: Text('Sign-in with Google'),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text.rich(
                        TextSpan(
                          text: 'Already have an Account? ',
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
