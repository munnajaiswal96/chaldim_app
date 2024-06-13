// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
// import '../../activitiespages/bungee_page.dart';
//
// class TheLastResort extends StatefulWidget {
//   const TheLastResort({super.key});
//
//   @override
//   State<TheLastResort> createState() => _TheLastResortState();
// }
//
// class _TheLastResortState extends State<TheLastResort> {
//
//   int gottenStars=4;
//   final auth=FirebaseAuth.instance;
//   final ref = FirebaseDatabase.instance.ref('Bungee');
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(leading: IconButton(
//           onPressed: () {
//             Navigator.pop(
//               context,
//               MaterialPageRoute(builder: (context) => BungeeScreen()),
//             );
//           },
//           icon: Icon(LineAwesomeIcons.angle_left_solid),
//         ),
//           title: Center(
//             child: Text(
//               'The Last Resort',
//               style: TextStyle(
//                 color: Colors.black,
//               ),
//             ),
//           ),
//           backgroundColor: Colors.white,
//           elevation: 0,
//           actions: [
//             Container(
//               width: 48, // Same width as the leading IconButton to balance the title
//             ),
//           ],
//         ),
//         body: Container(
//           width: double.maxFinite,
//           height: double.maxFinite,
//           child: Stack(
//             children: [
//               Positioned(
//                 left: 0,
//                 right: 0,
//                 child: Container(
//                   width: double.maxFinite,
//                   height: 280,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage('assets/images/mountain2.png'),
//                         fit: BoxFit.cover,
//                       )
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: 260,
//                 child: Container(
//                   padding: EdgeInsets.only(left: 20,right: 20,top: 30),
//                   width: MediaQuery.of(context).size.width,
//                   height: 500,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(20),
//                         topRight: Radius.circular(20),
//                       )
//                   ),
//                   child: Column(
//                     // mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text('Nepal Picture'),
//                           Text('Rs.4500'),
//                         ],
//                       ),
//                       SizedBox(height: 10,),
//                       Row(
//                         children: [
//                           Icon(Icons.location_on_outlined),
//                           Text('location will be here')
//                         ],
//                       ),
//                       SizedBox(height: 10,),
//                       Row(
//                         children: [
//                           Text('Time will be here'),
//                         ],
//                       ),
//                       SizedBox(height: 10,),
//                       Row(
//                         children: [
//                           Wrap(
//                             children: List.generate(5, (index){
//                               return Icon(Icons.star,color:gottenStars>index?Colors.deepOrange:Colors.grey,);
//                             }),
//                           ),
//                           SizedBox(width: 5,),
//                           Text('4.0'),
//                         ],
//                       ),
//                       SizedBox(height: 10,),
//                       Row(
//                         children: [
//                           Text('Safetly rules will be here'),
//                         ],
//                       ),
//                       SizedBox(height: 10,),
//                       Row(
//                         children: [
//                           Text('Description will be here'),
//                         ],
//                       ),
//                       SizedBox(height: 10,),
//                       // Positioned(
//                       //   bottom: 0,
//                       //   child: Text('Hi'),
//                       // ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }



//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_database/ui/firebase_animated_list.dart';
// import 'package:flutter/material.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
//
// class TheLastResort extends StatefulWidget {
//   const TheLastResort({super.key});
//
//   @override
//   State<TheLastResort> createState() => _TheLastResortState();
// }
//
// class _TheLastResortState extends State<TheLastResort> {
//   final auth = FirebaseAuth.instance;
//   final ref = FirebaseDatabase.instance.reference().child('Bungee/1');
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             // Navigator.pop(
//             //   context,
//             //   MaterialPageRoute(builder: (context) => BungeeScreen()),
//             // );
//           },
//           icon: Icon(LineAwesomeIcons.angle_left_solid),
//         ),
//         title: Center(
//           child: Text(
//             'The Last Resort',
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
//         child: FirebaseAnimatedList(
//           query: ref,
//           itemBuilder: (context, snapshot, animation, index) {
//             try {
//               final Map<dynamic, dynamic> data = snapshot.value as Map<dynamic, dynamic>;
//               final String title = data['title'].toString();
//               print('this is title section');
//               // final String location = data['location'].toString();
//               // final String price = data['price'].toString();
//               // final String time = data['time'].toString();
//               // final double rating = double.parse(data['rating'].toString());
//               // final String img = data['img'].toString();
//               // final String desc = data['desc'].toString();
//               // final String safety = data['safety'].toString();
//
//               return Container(
//                 width: double.maxFinite,
//                 height: double.maxFinite,
//                 child: Stack(
//                   children: [
//                     // Positioned(
//                     //   left: 0,
//                     //   right: 0,
//                     //   child: Container(
//                     //     width: double.maxFinite,
//                     //     height: 280,
//                     //     decoration: BoxDecoration(
//                     //       image: DecorationImage(
//                     //         image: NetworkImage(img),
//                     //         fit: BoxFit.cover,
//                     //       ),
//                     //     ),
//                     //   ),
//                     // ),
//                     Positioned(
//                       top: 260,
//                       child: Container(
//                         padding: EdgeInsets.only(left: 20, right: 20, top: 30),
//                         width: MediaQuery.of(context).size.width,
//                         height: 500,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(20),
//                             topRight: Radius.circular(20),
//                           ),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(title),
//                                // Text(price),
//                               ],
//                             ),
//                             SizedBox(height: 10,),
//                             Row(
//                               children: [
//                                 Icon(Icons.location_on_outlined),
//                                 //Text(location)
//                               ],
//                             ),
//                             SizedBox(height: 10,),
//                             Row(
//                               children: [
//                                // Text(time),
//                               ],
//                             ),
//                             SizedBox(height: 10,),
//                             // Row(
//                             //   children: [
//                             //     Wrap(
//                             //       children: List.generate(5, (index) {
//                             //         return Icon(Icons.star, color: rating > index ? Colors.deepOrange : Colors.grey,);
//                             //       }),
//                             //     ),
//                             //     SizedBox(width: 5,),
//                             //     //Text(rating.toString()),
//                             //   ],
//                             // ),
//                             SizedBox(height: 10,),
//                             Row(
//                               children: [
//                               //  Text(safety),
//                               ],
//                             ),
//                             SizedBox(height: 10,),
//                             Row(
//                               children: [
//                                // Text(desc),
//                               ],
//                             ),
//                             SizedBox(height: 10,),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             } catch (e) {
//               print('Error: $e');
//               return Center(
//                 child: Text('An error occurred while loading data'),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class DetailingScreen extends StatefulWidget {
  final String title;
  final String subtitle;
  final String id;
   DetailingScreen({Key? key, required this.title, required this.id, required this.subtitle}) : super(key: key);

  @override
  State<DetailingScreen> createState() => _DetailingScreenState();
}

class _DetailingScreenState extends State<DetailingScreen> {

  final auth = FirebaseAuth.instance;
  // final ref = FirebaseDatabase.instance.ref().child('Bungee/1');
  Map<dynamic, dynamic>? data;
  late final DatabaseReference ref;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    print('3rd screen:${widget.title}/${widget.id}');
     ref = FirebaseDatabase.instance.reference().child('${widget.title}/${widget.id}');
    try {
      final snapshot = await ref.get();
      if (snapshot.exists) {
        setState(() {
          data = Map<dynamic, dynamic>.from(snapshot.value as Map);
        });
      }
    } catch (e, stacktrace) {
      print('Error fetching data: $e');
      print('Stacktrace: $stacktrace');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(LineAwesomeIcons.angle_left_solid),
        ),
        title: Center(
          child: Text(
            '${widget.subtitle}',
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
        child: data != null
            ? Column(
          children: [
            Container(
              width: double.infinity,
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(data!['img']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data!['title'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    data!['price'],
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(data!['location']),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('Timing:',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(data!['time']),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: double.parse(data!['rating'].toString()) > index
                                ? Colors.deepOrange
                                : Colors.grey,
                          );
                        }),
                      ),
                      SizedBox(width: 5),
                      Text(data!['rating'].toString()),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('Safety Rules:',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(data!['safety']),
                  SizedBox(height: 10),
                  Text('Description:',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(data!['desc']),
                ],
              ),
            ),
          ],
        )
            : Center(
                child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
