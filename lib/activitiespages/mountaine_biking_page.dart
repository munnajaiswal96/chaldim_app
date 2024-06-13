import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../activities_pages_data/mountain_biking/annapurna_circuit.dart';
import '../activities_pages_data/mountain_biking/kathmandu_valley.dart';
import '../activities_pages_data/mountain_biking/mustang_region.dart';
import '../activities_pages_data/mountain_biking/pokhara_valley.dart';
import '../api/bungee/bungee_data_screen.dart';
import '../dashboard/bottom_title_page/home_page.dart';
import '../test/rtdb_test.dart';

class MtBikingScreen extends StatefulWidget {
  const MtBikingScreen({super.key});

  @override
  State<MtBikingScreen> createState() => _MtBikingScreenState();
}

class _MtBikingScreenState extends State<MtBikingScreen> {

  final auth=FirebaseAuth.instance;

  final ref = FirebaseDatabase.instance.ref('Mountain Biking');

  void _navigateToDestination(BuildContext context, String title) {
    switch (title) {
      case 'Kathmandu Valley':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => KathmanduValley()),
        );
        break;
      case 'Pokhara Valley':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PokharaValley()),
        );
        break;
      case 'Annapurna Circuit':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AnnapurnaCircuit()),
        );
        break;
      case 'Mustang Region':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MustangRegion()),
        );
        break;
      default:
        break;
    }
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
            'Mountain Biking Page',
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
      body:FirebaseAnimatedList(
        query: ref,
        itemBuilder: (context, snapshot, animation, index) {
          final Map<dynamic, dynamic> data = snapshot.value as Map<
              dynamic,
              dynamic>;
          final title = data['title'].toString();
          final location = data['location'].toString();
          final price = data['price'].toString();
          final time = data['time'].toString();
          final rating = data['rating'].toString();
          final img = data['img'].toString();

          return Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () => _navigateToDestination(context, title),
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
                          Text(title, style: TextStyle(
                              fontSize: 16, color: Colors.black)),
                          SizedBox(height: 8),
                          Text(location, style: TextStyle(
                              fontSize: 16, color: Colors.black)),
                          SizedBox(height: 8),
                          Text(price, style: TextStyle(
                              fontSize: 16, color: Colors.black)),
                          SizedBox(height: 8),
                          Text(time, style: TextStyle(
                              fontSize: 16, color: Colors.black)),
                          SizedBox(height: 8),
                          Text(rating, style: TextStyle(
                              fontSize: 16, color: Colors.black)),
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
    );
  }
}
