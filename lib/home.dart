import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0XFFACBCFF),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  color: const Color(0XFFE8A0BF)
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10,),
                  const CircleAvatar(
                    backgroundImage: AssetImage('images/picture.jpg',),
                    radius: 20,
                  ),
                  const SizedBox(width: 20,),
                  // Text('Welcome ${widget.name}',style: const TextStyle(fontSize: 20),),
                  ],
                )
              ),
              // _widgetOption.elementAt(_currentIndex),
            ],
      
        ),
        ),
        ),);
  }
}