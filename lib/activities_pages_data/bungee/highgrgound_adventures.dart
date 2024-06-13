import 'package:flutter/material.dart';

class HighgroundAdv extends StatefulWidget {
  const HighgroundAdv({super.key});

  @override
  State<HighgroundAdv> createState() => _HighgroundAdvState();
}

class _HighgroundAdvState extends State<HighgroundAdv> {

  // final auth = FirebaseAuth.instance;
  // final ref = FirebaseDatabase.instance.ref().child('Bungee/1');
  // Map<dynamic, dynamic>? data;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   fetchData();
  // }
  //
  // Future<void> fetchData() async {
  //   try {
  //     final snapshot = await ref.get();
  //     if (snapshot.exists) {
  //       setState(() {
  //         data = Map<dynamic, dynamic>.from(snapshot.value as Map);
  //       });
  //     }
  //   } catch (e, stacktrace) {
  //     print('Error fetching data: $e');
  //     print('Stacktrace: $stacktrace');
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: Icon(LineAwesomeIcons.angle_left_solid),
      //   ),
      //   title: Center(
      //     child: Text(
      //       'Highground Adventure',
      //       style: TextStyle(
      //         color: Colors.black,
      //       ),
      //     ),
      //   ),
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   actions: [
      //     Container(
      //       width: 48, // Same width as the leading IconButton to balance the title
      //     ),
      //   ],
      // ),
      // body: SingleChildScrollView(
      //   child: data != null
      //       ? Column(
      //     children: [
      //       Container(
      //         width: double.infinity,
      //         height: 280,
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //             image: NetworkImage(data!['img']),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),
      //       Container(
      //         padding: EdgeInsets.all(20),
      //         width: double.infinity,
      //         decoration: BoxDecoration(
      //           color: Colors.white,
      //           borderRadius: BorderRadius.only(
      //             topLeft: Radius.circular(20),
      //             topRight: Radius.circular(20),
      //           ),
      //         ),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(
      //               data!['title'],
      //               style: TextStyle(
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 20,
      //               ),
      //             ),
      //             SizedBox(height: 10),
      //             Text(
      //               data!['price'],
      //               style: TextStyle(
      //                 fontSize: 18,
      //                 color: Colors.green,
      //               ),
      //             ),
      //             SizedBox(height: 10),
      //             Row(
      //               children: [
      //                 Icon(Icons.location_on_outlined),
      //                 SizedBox(width: 5),
      //                 Expanded(
      //                   child: Text(data!['location']),
      //                 ),
      //               ],
      //             ),
      //             SizedBox(height: 10),
      //             Text('Timing:',style: TextStyle(fontWeight: FontWeight.bold),),
      //             Text(data!['time']),
      //             SizedBox(height: 10),
      //             Row(
      //               children: [
      //                 Wrap(
      //                   children: List.generate(5, (index) {
      //                     return Icon(
      //                       Icons.star,
      //                       color: double.parse(data!['rating'].toString()) > index
      //                           ? Colors.deepOrange
      //                           : Colors.grey,
      //                     );
      //                   }),
      //                 ),
      //                 SizedBox(width: 5),
      //                 Text(data!['rating'].toString()),
      //               ],
      //             ),
      //             SizedBox(height: 10),
      //             Text('Safety Rules:',style: TextStyle(fontWeight: FontWeight.bold),),
      //             Text(data!['safety']),
      //             SizedBox(height: 10),
      //             Text('Description:',style: TextStyle(fontWeight: FontWeight.bold),),
      //             Text(data!['desc']),
      //           ],
      //         ),
      //       ),
      //     ],
      //   )
      //       : Center(
      //     child: CircularProgressIndicator(),
      //   ),
      // ),
    );
  }
}
