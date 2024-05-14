import 'package:chaldim_app/activitiespages/bunjumpingpage.dart';
import 'package:chaldim_app/activitiespages/hikingpage.dart';
import 'package:chaldim_app/activitiespages/paraglidingpage.dart';
import 'package:chaldim_app/activitiespages/raftingpage.dart';
import 'package:chaldim_app/colors_details/colors.dart';
//import 'package:chaldim_app/pages/detail_page_for.dart';
import 'package:chaldim_app/widgets/app_text_bold.dart';
import 'package:chaldim_app/widgets/app_text_medium_bold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/widgets.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  var images={
    "bunjump.jpeg":"Bunjumping",
    "hiking.jpg":"Hiking",
    "paragliding.jpg":"Paragliding",
    "rafting.jpg":"Rafting",
  };

  List mountainsimages=[
    "mountain.jpg",
    "mountain1.png",
    "mountain2.png",
  ];
  @override
  Widget build(BuildContext context) {
    TabController _tabController=TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50,left: 20),
            child: Row(
              children: [
                Icon(Icons.menu,size: 28,),
                Expanded(child:Container()),
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: TextBold(
              text: 'Discover',
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: Align(
              //alignment: Alignment.centerLeft,
              child: TabBar(
                //labelPadding: EdgeInsets.only(left: 20,right: 10),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black54,
                //isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircleTabIndicator(color: Colors.black54,radius: 4),
                tabs: [
                  Tab(text: 'Places',),
                  Tab(text: 'Inspritation',),
                  Tab(text: 'Emotion',),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount:3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(BuildContext context, int index){
                    return GestureDetector(
                      onTap:(){},
                      child: Container(
                        margin: EdgeInsets.only(right: 15,top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          image:DecorationImage(
                            image: AssetImage(
                                'assets/images/mountain.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Text('There'),
                Text('bye'),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextBold(text: 'Explore more',),
                // MediumText(text: 'See all'),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 120,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 20),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context)=>DetailPage(),
                    //   ),
                    // );
                    _navigateToDestination(context, index);
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        Container(
                          //margin: EdgeInsets.only(right: 50),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            image:DecorationImage(
                              image: AssetImage(
                                  'assets/images/'+images.keys.elementAt(index)),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          child: MediumText(text: images.values.elementAt(index)),
                        ),
                      ],
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
//else{
//  return Container();
// }
}

class CircleTabIndicator extends Decoration{
  final Color color;
  double radius;
  CircleTabIndicator({required this.color,required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color:color,radius:radius);
  }

}

class _CirclePainter extends BoxPainter{
  final Color color;
  double radius;
  _CirclePainter({required this.color,required this.radius});
  @override

  void paint(
      Canvas canvas,
      Offset offset,
      ImageConfiguration configuration) {
    Paint _paint=Paint();
    _paint.color=color;
    _paint.isAntiAlias=true;
    final Offset circleOffset=Offset(configuration.size!.width/2-radius/2,configuration.size!.height-radius);
    canvas.drawCircle(offset+circleOffset, radius, _paint);
  }

}


void _navigateToDestination(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BunjumpingPage(),
        ),
      );
      break;
    case 1:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HikingPage(),
        ),
      );
      break;
    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParaglidingPage(),
        ),
      );
      break;
    case 3:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RaftingPage(),
        ),
      );
      break;
    default:
      break;
  }
}
