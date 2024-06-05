import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'bungee_data.dart';

class BungeeDataScreen extends StatefulWidget {
  const BungeeDataScreen({super.key});

  @override
  State<BungeeDataScreen> createState() => _BungeeDataScreenState();
}

class _BungeeDataScreenState extends State<BungeeDataScreen> {

  final auth=FirebaseAuth.instance;
  final ref=FirebaseDatabase.instance.ref('Bungee');
  final searchFilter=TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ref.onValue.listen((event) { });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bungee data screen'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => BungeeScreen()),
            );
          },
          icon: Icon(LineAwesomeIcons.angle_left_solid),
        ),
      ),
      body: Column(
        children: [
          //this is stream builder now we can use only one of them either streambuilder or animatedlist
         //this is a stream so we can set initstate
         //  Expanded(
         //    child: StreamBuilder(
         //      stream: ref.onValue,
         //    builder: (context,AsyncSnapshot<DatabaseEvent> snapshot){
         //
         //        if(!snapshot.hasData){
         //           return CircularProgressIndicator();
         //        }else{
         //          Map<dynamic,dynamic> map=snapshot.data!.snapshot.value as dynamic;
         //          List<dynamic> list =[];
         //          list.clear();
         //          list=map.values.toList();
         //          return ListView.builder(
         //            itemCount: snapshot.data!.snapshot.children.length,
         //            itemBuilder: (context,index){
         //              return ListTile(
         //                title: Text(list[index]['title']),
         //                //subtitle: Text(list[index]['id']),
         //              );
         //            },
         //          );
         //        }
         //
         //    },
         //  ),
         //  ),
          SizedBox(height: 10,),
          //user can search only the list which are inside it
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextFormField(
              controller: searchFilter,
              decoration: InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(),
              ),
              onChanged: (String value){
                setState(() {

                });
              },
            ),
          ),
          Expanded(
            //there are some conditions where we can't use animated list we have to use stream builder
            // and this is a widget so we can't modified it as stream
            child: FirebaseAnimatedList(
                query: ref,
                defaultChild: Center(child: Text('Loading'),),// when there is nothing then it will show loading text.
                itemBuilder: (context, snapshot, animation, index){
                  final title=snapshot.child('title').value.toString();
                  if(searchFilter.text.isEmpty){
                    return ListTile(
                      title: Text(snapshot.child('title').value.toString()),// to show title
                      //subtitle: Text(snapshot.child('id').value.toString()),// to show id
                    );
                  }else if(title.toLowerCase().contains(searchFilter.text.toLowerCase().toString())){
                    return ListTile(
                      title: Text(snapshot.child('title').value.toString()),// to show title
                      //subtitle: Text(snapshot.child('id').value.toString()),// to show id
                    );
                  }else{
                    return Container();
                  }

                },
            ),
          ),
        ],
      ),
    );
  }
}
