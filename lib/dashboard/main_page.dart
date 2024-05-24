import 'package:chaldim_app/dashboard/bottom_title_page/bar_item_page.dart';
import 'package:chaldim_app/dashboard/bottom_title_page/home_page.dart';
import 'package:chaldim_app/dashboard/bottom_title_page/my_profile.dart';
import 'package:chaldim_app/dashboard/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {

  List pages=[
    HomePage(),
    BarItemPage(),
    SearchBar(),
    MyProfile(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        //selectedFontSize: 1,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black45.withOpacity(0.1),
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            label:'Home',
            icon: Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            label:'Bar',
            icon: Icon(Icons.bar_chart_sharp),
          ),
          BottomNavigationBarItem(
            label:'Search',
            icon: Icon(Icons.search_sharp),
          ),
          BottomNavigationBarItem(
            label:'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
