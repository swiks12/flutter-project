import 'package:adopt_me/bella.dart';
import 'package:adopt_me/bruno.dart';
import 'package:adopt_me/kale.dart';
import 'package:adopt_me/luna.dart';
import 'package:flutter/material.dart';
class LandingDog extends StatefulWidget {
  const LandingDog({super.key});

  @override
  State<LandingDog> createState() => _LandingDogState();
}

class _LandingDogState extends State<LandingDog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFDF4F6),
      body: SingleChildScrollView(
        child: SafeArea(child: 
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Container(
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                         image: const DecorationImage(
                          image: AssetImage("images/adoption.png"),
                          fit: BoxFit.cover,
                          ),
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0XFFACBCFF),
      
                      ),
                      ),
                      const SizedBox(height: 20,),
                      const Text('dogs',style: TextStyle(fontSize: 20),),
                      const SizedBox(height: 20,),
                       Row(
                          children: [
                            Container(
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                              color: Color.fromARGB(255, 115, 186, 202),
                              borderRadius: BorderRadius.circular(24.0)
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 20,),
                                  const CircleAvatar(
                                    radius: 50,
                                    backgroundImage: AssetImage('images/kale.jpg'),
                                  ),
                                   const SizedBox(height: 10,),
                                  const Text('Kale',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                                  const SizedBox(height: 10,),
                                  SizedBox(
                                    height: 20,
                                    child: 
                                    ElevatedButton(onPressed: (){
                                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const Kale()));
                                    },style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0XFF007283)
                                    ), child: const Text('View more'),
                                    
                                    ),
                                    )
                                ],
                              ),
                            ),
                            const SizedBox(width: 25,),
                            Container(
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                              color: Color.fromARGB(255, 115, 186, 202),
                              borderRadius: BorderRadius.circular(24.0)
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 20,),
                                  const CircleAvatar(
                                    radius: 50,
                                    backgroundImage: AssetImage('images/germanShepherd.jpg'),

                                  ),
                                  const SizedBox(height: 10,),
                                  const Text('Bruno',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  const SizedBox(height: 10,),
                                  SizedBox(
                                    height: 20,
                                    child: 
                                    ElevatedButton(onPressed: (){
                                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const Bruno()));
                                    },style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0XFF007283)
                                    ), child: const Text('View more'),
                                    ),
                                    )
                                ],
                              ),
                            )
                          ],
                        ),
                      
                      const SizedBox(height: 20,),
                      const Text('Cats',style: TextStyle(fontSize: 20),),
                      const SizedBox(height: 20,),
                       Row(
                          children: [
                            Container(
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                              color: Color.fromARGB(255, 115, 186, 202),
                              borderRadius: BorderRadius.circular(24.0)
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 20,),
                                  const CircleAvatar(
                                    radius: 50,
                                    backgroundImage: AssetImage('images/myLuna.jpg'),

                                  ),
                                   const SizedBox(height: 10,),
                                  const Text('Luna',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                   const SizedBox(height: 10,),
                                  SizedBox(
                                    height: 20,
                                    child: 
                                    ElevatedButton(onPressed: (){
                                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const Luna()));
                                    },style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0XFF007283)
                                    ),
                                     child: const Text('View more'),
                                    
                                    ),
                                    )
                                ],
                              ),
                            ),
                            const SizedBox(width: 25,),
                            Container(
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                              color: Color.fromARGB(255, 115, 186, 202),
                              borderRadius: BorderRadius.circular(24.0)
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 20,),
                                  const CircleAvatar(
                                    radius: 50,
                                    backgroundImage: AssetImage('images/bella.jpg'),
                                  ),
                                   const SizedBox(height: 10,),
                                  const Text('Bella',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                   const SizedBox(height: 10,),
                                  SizedBox(
                                    height: 20,
                                    child: 
                                    ElevatedButton(onPressed: (){
                                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const Bella()));
                                    }, 
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0XFF007283)
                                    ),
                                    child: const Text('View more'),
                                    )
                                    ,)
                                ],
                              ),
                            )
                          ],
                        ),
              ],
            ),
        
          ),
        )
        ),
      )
    );
  }
}