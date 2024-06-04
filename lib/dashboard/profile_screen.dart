import 'package:chaldim_app/dashboard/bottom_title_page/home_page.dart';
import 'package:chaldim_app/dashboard/update_profile_screen.dart';
import 'package:chaldim_app/fake_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Add your onPressed code here!
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context)=>HomePage()),
            );
          },
          icon: Icon(LineAwesomeIcons.angle_left_solid),
        ),
        title: Center(
          child: Text(
            'Profile',
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
                    bottom:0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white38,
                      ),
                      child: Icon(LineAwesomeIcons.pen_solid,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text('Munna Jaiswal',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.black),),
              Text('munna.191623@ncit.edu.np',style: TextStyle(color: Colors.black87),),
              SizedBox(height: 10,),
              SizedBox(
                width:200,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>UpdateprofileScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    side: BorderSide.none,
                    shape: StadiumBorder(),
                  ),
                  child: Text('Edit Profile',style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Divider(),
              SizedBox(height: 20,),
              ProfileMenuWidget(title: 'Settings',icon: LineAwesomeIcons.cog_solid,onPress: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>TestPage()),
                );
              }),
              ProfileMenuWidget(title: 'Billing Details',icon: LineAwesomeIcons.wallet_solid,onPress: (){}),
              ProfileMenuWidget(title: 'User Management',icon: LineAwesomeIcons.user_check_solid,onPress: (){}),
              ProfileMenuWidget(title: 'Information',icon: LineAwesomeIcons.info_solid,onPress: (){}),
              ProfileMenuWidget(title: 'Logout',icon: LineAwesomeIcons.sign_out_alt_solid,textColor: Colors.red,endIcon: false,onPress: (){}),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    //key? key,
    required this.title,
    required this.icon,
    this.endIcon=true,
    required this.onPress,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.blueAccent.withOpacity(0.1),
        ),
        //child: Icon(LineAwesomeIcons.cog_solid,color: Colors.blueAccent,),
        child: Icon(
          icon,
          color: textColor ?? Colors.blueAccent,
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
          color: textColor,),
      ),
      trailing:Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.blueAccent.withOpacity(0.1),
        ),
        child: Icon(LineAwesomeIcons.angle_right_solid),
      ),
      // trailing:endIcon? Container(
      //   width: 30,
      //   height: 30,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(100),
      //     color: Colors.blueAccent.withOpacity(0.1),
      //   ),
      //   child: Icon(LineAwesomeIcons.angle_right_solid,color: Colors.blueAccent,size: 18.0,),)
      //     :Container(color: Colors.red,),
    );
  }
}


//113:TextStyle(color: Colors.black)
//
// import 'package:flutter/material.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
//
// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             // Add your onPressed code here!
//           },
//           icon: Icon(LineAwesomeIcons.angle_left_solid),
//         ),
//         title: Center(
//           child: Text(
//             'Profile',
//             style: TextStyle(
//               color: Colors.black,
//               // fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         actions: [
//           Container(
//             width: 48, // Same width as the leading IconButton to balance the title
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: EdgeInsets.all(12),
//           child: Column(
//             children: [
//               SizedBox(
//                 width: 120,
//                 height: 120,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(100),
//                   child: Image(
//                     image: AssetImage('assets/images/profile_image.jpg'),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Munna Jaiswal',
//                 style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
//               ),
//               Text(
//                 'munna.191623@ncit.edu.np',
//                 style: TextStyle(color: Colors.black87),
//               ),
//               SizedBox(height: 10),
//               SizedBox(
//                 width: 200,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.orangeAccent,
//                     side: BorderSide.none,
//                     shape: StadiumBorder(),
//                   ),
//                   child: Text(
//                     'Edit Profile',
//                     style: TextStyle(color: Colors.black),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Divider(),
//               SizedBox(height: 20),
//               ProfileMenuWidget(
//                 title: 'Settings',
//                 icon: LineAwesomeIcons.cog_solid,
//                 onPress: () {},
//               ),
//               ProfileMenuWidget(
//                 title: 'Billing Details',
//                 icon: LineAwesomeIcons.wallet_solid,
//                 onPress: () {},
//               ),
//               ProfileMenuWidget(
//                 title: 'User Management',
//                 icon: LineAwesomeIcons.user_check_solid,
//                 onPress: () {},
//               ),
//               ProfileMenuWidget(
//                 title: 'Information',
//                 icon: LineAwesomeIcons.info_solid,
//                 onPress: () {},
//               ),
//               ProfileMenuWidget(
//                 title: 'Logout',
//                 icon: LineAwesomeIcons.sign_out_alt_solid,
//                 textColor: Colors.red,
//                 endIcon: false,
//                 onPress: () {},
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ProfileMenuWidget extends StatelessWidget {
//   const ProfileMenuWidget({
//     super.key,
//     required this.title,
//     required this.icon,
//     this.endIcon = true,
//     required this.onPress,
//     this.textColor,
//   });
//
//   final String title;
//   final IconData icon;
//   final VoidCallback onPress;
//   final bool endIcon;
//   final Color? textColor;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: onPress,
//       leading: Container(
//         width: 30,
//         height: 30,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(100),
//           color: Colors.blueAccent.withOpacity(0.1),
//         ),
//         child: Icon(icon, color: Colors.blueAccent),
//       ),
//       title: Text(
//         title,
//         style: TextStyle(color: Colors.black).apply(color: textColor),
//       ),
//       trailing: endIcon
//           ? Container(
//         width: 30,
//         height: 30,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(100),
//           color: Colors.blueAccent.withOpacity(0.1),
//         ),
//         child: Icon(
//           LineAwesomeIcons.angle_right_solid,
//           color: Colors.blueAccent,
//           size: 18.0,
//         ),
//       )
//           : Container(),
//     );
//   }
// }
