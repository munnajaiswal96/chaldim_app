import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../activitiespages/zipflyer_page.dart';

class HighGroundZipFlyer extends StatefulWidget {
  const HighGroundZipFlyer({super.key});

  @override
  State<HighGroundZipFlyer> createState() => _HighGroundZipFlyerState();
}

class _HighGroundZipFlyerState extends State<HighGroundZipFlyer> {

  final auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance.ref('Zip Flyer');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => ZipFlyerScreen()),
            );
          },
          icon: Icon(LineAwesomeIcons.angle_left_solid),
        ),
        title: Center(
          child: Text(
            'HighGround Zip FLyer',
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
        child: FirebaseAnimatedList(
          query: ref,
          itemBuilder: (context, snapshot, animation, index) {
            try {
              final Map<dynamic, dynamic> data = snapshot.value as Map<dynamic, dynamic>;
              final String title = data['title'].toString();
              final String location = data['location'].toString();
              final String price = data['price'].toString();
              final String time = data['time'].toString();
              final double rating = double.parse(data['rating'].toString());
              final String img = data['img'].toString();
              final String des = data['des'].toString();
              final String safety = data['safety'].toString();

              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      child: Container(
                        width: double.maxFinite,
                        height: 280,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(img),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 260,
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                        width: MediaQuery.of(context).size.width,
                        height: 500,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(title),
                                Text(price),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined),
                                Text(location)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text(time),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Wrap(
                                  children: List.generate(5, (index) {
                                    return Icon(Icons.star, color: rating > index ? Colors.deepOrange : Colors.grey,);
                                  }),
                                ),
                                SizedBox(width: 5,),
                                Text(rating.toString()),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text(safety),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text(des),
                              ],
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } catch (e) {
              print('Error: $e');
              return Center(
                child: Text('An error occurred while loading data'),
              );
            }
          },
        ),
      ),
    );
  }
}
