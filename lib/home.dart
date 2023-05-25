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
                  height: 500,
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
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        
                          child: Text('Forever Homes Animal Adoption has been dedicated to finding loving and permanent homes for animals in need since its establishment in 2015. With a passion for animal welfare and a commitment to their well-being, the organization has tirelessly worked to match countless furry friends with compassionate adoptive families. Through their comprehensive adoption process, they ensure that each animal receives the care and attention they deserve, creating successful and lasting connections between pets and their forever homes. Forever Homes Animal Adoption continues to make a positive impact on the lives of animals, making dreams come true for both pets and adopters alike.',textAlign: TextAlign.justify,style: TextStyle(fontSize: 16,color: Colors.white),
                          ),
                          ),
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                Container(
                  height: 110,
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
                      radius: 40,
                      ),
                      SizedBox(width:10),
                      Text("Swikriti Suwal\nCEO\n986-359-4873\nKathmandu,Nepal",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17),)
                      
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