import 'package:flutter/material.dart';
class Dog1 extends StatefulWidget {
  const Dog1({super.key});

  @override
  State<Dog1> createState() => _Dog1State();
}

class _Dog1State extends State<Dog1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(),
            Container(
              height: 500,
              child: const Text('Adopting Khaire is an opportunity to be a hero in his life story. Khaire has endured hardships and abuse, but by opening your heart and home to him, you can provide the love and security he desperately craves. By adopting Khaire, you give him a chance to heal, trust, and experience the joy of a safe and loving environment. With time, patience, and understanding, you can witness his incredible transformation into a happy and resilient companion. Choosing to adopt Khaire means not only changing his life but also being a part of a remarkable journey where compassion and kindness prevail, reminding us all of the immeasurable power of second chances.'),
              
            )
          ],

      ),
      ),
    );
  }
}