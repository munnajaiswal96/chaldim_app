import 'package:chaldim_app/test/rtdb_test.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class AddPostsScreens extends StatefulWidget {
  const AddPostsScreens({super.key});

  @override
  State<AddPostsScreens> createState() => _AddPostsScreensState();
}

class _AddPostsScreensState extends State<AddPostsScreens> {

  final postController=TextEditingController();
  bool loading=false;
  final databaseRef=FirebaseDatabase.instance.ref('Post');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => TestScreen()),
            );
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
              title: 'Add Posts',
            onTap: (){
              // setState(() {
              //   loading = true ;
              // });
              //
              //
              // String id  = DateTime.now().millisecondsSinceEpoch.toString() ;
              // databaseRef.child(id).set({
              //   'title' : postController.text.toString() ,
              //   'id' : DateTime.now().millisecondsSinceEpoch.toString()
              // }).then((value){
              //   Utils().toastMessage('Post added');
              //   setState(() {
              //     loading = false ;
              //   });
              // }).onError((error, stackTrace){
              //   Utils().toastMessage(error.toString());
              //   setState(() {
              //     loading = false ;
              //   });
              // });
              databaseRef.child('1').set({
                //'id':1,
                'title':postController.text.toString(),
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
