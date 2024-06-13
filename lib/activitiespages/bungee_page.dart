// import 'package:chaldim_app/test/rtdb_test.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
//
// import '../../dashboard/bottom_title_page/home_page.dart';
// import '../dummy_page/data_test_screen.dart';
// import '../api/bungee/add_posts.dart';
// import '../api/bungee/bungee_data/pokhara_bungee_jump.dart';
// import '../api/bungee/bungee_data_screen.dart';
//
// class BungeeScreen extends StatefulWidget {
//   const BungeeScreen({super.key});
//
//   @override
//   State<BungeeScreen> createState() => _BungeeScreenState();
// }
//
// class _BungeeScreenState extends State<BungeeScreen> {
//   final List<Map<String, dynamic>> bungeeData = [
//     {'name': 'Bhote Kosi River', 'location': 'Arniko Highway, Listikot, Nepal', 'rating': 'Rating 1', 'price': 'For Nepalese citizens: NPR 6,000 \nFor SAARC Countries and Chinese: NPR 9,000 \nFor Foreigners: NPR 12,000 ', 'time':'9AM-6PM','page': BungeeDataScreen()},
//     {'name': 'Hemja, Pokhara', 'location': ' Highground Bungee, Hemja, Pokhara, Kaski district, Nepal', 'rating': 'Rating 2', 'price': 'For Nepalese citizens: NPR 4,000 \nFor SAARC countries: NPR 6,500 \nFor Foreigners: NPR 7,500','time':'Time', 'page': AddPostsScreens()},
//     {'name': 'Bungy Nepal Adventure', 'location': ' Pardi Bazaar, Pokhara 33700, Nepal', 'rating': 'Rating 1', 'price': 'Rs.8000', 'time':'9:00 AM – 5:00 PM','page': DataTestScreen()},
//     {'name': 'Highground Bungee Station', 'location': 'Baglung Rajmarg, Pokhara 33700, Nepal', 'rating': 'Rating 2', 'price': 'Price 2','time':'9:00 AM – 5:00 PM', 'page': TestScreen()},
//     {'name': 'Bhotekosi Bungee Jump', 'location': 'Araniko Highway, Listikot 45301, Nepal', 'rating': 'Rating 1', 'price': 'Price 1', 'time':'Open 24 hours','page': TestScreen()},
//     {'name': 'The Last Resort ', 'location': 'Mandala Street, Kathmandu 44600, Nepal', 'rating': 'Rating 2', 'price': 'Price 2','time':' 10:00 AM – 7:00 PM', 'page': TestScreen()},
//     {'name': 'Kushma Bungee Jump', 'location': 'Kushma,Nepal', 'rating': 'Rating 1', 'price': 'Rs.7500', 'time':'9AM-8PM','page': TestScreen()},
//     {'name': 'Eligibility for bungee jumping', 'location': 'Pokhara', 'rating': 'Rating 2', 'price': 'Rs.7500','time':'9AM-8PM', 'page': TestScreen()},
//     {'name': 'Pokhara Bungee jump', 'location': 'Pokhara', 'rating': 'Rating 1', 'price': 'Rs.6000', 'time':'9AM-8PM','page': PokharaBungeeJump()},
//     // {'name': 'Name 12', 'location': 'Location 2', 'rating': 'Rating 2', 'price': 'Price 2','time':'Time', 'page': TestScreen()},
//     // Add more rows as needed
//   ];
//
//   final auth=FirebaseAuth.instance;
//   final ref = FirebaseDatabase.instance.ref('Bungee');
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(
//               context,
//               MaterialPageRoute(builder: (context) => HomePage()),
//             );
//           },
//           icon: Icon(LineAwesomeIcons.angle_left_solid),
//         ),
//         title: Center(
//           child: Text(
//             'Bungy Jumping',
//             style: TextStyle(
//               color: Colors.black,
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
//
//       body: SingleChildScrollView(
//         child: Column(
//           children: bungeeData.map((data) => buildBungeeRow(context, data)).toList(),
//         ),
//       ),
//     );
//   }
//
//   Widget buildBungeeRow(BuildContext context, Map<String, dynamic> data) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: GestureDetector(
//         onTap: () {
//           //this is for row navigation when user click any row then it will navigate to another page
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => data['page']),
//            // MaterialPageRoute(builder: (context)=>AddPostsScreens()),
//           );
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.blue.shade50, // Apply background color
//             borderRadius: BorderRadius.circular(8), // Add rounded corners
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.5),
//                 spreadRadius: 2,
//                 blurRadius: 5,
//                 offset: Offset(0, 3),
//               ),
//             ],
//           ),
//           padding: EdgeInsets.all(16.0),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Row(
//                     //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     //   children: [
//                     //     Text(data['name'], style: TextStyle(color: Colors.black, fontSize: 20)),
//                     //     Text(data['location'], style: TextStyle(fontSize: 15, color: Colors.grey)),
//                     //   ],
//                     // ),
//                     Text(data['name'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                     SizedBox(height: 8), // Add spacing between the text sections
//                     Text(data['location'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                     SizedBox(height: 8),
//                     Text(data['rating'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                     SizedBox(height: 8),
//                     Text(data['price'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                     SizedBox(height: 8),
//                     Text(data['time'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                   ],
//                 ),
//               ),
//               SizedBox(width: 16), // Add some spacing between the columns
//               Expanded(
//                 child: Container(
//                   height: 100, // Set a fixed height for the image container
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/images/bunjump.jpeg'),
//                       fit: BoxFit.cover,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


//
// // Placeholder for the details pages
// class DetailsPage1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Details Page 1'),
//       ),
//       body: Center(
//         child: Text('Details about Bungy Jumping 1'),
//       ),
//     );
//   }
// }


// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
//
// import '../../dashboard/bottom_title_page/home_page.dart';
// import '../api/bungee/add_posts.dart';
// import '../test/rtdb_test.dart';
//
// class BungeeScreen extends StatefulWidget {
//   const BungeeScreen({super.key});
//
//   @override
//   State<BungeeScreen> createState() => _BungeeScreenState();
// }
//
// class _BungeeScreenState extends State<BungeeScreen> {
//   final auth = FirebaseAuth.instance;
//   final ref = FirebaseDatabase.instance.ref('Bungee');
//
//   List<Map<String, dynamic>> bungeeData = [];
//
//   void _navigateToDestination(BuildContext context, String title) {
//     switch (title) {
//       case 'The Last Resort':
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => BungeeScreen(),
//           ),
//         );
//         break;
//       case 'HighGround Adventures':
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => TestScreen(),
//           ),
//         );
//         break;
//       default:
//         break;
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     fetchBungeeData();
//   }
//
//   void fetchBungeeData() async {
//     final snapshot = await ref.get();
//     if (snapshot.exists) {
//       final data = snapshot.value as Map<dynamic, dynamic>;
//       setState(() {
//         bungeeData = data.entries.map((entry) {
//           return {
//             'name': entry.value['name'],
//             'location': entry.value['location'],
//             'rating': entry.value['rating'],
//             'price': entry.value['price'],
//             'time': entry.value['time'],
//             'img': entry.value['img'],
//             //'page': determinePage(entry.value['name']),
//           };
//         }).toList();
//       });
//     }
//   }
//
//   // Widget determinePage(String name) {
//   //   switch (name) {
//   //     case 'The Last Resort':
//   //       return AddPostsScreens();
//   //     case 'HighGround Adventures':
//   //       return AddPostsScreens();
//   //     default:
//   //       return TestScreen();
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(
//               context,
//               MaterialPageRoute(builder: (context) => HomePage()),
//             );
//           },
//           icon: Icon(LineAwesomeIcons.angle_left_solid),
//         ),
//         title: Center(
//           child: Text(
//             'Bungy Jumping',
//             style: TextStyle(
//               color: Colors.black,
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
//         child: Column(
//           children: bungeeData.map((data) => buildBungeeRow(context, data)).toList(),
//         ),
//       ),
//     );
//   }
//
//   Widget buildBungeeRow(BuildContext context, Map<String, dynamic> data) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: GestureDetector(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => data['page']),
//           );
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.blue.shade50, // Apply background color
//             borderRadius: BorderRadius.circular(8), // Add rounded corners
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.5),
//                 spreadRadius: 2,
//                 blurRadius: 5,
//                 offset: Offset(0, 3),
//               ),
//             ],
//           ),
//           padding: EdgeInsets.all(16.0),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(data['name'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                     SizedBox(height: 8),
//                     Text(data['location'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                     SizedBox(height: 8),
//                     Text(data['rating'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                     SizedBox(height: 8),
//                     Text(data['price'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                     SizedBox(height: 8),
//                     Text(data['time'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                   ],
//                 ),
//               ),
//               SizedBox(width: 16), // Add some spacing between the columns
//               Expanded(
//                 child: Container(
//                   height: 100, // Set a fixed height for the image container
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: NetworkImage(data['img']),
//                       fit: BoxFit.cover,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Placeholder for the details pages
// class DetailsPage1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Details Page 1'),
//       ),
//       body: Center(
//         child: Text('Details about Bungy Jumping 1'),
//       ),
//     );
//   }
// }


//
// import 'package:chaldim_app/test/rtdb_test.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
//
// import '../../dashboard/bottom_title_page/home_page.dart';
// import '../dummy_page/data_test_screen.dart';
// import '../api/bungee/add_posts.dart';
// import '../api/bungee/bungee_data/pokhara_bungee_jump.dart';
// import '../api/bungee/bungee_data_screen.dart';
//
// class BungeeScreen extends StatefulWidget {
//   const BungeeScreen({super.key});
//
//   @override
//   State<BungeeScreen> createState() => _BungeeScreenState();
// }
//
// class _BungeeScreenState extends State<BungeeScreen> {
//   // final List<Map<String, dynamic>> bungeeData = [
//   //   {'name': 'Bhote Kosi River', 'location': 'Arniko Highway, Listikot, Nepal', 'rating': 'Rating 1', 'price': 'For Nepalese citizens: NPR 6,000 \nFor SAARC Countries and Chinese: NPR 9,000 \nFor Foreigners: NPR 12,000 ', 'time':'9AM-6PM','page': BungeeDataScreen()},
//   //   {'name': 'Hemja, Pokhara', 'location': ' Highground Bungee, Hemja, Pokhara, Kaski district, Nepal', 'rating': 'Rating 2', 'price': 'For Nepalese citizens: NPR 4,000 \nFor SAARC countries: NPR 6,500 \nFor Foreigners: NPR 7,500','time':'Time', 'page': AddPostsScreens()},
//   //   {'name': 'Bungy Nepal Adventure', 'location': ' Pardi Bazaar, Pokhara 33700, Nepal', 'rating': 'Rating 1', 'price': 'Rs.8000', 'time':'9:00 AM – 5:00 PM','page': DataTestScreen()},
//   //   {'name': 'Highground Bungee Station', 'location': 'Baglung Rajmarg, Pokhara 33700, Nepal', 'rating': 'Rating 2', 'price': 'Price 2','time':'9:00 AM – 5:00 PM', 'page': TestScreen()},
//   //   {'name': 'Bhotekosi Bungee Jump', 'location': 'Araniko Highway, Listikot 45301, Nepal', 'rating': 'Rating 1', 'price': 'Price 1', 'time':'Open 24 hours','page': TestScreen()},
//   //   {'name': 'The Last Resort ', 'location': 'Mandala Street, Kathmandu 44600, Nepal', 'rating': 'Rating 2', 'price': 'Price 2','time':' 10:00 AM – 7:00 PM', 'page': TestScreen()},
//   //   {'name': 'Kushma Bungee Jump', 'location': 'Kushma,Nepal', 'rating': 'Rating 1', 'price': 'Rs.7500', 'time':'9AM-8PM','page': TestScreen()},
//   //   {'name': 'Eligibility for bungee jumping', 'location': 'Pokhara', 'rating': 'Rating 2', 'price': 'Rs.7500','time':'9AM-8PM', 'page': TestScreen()},
//   //   {'name': 'Pokhara Bungee jump', 'location': 'Pokhara', 'rating': 'Rating 1', 'price': 'Rs.6000', 'time':'9AM-8PM','page': PokharaBungeeJump()},
//   //   // {'name': 'Name 12', 'location': 'Location 2', 'rating': 'Rating 2', 'price': 'Price 2','time':'Time', 'page': TestScreen()},
//   //   // Add more rows as needed
//   // ];
//
//   final auth=FirebaseAuth.instance;
//   final ref = FirebaseDatabase.instance.ref('Bungee');
//
//   void  _navigateToDestination(BuildContext context,String title){
//     switch(title){
//       case 'The Last Resort':
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context)=>TestScreen(),
//           ),
//         );
//         break;
//       case 'HighGround Adventures':
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context)=>TestScreen(),
//           ),
//         );
//         break;
//       default:
//         break;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(
//               context,
//               MaterialPageRoute(builder: (context) => HomePage()),
//             );
//           },
//           icon: Icon(LineAwesomeIcons.angle_left_solid),
//         ),
//         title: Center(
//           child: Text(
//             'Bungy Jumping',
//             style: TextStyle(
//               color: Colors.black,
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
//
//       body: SingleChildScrollView(
//         child: Column(
//           //children: bungeeData.map((data) => buildBungeeRow(context, data)).toList(),
//         ),
//       ),
//     );
//   }
//
//   Widget buildBungeeRow(BuildContext context, Map<String, dynamic> data) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: GestureDetector(
//         onTap: () {
//           //this is for row navigation when user click any row then it will navigate to another page
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => data['page']),
//            // MaterialPageRoute(builder: (context)=>AddPostsScreens()),
//           );
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.blue.shade50, // Apply background color
//             borderRadius: BorderRadius.circular(8), // Add rounded corners
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.5),
//                 spreadRadius: 2,
//                 blurRadius: 5,
//                 offset: Offset(0, 3),
//               ),
//             ],
//           ),
//           padding: EdgeInsets.all(16.0),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(data['name'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                     SizedBox(height: 8), // Add spacing between the text sections
//                     Text(data['location'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                     SizedBox(height: 8),
//                     Text(data['rating'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                     SizedBox(height: 8),
//                     Text(data['price'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                     SizedBox(height: 8),
//                     Text(data['time'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                   ],
//                 ),
//               ),
//               SizedBox(width: 16), // Add some spacing between the columns
//               Expanded(
//                 child: Container(
//                   height: 100, // Set a fixed height for the image container
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/images/bunjump.jpeg'),
//                       fit: BoxFit.cover,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
// import '../../dashboard/bottom_title_page/home_page.dart';
// import '../api/bungee/add_posts.dart';
// import '../api/bungee/bungee_data_screen.dart';
// import '../test/rtdb_test.dart';
//
// class BungeeScreen extends StatefulWidget {
//   const BungeeScreen({super.key});
//
//   @override
//   State<BungeeScreen> createState() => _BungeeScreenState();
// }
//
// class _BungeeScreenState extends State<BungeeScreen> {
//   final FirebaseAuth auth = FirebaseAuth.instance;
//   final DatabaseReference ref = FirebaseDatabase.instance.ref('Bungee');
//
//   List<Map<String, dynamic>> bungeeData = [];
//
//   @override
//   void initState() {
//     super.initState();
//     fetchBungeeData();
//   }
//
//   void fetchBungeeData() async {
//     DataSnapshot snapshot = await ref.get();
//     if (snapshot.exists) {
//       List<Map<String, dynamic>> fetchedData = [];
//
//       snapshot.children.forEach((branch) {
//         branch.children.forEach((dataSnapshot) {
//           final data = dataSnapshot.value as Map<dynamic, dynamic>;
//           fetchedData.add({
//             'name': data['name'],
//             'location': data['location'],
//             'rating': data['rating'],
//             'price': data['price'],
//             'time': data['time'],
//             'img': data['img'],
//            // 'page': getPageForData(data['name']),
//           });
//         });
//       });
//
//       setState(() {
//         bungeeData = fetchedData;
//       });
//     }
//   }
//
//   Widget getPageForData(String name) {
//     switch (name) {
//       case 'The Last Resort':
//         return BungeeDataScreen();
//       case 'HighGround Adventures':
//         return AddPostsScreens();
//       default:
//         return TestScreen();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(
//               context,
//               MaterialPageRoute(builder: (context) => HomePage()),
//             );
//           },
//           icon: Icon(LineAwesomeIcons.angle_left_solid),
//         ),
//         title: Center(
//           child: Text(
//             'Bungy Jumping',
//             style: TextStyle(
//               color: Colors.black,
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
//       body: bungeeData.isEmpty
//           ? Center(child: CircularProgressIndicator())
//           : SingleChildScrollView(
//         child: Column(
//           children: bungeeData.map((data) => buildBungeeRow(context, data)).toList(),
//         ),
//       ),
//     );
//   }
//
//   Widget buildBungeeRow(BuildContext context, Map<String, dynamic> data) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: GestureDetector(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => data['page']),
//           );
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.blue.shade50, // Apply background color
//             borderRadius: BorderRadius.circular(8), // Add rounded corners
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.5),
//                 spreadRadius: 2,
//                 blurRadius: 5,
//                 offset: Offset(0, 3),
//               ),
//             ],
//           ),
//           padding: EdgeInsets.all(16.0),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(data['name'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                     SizedBox(height: 8), // Add spacing between the text sections
//                     Text(data['location'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                     SizedBox(height: 8),
//                     Text(data['rating'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                     SizedBox(height: 8),
//                     Text(data['price'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                     SizedBox(height: 8),
//                     Text(data['time'], style: TextStyle(fontSize: 16, color: Colors.black)),
//                   ],
//                 ),
//               ),
//               SizedBox(width: 16), // Add some spacing between the columns
//               Expanded(
//                 child: Container(
//                   height: 100, // Set a fixed height for the image container
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: NetworkImage(data['img']), // Use NetworkImage to load from a URL
//                       fit: BoxFit.cover,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_database/ui/firebase_animated_list.dart';
// import 'package:flutter/material.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
// import '../../dashboard/bottom_title_page/home_page.dart';
// import '../activities_pages_data/bungee/highgrgound_adventures.dart';
// import '../activities_pages_data/bungee/the_last_resort.dart';
//
//
// class BungeeScreen extends StatefulWidget {
//   const BungeeScreen({super.key});
//
//   @override
//   State<BungeeScreen> createState() => _BungeeScreenState();
// }
//
// class _BungeeScreenState extends State<BungeeScreen> {
//   final auth = FirebaseAuth.instance;
//   final ref = FirebaseDatabase.instance.ref('Bungee');
//
//   void _navigateToDestination(BuildContext context, String title) {
//     switch (title) {
//       case 'The Last Resort':
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => TheLastResort()),
//         );
//         break;
//       case 'HighGround Adventures':
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => HighgroundAdv()),
//         );
//         break;
//       default:
//         break;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(
//               context,
//               MaterialPageRoute(builder: (context) => HomePage()),
//             );
//           },
//           icon: Icon(LineAwesomeIcons.angle_left_solid),
//         ),
//         title: Center(
//           child: Text(
//             'Bungy Jumping',
//             style: TextStyle(
//               color: Colors.black,
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
//       body: FirebaseAnimatedList(
//         query: ref,
//         itemBuilder: (context, snapshot, animation, index) {
//           final Map<dynamic, dynamic> data = snapshot.value as Map<dynamic, dynamic>;
//           final title = data['title'].toString();
//           final location = data['location'].toString();
//           final price = data['price'].toString();
//           final time = data['time'].toString();
//           final rating = data['rating'].toString();
//           final img = data['img'].toString();
//
//           return Padding(
//             padding: EdgeInsets.all(8.0),
//             child: GestureDetector(
//               onTap: () => _navigateToDestination(context, title),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.blue.shade50,
//                   borderRadius: BorderRadius.circular(8),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 padding: EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(title, style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w700)),
//                           SizedBox(height: 8),
//                           Text(location,
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   color: Colors.black,
//                                   //fontWeight: FontWeight.bold,
//                               ),
//                           ),
//                           SizedBox(height: 8),
//                           Text(price, style: TextStyle(fontSize: 16, color: Colors.black)),
//                           SizedBox(height: 8),
//                           Text(time, style: TextStyle(fontSize: 16, color: Colors.black)),
//                           SizedBox(height: 8),
//                           Text(rating, style: TextStyle(fontSize: 16, color: Colors.black)),
//                         ],
//                       ),
//                     ),
//                     SizedBox(width: 16),
//                     Expanded(
//                       child: Container(
//                         height: 100,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: NetworkImage(img),
//                             fit: BoxFit.cover,
//                           ),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../dashboard/bottom_title_page/home_page.dart';
import '../activities_pages_data/bungee/highgrgound_adventures.dart';
import '../activities_pages_data/bungee/the_last_resort.dart';

// Update BungeeScreen to accept arguments
class ListingScreen extends StatefulWidget {
  final String passedArgument;

  const ListingScreen({super.key, required this.passedArgument});

  @override
  State<ListingScreen> createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  late final DatabaseReference ref;

  @override
  void initState() {
    super.initState();
    ref = FirebaseDatabase.instance.reference().child(widget.passedArgument);
    print(ref);
  }

  final auth = FirebaseAuth.instance;
  //final ref = FirebaseDatabase.instance.ref('${widget.passedArgument}');


  void _navigateToDestination(BuildContext context, String title ,String id) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailingScreen(title:'${widget.passedArgument}',id:'$id',subtitle: '$title'),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          icon: Icon(LineAwesomeIcons.angle_left_solid),
        ),
        title: Center(
          child: Text(
            '${widget.passedArgument}',
            style: TextStyle(
              color: Colors.black,
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
      body: Column(
        children: [
          // Display the passed argument
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Passed Argument: ${widget.passedArgument}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: FirebaseAnimatedList(
              query: ref,
              itemBuilder: (context, snapshot, animation, index) {
                final Map<dynamic, dynamic> data = snapshot.value as Map<dynamic, dynamic>;
                final title = data['title'].toString();
                final location = data['location'].toString();
                final price = data['price'].toString();
                final time = data['time'].toString();
                final rating = data['rating'].toString();
                final img = data['img'].toString();
                final id=data['id'].toString();

                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => _navigateToDestination(context, title, id),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(title, style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700)),
                                SizedBox(height: 8),
                                Text(location, style: TextStyle(fontSize: 16, color: Colors.black)),
                                SizedBox(height: 8),
                                Text(price, style: TextStyle(fontSize: 16, color: Colors.black)),
                                SizedBox(height: 8),
                                Text(time, style: TextStyle(fontSize: 16, color: Colors.black)),
                                SizedBox(height: 8),
                                Text(rating, style: TextStyle(fontSize: 16, color: Colors.black)),
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(img),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}