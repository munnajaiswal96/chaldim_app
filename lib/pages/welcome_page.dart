import 'package:chaldim_app/pages/main_page.dart';
import 'package:chaldim_app/widgets/app_text_bold.dart';
import 'package:chaldim_app/widgets/app_text_medium_bold.dart';
import 'package:chaldim_app/widgets/responsive_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  List images=[
    "image1.png",
    "image2.png",
    "image3.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (context,index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/'+images[index]
                    ),
                    fit: BoxFit.cover
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 150,right: 20,left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextBold(text: "Trips",),
                        MediumText(text: "Mountain",size: 30,),
                        Container(
                          width: 250,
                          child: MediumText(
                            text: 'Mountain hikes give you an incredible sense of freedom along with endurance tests.',
                            color: Colors.black54,
                            size: 18,
                          ),
                        ),
                        SizedBox(height: 50),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>Mainpage(),
                            ),
                            );
                          },
                          child: Container(
                              width: 200,
                              child: Row(
                                children: [
                                  ResponsiveButton(width: 80,),
                                ],
                              )),
                        ),
                      ],
                    ),
                    Column(
                      children:List.generate(3, (indexDots){
                        return Container(
                          margin: EdgeInsets.only(bottom: 2.5),
                          width: 8,
                          height: index==indexDots?25:8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index==indexDots?Colors.blueGrey:Colors.blueGrey[200],
                          ),
                        );
                      }),
                    ),

                  ],
                ),

              ),
            );
          }),
    );
  }
}
