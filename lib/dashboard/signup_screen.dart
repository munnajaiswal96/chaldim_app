// import 'package:chaldim_app/controller_page/signup_controller.dart';
// import 'package:chaldim_app/dashboard/login_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // final controller=Get.put(SignUpController());
//     // final _formKey=GlobalKey<FormState>();
//     final size=MediaQuery.of(context).size;
//     return SafeArea(
//         child: Scaffold(
//            body: SingleChildScrollView(
//              child: Container(
//                padding: EdgeInsets.all(12),
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: [
//                    Image(image: AssetImage('assets/images/welcomeimage.jpeg',),
//                    height: size.height*0.2,
//                    width: double.maxFinite,
//                    ),
//                    Text('Get On Board!',
//                      style: TextStyle(
//                     fontSize:20,
//                     fontWeight: FontWeight.bold,),
//                   ),
//                    Text('Create your profile to start ypur journey.',
//                      style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.w500,
//                   ),
//                   ),
//                    Container(
//                      padding: EdgeInsets.symmetric(vertical: 10),
//                      child: Form(
//                       // key: _formKey,
//                        child: Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                             TextFormField(
//                               //controller:controller.fullName,
//                               decoration:InputDecoration(
//                                  label: Text('Full Name'),
//                                 hintText: 'John Wick',
//                                 border: OutlineInputBorder(),
//                                 prefixIcon: Icon(Icons.person,
//                                 color: Colors.black,
//                                 ),
//                                 labelStyle: TextStyle(color:Colors.black),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(width: 2.0,color: Colors.black)
//                                 ),
//                               ),
//                             ),
//                            SizedBox(height: 20),
//                            TextFormField(
//                              decoration:InputDecoration(
//                                label: Text('E-mail'),
//                                hintText:'johnwick@gmail.com',
//                                border: OutlineInputBorder(),
//                                prefixIcon: Icon(Icons.mail,
//                                  color: Colors.black,
//                                ),
//                                labelStyle: TextStyle(color:Colors.black),
//                                focusedBorder: OutlineInputBorder(
//                                    borderSide: BorderSide(width: 2.0,color: Colors.black)
//                                ),
//                              ),
//                            ),
//                            SizedBox(height: 20),
//                            TextFormField(
//                              decoration:InputDecoration(
//                                label: Text('Phone Number'),
//                                hintText: '+9779*********',
//                                border: OutlineInputBorder(),
//                                prefixIcon: Icon(Icons.phone,
//                                  color: Colors.black,
//                                ),
//                                labelStyle: TextStyle(color:Colors.black),
//                                focusedBorder: OutlineInputBorder(
//                                    borderSide: BorderSide(width: 2.0,color: Colors.black)
//                                ),
//                              ),
//                            ),
//                            SizedBox(height: 20),
//                            TextFormField(
//                              decoration:InputDecoration(
//                                label: Text('Password'),
//                                hintText: '*********',
//                                border: OutlineInputBorder(),
//                                prefixIcon: Icon(Icons.fingerprint,
//                                  color: Colors.black,
//                                ),
//                                labelStyle: TextStyle(color:Colors.black),
//                                focusedBorder: OutlineInputBorder(
//                                    borderSide: BorderSide(width: 2.0,color: Colors.black)
//                                ),
//                              ),
//                            ),
//                            SizedBox(height: 20),
//                            SizedBox(
//                              width: double.infinity,
//                              child: ElevatedButton(
//                                  onPressed: (){},
//                                  child: Text('Sign Up'),
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                    ),
//                    Column(
//                      children: [
//                        SizedBox(height: 20),
//                        Center(child: Text('OR')),
//                        SizedBox(height: 20),
//                        SizedBox(
//                          width: double.infinity,
//                          child: OutlinedButton.icon(
//                            onPressed: (){},
//                            icon:Image(image:AssetImage('assets/logo/googlelogoimage.png'),width: 20.0,),
//                            label: Text('Sign-In with Google'),
//                          ),
//                        ),
//                        SizedBox(height: 20),
//                      TextButton(
//                          onPressed: (){
//                            Navigator.push(
//                              context,
//                              MaterialPageRoute(builder: (context) => LoginPage()),
//                            );
//                          },
//                          child: Text.rich(
//                              TextSpan(
//                                children: [
//                                 TextSpan(text:'Already have an account?',style: TextStyle(color: Colors.black),),
//                                  TextSpan(text: 'Login'),
//                                  // Navigator(),
//                                ],
//                              )
//                          ),
//                      ),
//                      ],
//                    ),
//
//                  ],
//                ),
//
//              ),
//            ),
//         ),
//     );
//   }
// }
//

//


import 'package:chaldim_app/controller_page/signup_controller.dart';
import 'package:chaldim_app/dashboard/login_page.dart';
import 'package:chaldim_app/pages/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../authentication/user_model.dart';
import 'bottom_title_page/home_page.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final SignUpController controller = Get.put(SignUpController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                  'Create your profile to start your journey.',
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
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return 'Please enter your full name';
                          //   }
                          //   return null;
                          // },
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
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return 'Please enter your email';
                          //   }
                          //   return null;
                          // },
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
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return 'Please enter your phone number';
                          //   }
                          //   return null;
                          // },
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
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return 'Please enter your password';
                          //   }
                          //   return null;
                          // },
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              //if(_formKey.currentState!.validate()){

                              //this is for email authentication
                              //SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                              //Get.to(()=> const HomePage());


                              //this is for only phone authentication
                              // SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());
                              // Get.to(()=> const OtpScreen());
                              //}

                              if (_formKey.currentState!.validate()) {
                                final user = UserModel(
                                  email: controller.email.text.trim(),
                                  password: controller.password.text.trim(),
                                  fullName: controller.fullName.text.trim(),
                                  phoneNo: controller.phoneNo.text.trim(),
                                );
                                //controller.createUser(user);
                                SignUpController.instance.createUser(user);
                                //Get.to(()=>const OtpScreen());
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
