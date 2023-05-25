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
      backgroundColor: const Color(0XFFFDF4F5),
      appBar: AppBar(backgroundColor: const Color(0XFF007283),title: const Text('About Us'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color:  const Color(0XFF007283)
                  ),
                  child: Column(
                    children: const [
                      SizedBox(height:10),
                      CircleAvatar(
                        radius: 90,
                        backgroundImage: AssetImage('images/closeupLogo.png'),
                      ),
                      SizedBox(height:20),
                      Text('data')

                      
                    ],
                  ),
                ),
                const SizedBox(height: 50,),
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color:  const Color(0XFF007283)
                  ),
                  child: Row(
                    children:const [
                       SizedBox(width: 10,),
                      CircleAvatar(
                      backgroundImage: AssetImage('images/swikriti.jpg',),
                      radius: 50,
                      ),
                      SizedBox(width:10),
                      Text("Swikriti Suwal\nCEO\n986-359-4873\nKathmandu,Nepal",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),)
                      
                    ],
                  ),
                ),
                
              ],
          ),
          ),
          ),
      ),
        );
  }
}