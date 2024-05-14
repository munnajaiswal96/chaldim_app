// import 'package:chaldim/cubit/app_cubit.dart';
// import 'package:chaldim/cubit/app_cubit_states.dart';
import 'package:chaldim_app/widgets/app_buttons.dart';
import 'package:chaldim_app/widgets/app_text_bold.dart';
import 'package:chaldim_app/widgets/app_text_medium_bold.dart';
import 'package:chaldim_app/widgets/responsive_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    int gottenStars=4;
    // var textColors2;
    //  return BlocBuilder<AppCubits,CubitStates>(builder: (context,state){
    //    DetailState detail=state as DetailState;
    return Scaffold(
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
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/mountain.jpg'),
                    //image: NetworkImage('http://mark.bslmeiyu.com/uploads/'+detail.place.img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){
                      //BlocProvider.of<AppCubits>(context).goHome();
                    },
                    icon: Icon(Icons.menu_rounded),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 280,
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20,top: 30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //TextBold(text: detail.place.name,size:25,),
                        //MediumText(text: '\$'+detail.place.price.toString()),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: Colors.grey,),
                        //MediumText(text: detail.place.location),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        // Wrap(
                        //   children: List.generate(5, (index)
                        //    {
                        //    return Icon(Icons.star,color: index<star?Colors.orangeAccent:Colors.grey[300],);
                        //    },
                        //   ),
                        // ),
                        Text('(5.0)',),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Text('People',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Text('Number of people in your group'),
                    SizedBox(height: 10,),
                    Wrap(
                      children:List.generate(12, (index){
                        return InkWell(
                          onTap: (){
                            setState(() {
                              selectedIndex=index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 5,top: 5),
                            child: AppButton(
                              size: 50,
                              color: selectedIndex==index?Colors.white: Colors.black,
                              backgroundColor: selectedIndex==index?Colors.black:Colors.white12,
                              borderColor: selectedIndex==index?Colors.black:Colors.black,
                              text: (index+1).toString(),
                              // icon: Icons.favorite_border_outlined,
                              // isIcon: true,
                            ),
                          ),
                        );
                      },),
                    ),
                    SizedBox(height: 10,),
                    Text('Description',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),),
                    //Text('Nepal contains most of the Himalayas, the highest mountain range in the world. Eight of the fourteen eight-thousanders are located in the country, either in whole or shared across a border with China or India.'),
                    //Text(detail.place.description),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  AppButton(
                    size: 60,
                    color: Colors.black,
                    backgroundColor: Colors.white,
                    borderColor: Colors.black,
                    isIcon: true,
                    icon:Icons.favorite_border_outlined,
                  ),
                  SizedBox(width: 20,),
                  ResponsiveButton(isResponsive: true,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


