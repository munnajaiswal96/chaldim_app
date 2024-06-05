import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../api/bungee/bungee_data.dart';

class DataTestScreen extends StatefulWidget {
  const DataTestScreen({super.key});

  @override
  State<DataTestScreen> createState() => _DataTestScreenState();
}

class _DataTestScreenState extends State<DataTestScreen> {

  int gottenStars=3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(
        onPressed: () {
           Navigator.pop(
            context,
            MaterialPageRoute(builder: (context) => BungeeScreen()),
          );
        },
        icon: Icon(LineAwesomeIcons.angle_left_solid),
      ),
        title: Center(
          child: Text(
            'Test Screen',
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
      body: Container(
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
                         image: AssetImage('assets/images/mountain2.png'),
                         fit: BoxFit.cover,
                       )
                     ),
                   ),
               ),
               Positioned(
                 top: 260,
                   child: Container(
                     padding: EdgeInsets.only(left: 20,right: 20,top: 30),
                      width: MediaQuery.of(context).size.width,
                     height: 500,
                     decoration: BoxDecoration(
                         color: Colors.white,
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(20),
                         topRight: Radius.circular(20),
                       )
                     ),
                     child: Column(
                       // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text('Nepal Picture'),
                             Text('Rs.4500'),
                         ],
                         ),
                         SizedBox(height: 10,),
                         Row(
                           children: [
                             Icon(Icons.location_on_outlined),
                             Text('location will be here')
                           ],
                         ),
                         SizedBox(height: 10,),
                         Row(
                           children: [
                             Text('Time will be here'),
                           ],
                         ),
                         SizedBox(height: 10,),
                         Row(
                           children: [
                             Wrap(
                               children: List.generate(5, (index){
                                 return Icon(Icons.star,color:gottenStars>index?Colors.deepOrange:Colors.grey,);
                               }),
                             ),
                             SizedBox(width: 5,),
                             Text('4.0'),
                           ],
                         ),
                         SizedBox(height: 10,),
                         Row(
                           children: [
                             Text('Safetly rules will be here'),
                           ],
                         ),
                         SizedBox(height: 10,),
                         Row(
                           children: [
                             Text('Description will be here'),
                           ],
                         ),
                         SizedBox(height: 10,),
                        // Positioned(
                        //   bottom: 0,
                        //   child: Text('Hi'),
                        // ),
                       ],
                     ),
                   ),
               ),
             ],
        ),
      )
    );
  }
}
