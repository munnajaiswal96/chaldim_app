import 'package:chaldim_app/activitiespages/bunjumpingpage.dart';
import 'package:chaldim_app/activitiespages/hikingpage.dart';
import 'package:chaldim_app/activitiespages/paraglidingpage.dart';
import 'package:chaldim_app/activitiespages/raftingpage.dart';
import 'package:chaldim_app/colors_details/colors.dart';
import 'package:chaldim_app/dashboard/profile_screen.dart';
//import 'package:chaldim_app/pages/detail_page_for.dart';
import 'package:chaldim_app/widgets/app_text_bold.dart';
import 'package:chaldim_app/widgets/app_text_medium_bold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';




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
    "zip_flyer.jpeg":"Zip Flyer",
    "rock_climbing.jpeg":"Rock Climbing",
    "mountain_biking.jpeg":"Mountain Biking",
    "canyoning.jpeg":"Canyoning",

  };

  List mountainsimages=[
    "mountain.jpg",
    "mountain1.png",
    "mountain2.png",
  ];

  List quotes=[
    'Mountains, lakes, medieval cities and temples and vibrant culture – Nepal has almost everything. This small Himalayan country is the Holy Grail for adventure lovers. Some of the most iconic hiking trails of Himalayas are found in Nepal. So here are a few Quotes on Nepal that describes the beauty of this country. If you are looking for some travel inspirations or Nepal instagram captions, these quotes might help you.',    ''
    'Heaven is a myth, Nepal is real.',
    'Chasing angels or fleeing demons, go to the mountains.',
    'The mountains were so wild and so stark and so very beautiful that I wanted to cry. I breathed in another wonderful moment to keep safe in my heart.',
    'If a man says he is not afraid of dying, he is either lying or is a Gurkha.',
    'I enjoy load shedding in Nepal, when it allows me to witness the dancing of fireflies in the next field, and at the same time to hear children playing a chanting clapping game because there is no TV to waste their time on.',
    'Namaste – It was a Nepalese greeting. It meant: The light within me bows to the light within you.',
    'A brief visit to Nepal started my insatiable love for Asian art.',
    'If Nepal is to become a new Nepal, she must first become free from ethnic segregation.',
    'You can take my body out of Nepal but you can never take my soul and Heart from a Nepal',
  ];

  List<String> videoUrls = [
    'assets/videos/video.mp4',
    'assets/videos/video1.mp4',
    //'https://www.example.com/video2.mp4',
    // Add more video URLs here
  ];

  List<VideoPlayerController> _videoControllers = [];
  List<ChewieController> _chewieControllers = [];

  @override
  void initState() {
    super.initState();
    for (var url in videoUrls) {
      var videoController = VideoPlayerController.network(url);
      var chewieController = ChewieController(
        videoPlayerController: videoController,
        autoPlay: false,
        looping: false,
      );
      _videoControllers.add(videoController);
      _chewieControllers.add(chewieController);
    }
  }

  @override
  void dispose() {
    for (var controller in _videoControllers) {
      controller.dispose();
    }
    for (var chewieController in _chewieControllers) {
      chewieController.dispose();
    }
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    TabController _tabController=TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.black,),
        title: Text('Chaldim',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
              Container(
                margin: EdgeInsets.only(right: 20,left: 7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.3),
                ),
                child: IconButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                     MaterialPageRoute(builder: (context)=>ProfileScreen()),
                    );
                  },
                  icon: Image(
                    image: AssetImage('assets/images/user_image.png'),
                  ),
                ),
              ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                                'assets/images/'+mountainsimages[index],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),

                //second option if we want to show the contents in middle
                // ListView.builder(
                //   itemCount: quotes.length,
                //   scrollDirection: Axis.horizontal,
                //   itemBuilder: (BuildContext context, int index) {
                //     return GestureDetector(
                //       onTap: () {},
                //       child: Container(
                //         margin: EdgeInsets.only(right: 15, top: 10),
                //         width: 300,
                //         height: 300,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(12),
                //           color: Colors.white,
                //           boxShadow: [
                //             BoxShadow(
                //               color: Colors.grey.withOpacity(0.5),
                //               spreadRadius: 2,
                //               blurRadius: 5,
                //               offset: Offset(0, 3),
                //             ),
                //           ],
                //         ),
                //         child: Padding(
                //           padding: const EdgeInsets.all(12.0),
                //           child: Center(
                //             child: Text(
                //               quotes[index],
                //               style: TextStyle(
                //                 fontSize: 16,
                //                 fontStyle: FontStyle.italic,
                //               ),
                //               textAlign: TextAlign.center,
                //             ),
                //           ),
                //         ),
                //       ),
                //     );
                //   },
                // ),

                //for quotes
                ListView.builder(
                  itemCount: quotes.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(right: 15, top: 10),
                        width: 250,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  quotes[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),

                //for youtube videos
                ListView.builder(
                  itemCount: videoUrls.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    final controller = _videoControllers[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.value.isPlaying ? controller.pause() : controller.play();
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 15, top: 10),
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black,
                        ),
                        child: controller.value.isInitialized
                            ? AspectRatio(
                          aspectRatio: controller.value.aspectRatio,
                          child: VideoPlayer(controller),
                        )
                            : Center(child: CircularProgressIndicator()),
                      ),
                    );
                  },
                ),


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
                              'assets/images/'+mountainsimages[index],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                // Text('There'),
                // Text('bye'),
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
              itemCount: 8,
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
