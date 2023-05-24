import 'package:flutter/material.dart';
 class Kale extends StatefulWidget {
  const Kale({super.key});

  @override
  State<Kale> createState() => _KaleState();
}

class _KaleState extends State<Kale> {
  showAlertDialog(BuildContext context){
    //setting up the buttons
    Widget okbtn=ElevatedButton(
      onPressed: (){}, 
      style: ElevatedButton.styleFrom(
        backgroundColor:Color.fromARGB(255, 96, 110, 162),
         ),
        child: const Text('Ok'),
         );
    AlertDialog alert=AlertDialog(
      backgroundColor:const Color(0XFFACBCFF),
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
                    color: Color.fromARGB(255, 104, 121, 181),
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
                        color: const Color(0XFFACBCFF)
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
                                image: AssetImage("images/kale.jpg"),
                                fit: BoxFit.cover,
                                 ),
                              ),
                            ),
                          ),
                          const Text('Kale-(male)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
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
                    color:  const Color(0XFFACBCFF),
                    borderRadius: BorderRadius.circular(24.0)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                         Text('Age',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(height: 20,),
                        Text('5 years old',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                         
                      ],
                    ),
                  ),
                  const SizedBox(width: 50,),
                    Container(
                    height:150,
                    width:150,
                    decoration: BoxDecoration(
                    color: const Color(0XFFACBCFF),
                    borderRadius: BorderRadius.circular(24.0)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                         Text('Breed',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 20,),
                        Text('Local Dog',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                         
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
                  color:  const Color(0XFFACBCFF),
                  borderRadius: BorderRadius.circular(24.0)
                  ),
                  child: Column(
                      children: const [
                        SizedBox(height: 10,),
                         Text('Description',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Meet Kale, an adorable and energetic dog seeking a loving forever home!Kale is ready to be your loyal companion on outdoor adventures and cozy snuggle sessions alike. Dont miss the opportunity to bring this bundle of joy into your family!',style: TextStyle(fontSize: 16),),
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
                                backgroundColor: Color.fromARGB(255, 96, 110, 162),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                     showAlertDialog(context);


                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 96, 110, 162)
                  ), child: const Text('Adopt',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                  ),
                const SizedBox(height: 20,),
                    ElevatedButton.icon(
                      onPressed: (){
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.arrow_back), label: const Text('Back',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 96, 110, 162)
                      ),
                      ),
            ],
          ),
          ),
      ),
    );
  }
}