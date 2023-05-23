import 'package:adopt_me/donations.dart';
import 'package:adopt_me/home.dart';
import 'package:flutter/material.dart';
 class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  List pages=[
    HomePage(),
    Donation(),
    Donation(),

  
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
      body: pages[currentIndex],
        bottomNavigationBar:BottomNavigationBar(
          onTap: onTap,
        currentIndex:currentIndex,

        backgroundColor: Color(0XFFACBCFF),
        items: 
      [
        BottomNavigationBarItem(
          icon:Icon(Icons.info),
          label: 'About Us',
           ),
           BottomNavigationBarItem(
          icon:Icon(Icons.home),
          label: 'Home',
           ),
           BottomNavigationBarItem(
          icon:Icon(Icons.attach_money),
          label: 'Donations',
           ),
      ],
    ),
    );
  }
}