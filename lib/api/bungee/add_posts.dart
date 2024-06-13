import 'package:chaldim_app/test/rtdb_test.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../activitiespages/bungee_page.dart';

class AddPostsScreens extends StatefulWidget {
  const AddPostsScreens({super.key});

  @override
  State<AddPostsScreens> createState() => _AddPostsScreensState();
}

class _AddPostsScreensState extends State<AddPostsScreens> {

  final postController=TextEditingController();
  bool loading=false;
  final databaseRefBungee=FirebaseDatabase.instance.ref('Bungee');
  final databaseRefTreking=FirebaseDatabase.instance.ref('Treking');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Navigator.pop(
            //   context,
            //   MaterialPageRoute(builder: (context) => BungeeScreen()),
            // );
          },
          icon: Icon(LineAwesomeIcons.angle_left_solid),
        ),
        title: Center(
          child: Text(
            'Add Posts',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
             SizedBox(height: 30,),
            TextFormField(
              maxLines: 4,
              controller: postController,
              decoration: InputDecoration(
                hintText: 'What in your mind?',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30,),
            RoundButton(
              title: 'Add Posts from here',
            loading: loading,
            onTap: (){
              setState(() {
                loading = true ;
              });
              databaseRefBungee.child('Bhote Kosi Rover').set({
                //'id':1, // this will gice fixed id which was entered by programmer.
                'id':DateTime.now().millisecondsSinceEpoch.toString(), //this will generate random id by itself.
                'title':postController.text.toString(),
              }).then((value){
                 print('this is for true conditions');
                 setState(() {
                   loading = false;
                 });
              }).onError((error, stackTrace){
                print('this is for false conditions');
                setState(() {
                  loading = false;
                });
              });
              databaseRefBungee.child('Hemja in Pokhara').set({
                //'id':1, // this will gice fixed id which was entered by programmer.
                'id':DateTime.now().millisecondsSinceEpoch.toString(), //this will generate random id by itself.
                'title':postController.text.toString(),
              }).then((value){
                print('this is for true conditions');
                setState(() {
                  loading = false;
                });
              }).onError((error, stackTrace){
                print('this is for false conditions');
                setState(() {
                  loading = false;
                });
              });
              databaseRefTreking.child('treking').set({
                //'id':1, // this will gice fixed id which was entered by programmer.
                'id':DateTime.now().millisecondsSinceEpoch.toString(), //this will generate random id by itself.
                'title':postController.text.toString(),
              }).then((value){
                print('this is for true conditions');
                setState(() {
                  loading = false;
                });
              }).onError((error, stackTrace){
                print('this is for false conditions');
                setState(() {
                  loading = false;
                });
              });
            },
            ),
          ],
        ),
      ),
    );
  }
}

class RoundButton extends StatelessWidget{

  final String title ;
  final VoidCallback onTap ;
  final bool loading ;
  const RoundButton({Key? key ,
    required this.title,
    required this.onTap,
    this.loading = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: loading ? CircularProgressIndicator(strokeWidth: 3,color: Colors.white,) :
        Text(title, style: TextStyle(color: Colors.white),),),
      ),
    );
  }
}
