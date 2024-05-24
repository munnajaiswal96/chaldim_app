import 'package:chaldim_app/authentication/forgetpasswordthroughemail_page.dart';
import 'package:chaldim_app/authentication/forgetpasswordthroughnumber.dart';
import 'package:chaldim_app/dashboard/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: AssetImage('assets/images/welcomeimage.jpeg'),
                  height: size.height*0.2 ,
                  width: double.maxFinite,
                  ),

                  //login form starts here
                  Form(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            labelText:'E-mail',
                            hintText: "john@gmail.com",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint),
                            labelText:'Password',
                            hintText: "*******",
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.remove_red_eye_rounded),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: (){
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => ForgetPasswordPage()),
                              // );
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context)=>Container(
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Make Selection!',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),),
                                        Text('Select one of the options given below to reset your password.'),
                                        SizedBox(height: 20,),
                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => FPMailPage()),
                                            );
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(25),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10.0),
                                              color: Colors.grey.shade200,
                                            ),
                                            child:Row(
                                              children: [
                                                Icon(Icons.mail_outline,size: 60,),
                                                SizedBox(width: 8,),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                  Text('E-mail',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Text('Reset via E-mail Verification.'),
                                                ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => FPPhonePage()),
                                            );
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(25),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10.0),
                                              color: Colors.grey.shade200,
                                            ),
                                            child:Row(
                                              children: [
                                                Icon(Icons.mobile_friendly_sharp,size: 60,),
                                                SizedBox(width: 8,),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Phone Number',
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.w700,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    Text('Reset via Phone Verification.'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              );
                            },
                            child: Text('Forget Password?'),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: (){},
                              child: Text('Login'),
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
                      SizedBox(height: 10,),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          icon: Image(image: AssetImage('assets/logo/googlelogoimage.png'),width: 20,),
                            onPressed: (){},
                            label: Text('Sign-in with Google'),
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignupPage()),
                            );
                          },
                          child: Text.rich(
                            TextSpan(
                                text: 'Don\'t have an Account?',
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'Signup',
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
