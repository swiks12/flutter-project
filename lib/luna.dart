import 'dart:ffi';

import 'package:flutter/material.dart';
 class Luna extends StatefulWidget {
  const Luna({super.key});

  @override
  State<Luna> createState() => _LunaState();
}

class _LunaState extends State<Luna> {
  showAlertDialog(BuildContext context){
    //setting up the buttons
    Widget okbtn=ElevatedButton(
      onPressed: (){}, 
      style: ElevatedButton.styleFrom(
        backgroundColor:const Color(0XFFA9A3EA),
         ),
        child: const Text('Ok'),
         );
    AlertDialog alert=AlertDialog(
      backgroundColor: const Color(0XFFE1D8EF),
      title: const Text('Alert Dialogue'),
      content: const Text('You will be further contacted.'),
      actions: [
        okbtn,
      ],
    );
    showDialog(
      context: context,
       builder: (BuildContext context){
        return alert;
       },
       );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFDF4F6),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
              children: [
                const SizedBox(
                  height: 250,
                  width: double.infinity,
                ),
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0XFFA9A3EA),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                      height:250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0XFFE1D8EF)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              height: 190,
                              width:double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(24.0),
                                 image: const DecorationImage(
                                image: AssetImage("images/myLuna.jpg"),
                                fit: BoxFit.cover,
                                 ),
                              ),
                            ),
                          ),
                          const Text('Luna-(female)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      ),               
                  ),
                ),
              ],
              ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      Container(
                        height: 150,
                    width:150,
                    decoration: BoxDecoration(
                    color:  const Color.fromARGB(255, 211, 198, 233),
                    borderRadius: BorderRadius.circular(24.0)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                         Text('Age',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(height: 20,),
                        Text('5 months old',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                         
                      ],
                    ),
                  ),
                  const SizedBox(width: 50,),
                    Container(
                    height:150,
                    width:150,
                    decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 211, 198, 233),
                    borderRadius: BorderRadius.circular(24.0)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                         Text('Breed',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 20,),
                        Text('Manx Cat',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                         
                      ],
                    ),
                  ),
                
                    ],
                  ),
                ),
                const SizedBox(height: 1,),
              Container(
                  height:170,
                  width:350,
                  decoration: BoxDecoration(
                  color:  const Color.fromARGB(255, 211, 198, 233),
                  borderRadius: BorderRadius.circular(24.0)
                  ),
                  child: Column(
                      children: const [
                        SizedBox(height: 10,),
                         Text('Description',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Meet Luna, an adorable and affectionate cat ready to bring joy to your home! Luna with her playful nature and gentle demeanor is the perfect companion for cuddling up on the couch or entertaining you with her charming antics.',style: TextStyle(fontSize: 16),),
                        )
                         
                      ],
                    ),
                ),
                const SizedBox(height: 20,),
               SizedBox(
                  height: 40,
                  width:150,
                  child: ElevatedButton(onPressed: (){
                    final snackBar= SnackBar(content: Text('Request for adoption sent.'),
                                duration: Duration(seconds: 1),
                                backgroundColor: const Color(0XFFA9A3EA),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                     showAlertDialog(context);


                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFFA9A3EA)
                  ), child: const Text('Adopt',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                  ),
                const SizedBox(height: 20,),
                    ElevatedButton.icon(
                      onPressed: (){
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.arrow_back), label: const Text('Back',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFFA9A3EA)
                      ),
                      ),
            ],
          ),
          ),
      ),
    );
  }
}