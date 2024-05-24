import 'package:chaldim_app/dashboard/login_page.dart';
import 'package:chaldim_app/dashboard/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image:AssetImage('assets/images/welcomeimage.jpeg'),
              height: height*0.3,
                //width: double.maxFinite,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Nepal is a land of breathtaking beauty and rich cultural heritage, offering a myriad of experiences for every type of traveler. As you embark on your journey, remember the words of Lao Tzu, "The journey of a thousand miles begins with a single step," capturing the essence of adventure that awaits in the Himalayas. Here, where the mountains meet the sky, John Muirs observation rings true: "In every walk with nature, one receives far more than he seeks.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                      //onPressed: ()=>Get.to(()=> const LoginPage()),
                        child: Text('Login',style: TextStyle(color: Colors.black),),
                        // style: ElevatedButton.styleFrom(
                        //   shape: RoundedRectangleBorder(),
                        //   foregroundColor: Colors.white38,
                        //   side: BorderSide(color: Colors.white38),
                        //   padding: EdgeInsets.symmetric(vertical: 5),
                        ),
                    ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){ Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );},
                      child: Text('Signup',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
