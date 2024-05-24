import 'package:chaldim_app/dashboard/bottom_title_page/home_page.dart';
import 'package:chaldim_app/dashboard/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UpdateprofileScreen extends StatelessWidget {
  const UpdateprofileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Add your onPressed code here!
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context)=>ProfileScreen()),
            );
          },
          icon: Icon(LineAwesomeIcons.angle_left_solid),
        ),
        title: Center(
          child: Text(
            'Edit Profile',
            style: TextStyle(
              color: Colors.black,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            width: 48, // Same width as the leading IconButton to balance the title
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(
                        image: AssetImage('assets/images/profile_image.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue,
                      ),
                      child: Icon(
                        LineAwesomeIcons.camera_solid,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
             SizedBox(height: 30,),
             Form(
                 child: Column(
                   children: [
                     TextFormField(
                       decoration: InputDecoration(
                         prefixIcon: Icon(Icons.person),
                         labelText:'Full Nmae',
                         hintText: "John Wick",
                         border: OutlineInputBorder(),
                       ),
                     ),
                     SizedBox(height: 30,),
                     TextFormField(
                       decoration: InputDecoration(
                         prefixIcon: Icon(Icons.mail_outline),
                         labelText:'E-mail',
                         hintText: "john@gmail.com",
                         border: OutlineInputBorder(),
                       ),
                     ),
                     SizedBox(height: 30,),
                     TextFormField(
                       decoration: InputDecoration(
                         prefixIcon: Icon(Icons.local_phone_sharp),
                         labelText:'Phone Number',
                         hintText: "+977-9*********",
                         border: OutlineInputBorder(),
                       ),
                     ),
                     SizedBox(height: 30,),
                     TextFormField(
                       decoration: InputDecoration(
                         prefixIcon: Icon(Icons.fingerprint),
                         labelText:'Password',
                         hintText: "*******",
                         border: OutlineInputBorder(),
                       ),
                     ),
                     SizedBox(height: 30,),
                     SizedBox(
                       width: double.infinity,
                       child: ElevatedButton(
                         onPressed: (){
                           Navigator.pop(
                             context,
                             MaterialPageRoute(builder: (context)=>ProfileScreen()),
                           );
                         },
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.orangeAccent,
                           side: BorderSide.none,
                           shape: StadiumBorder(),
                         ),
                         child: Text('Save',style: TextStyle(color: Colors.black),
                         ),
                       ),
                     ),
                     SizedBox(height: 30,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text.rich(
                           TextSpan(
                            text: 'Joined on :',
                            style: TextStyle(
                              fontSize:12,
                            ),
                             children: [
                               TextSpan(text: '1st May 2024',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                             ]
                           ),
                         ),
                         ElevatedButton(
                           onPressed: (){
                             Navigator.pop(
                               context,
                               MaterialPageRoute(builder: (context)=>HomePage()),
                             );
                           },
                           style: ElevatedButton.styleFrom(backgroundColor: Colors.red.withOpacity(0.1),
                           elevation: 0,
                           foregroundColor: Colors.red,
                             shape: StadiumBorder(),
                             side: BorderSide.none
                         ),
                           child: Text('Delete'),
                         ),
                       ],
                     ),
                   ],
                 ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}