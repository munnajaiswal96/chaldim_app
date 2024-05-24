import 'package:chaldim_app/pages/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FPPhonePage extends StatelessWidget {
  const FPPhonePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                    Image(
                      image: AssetImage('assets/images/forget_password.png'),
                    ),
                    Text(
                      'Forget Password',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text('You have selected Verification process through number.',
                      textAlign: TextAlign.center,
                    ),
                    Form(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.phone),
                                labelText: 'Phone Number',
                                hintText: "+977-9*********",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 10,),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => OtpScreen()),
                                  );
                                },
                                child: Text('Next'),
                              ),
                            ),
                          ],
                        ),
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
