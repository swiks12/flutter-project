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
      appBar: AppBar(backgroundColor: const Color(0XFFACBCFF),title: const Text('About Us'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 290,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                     image: DecorationImage(
                      image: AssetImage("images/logo1.png"),
                      fit: BoxFit.cover,
                      ),
                  ),
                  
                ),
                const SizedBox(height: 50,),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color:  const Color(0XFFACBCFF)
                  ),
                  child: Row(
                    children: [
                       const SizedBox(width: 10,),
                      CircleAvatar(
                      backgroundImage: AssetImage('images/pawFinal.png',),
                      radius: 20,
                      ),
                      const SizedBox(width:10),
                      Container(
                        child: const Text('Matching pets with loving families since 2015',style: TextStyle(fontSize: 16),),
                      )
                      
                    ],
                  ),
                ),
                const SizedBox(height: 8,),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color:  const Color(0XFFACBCFF)
                  ),
                  child: Row(
                    children: [
                       SizedBox(width: 10,),
                      CircleAvatar(
                      backgroundImage: AssetImage('images/bowl.png',),
                      radius: 20,
                      ),
                      const SizedBox(width:10),
                      Text('50+ rescued animals in shelter',style: TextStyle(fontSize: 16),)
                    ],
                  ),
                ),
                const SizedBox(height: 8,),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color:  const Color(0XFFACBCFF)
                  ),
                  child: Row(
                    children: [
                       SizedBox(width: 10,),
                      CircleAvatar(
                      backgroundImage: AssetImage('images/pinkLocation.jpg',),
                      radius: 20,
                      ),
                       const SizedBox(width:10),
                      Text('Located at heart of Kathmandu New road',style: TextStyle(fontSize: 16),)
                    ],
                  ),
                ),
                const SizedBox(height: 8,),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color:  const Color(0XFFACBCFF)
                  ),
                  child: Row(
                    children: [
                       SizedBox(width: 10,),
                      CircleAvatar(
                      backgroundImage: AssetImage('images/telephone.png',),
                      radius: 20,
                      ),
                       const SizedBox(width:10),
                      Text('986-359-4873',style: TextStyle(fontSize: 18),)
                    ],
                  ),
                ),
                const SizedBox(height: 8,),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color:  const Color(0XFFACBCFF)
                  ),
                  child: Row(
                    children: [
                       SizedBox(width: 10,),
                      CircleAvatar(
                      backgroundImage: AssetImage('images/envelope.png',),
                      radius: 20,
                      ),
                       const SizedBox(width:10),
                      Text('foreverHomes@gmail.com',style: TextStyle(fontSize: 16),)
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