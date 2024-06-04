// import 'package:chaldim_app/test/rtdb_test.dart';
// import 'package:flutter/material.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
//
// import '../../dashboard/bottom_title_page/home_page.dart';
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
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => TestScreen()), // Navigate to the details page
//               );
//             },
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.blue.shade50, // Apply background color
//                 borderRadius: BorderRadius.circular(8), // Add rounded corners
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 2,
//                     blurRadius: 5,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//               ),
//               padding: EdgeInsets.all(16.0),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text('Name', style: TextStyle(color: Colors.black, fontSize: 20)),
//                             Text('Location', style: TextStyle(fontSize: 15, color: Colors.grey)),
//                           ],
//                         ),
//                         SizedBox(height: 8), // Add spacing between the text sections
//                         Text('Rating', style: TextStyle(fontSize: 16, color: Colors.black)),
//                         SizedBox(height: 8),
//                         Text('Price', style: TextStyle(fontSize: 16, color: Colors.black)),
//                         SizedBox(height: 8),
//                         Text('Time', style: TextStyle(fontSize: 16, color: Colors.black)),
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: 16), // Add some spacing between the columns
//                   Expanded(
//                     child: Container(
//                       height: 100, // Set a fixed height for the image container
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage('assets/images/bunjump.jpeg'),
//                           fit: BoxFit.cover,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//


import 'package:chaldim_app/test/rtdb_test.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../dashboard/bottom_title_page/home_page.dart';

class BungeeScreen extends StatefulWidget {
  const BungeeScreen({super.key});

  @override
  State<BungeeScreen> createState() => _BungeeScreenState();
}

class _BungeeScreenState extends State<BungeeScreen> {
  final List<Map<String, dynamic>> bungeeData = [
    {'name': 'Name 1', 'location': 'Location 1', 'rating': 'Rating 1', 'price': 'Price 1', 'time':'Time','page': TestScreen()},
    {'name': 'Name 2', 'location': 'Location 2', 'rating': 'Rating 2', 'price': 'Price 2','time':'Time', 'page': TestScreen()},
    {'name': 'Name 3', 'location': 'Location 1', 'rating': 'Rating 1', 'price': 'Price 1', 'time':'Time','page': TestScreen()},
    {'name': 'Name 4', 'location': 'Location 2', 'rating': 'Rating 2', 'price': 'Price 2','time':'Time', 'page': TestScreen()},
    {'name': 'Name 5', 'location': 'Location 1', 'rating': 'Rating 1', 'price': 'Price 1', 'time':'Time','page': TestScreen()},
    {'name': 'Name 6', 'location': 'Location 2', 'rating': 'Rating 2', 'price': 'Price 2','time':'Time', 'page': TestScreen()},
    {'name': 'Name 7', 'location': 'Location 1', 'rating': 'Rating 1', 'price': 'Price 1', 'time':'Time','page': TestScreen()},
    {'name': 'Name 8', 'location': 'Location 2', 'rating': 'Rating 2', 'price': 'Price 2','time':'Time', 'page': TestScreen()},
    {'name': 'Name 9', 'location': 'Location 1', 'rating': 'Rating 1', 'price': 'Price 1', 'time':'Time','page': TestScreen()},
    {'name': 'Name 10', 'location': 'Location 2', 'rating': 'Rating 2', 'price': 'Price 2','time':'Time', 'page': TestScreen()},
    {'name': 'Name 11', 'location': 'Location 1', 'rating': 'Rating 1', 'price': 'Price 1', 'time':'Time','page': TestScreen()},
    {'name': 'Name 12', 'location': 'Location 2', 'rating': 'Rating 2', 'price': 'Price 2','time':'Time', 'page': TestScreen()},
    // Add more rows as needed
  ];

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
            'Bungy Jumping',
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
      body: SingleChildScrollView(
        child: Column(
          children: bungeeData.map((data) => buildBungeeRow(context, data)).toList(),
        ),
      ),
    );
  }

  Widget buildBungeeRow(BuildContext context, Map<String, dynamic> data) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => data['page']),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade50, // Apply background color
            borderRadius: BorderRadius.circular(8), // Add rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text(data['name'], style: TextStyle(color: Colors.black, fontSize: 20)),
                    //     Text(data['location'], style: TextStyle(fontSize: 15, color: Colors.grey)),
                    //   ],
                    // ),
                    Text(data['name'], style: TextStyle(fontSize: 16, color: Colors.black)),
                    SizedBox(height: 8), // Add spacing between the text sections
                    Text(data['location'], style: TextStyle(fontSize: 16, color: Colors.black)),
                    SizedBox(height: 8),
                    Text(data['rating'], style: TextStyle(fontSize: 16, color: Colors.black)),
                    SizedBox(height: 8),
                    Text(data['price'], style: TextStyle(fontSize: 16, color: Colors.black)),
                    SizedBox(height: 8),
                    Text(data['time'], style: TextStyle(fontSize: 16, color: Colors.black)),
                  ],
                ),
              ),
              SizedBox(width: 16), // Add some spacing between the columns
              Expanded(
                child: Container(
                  height: 100, // Set a fixed height for the image container
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bunjump.jpeg'),
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
  }
}

// Placeholder for the details pages
class DetailsPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page 1'),
      ),
      body: Center(
        child: Text('Details about Bungy Jumping 1'),
      ),
    );
  }
}
