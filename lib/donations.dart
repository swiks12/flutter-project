import 'package:flutter/material.dart';

class Donation extends StatefulWidget {
  const Donation({super.key});

  @override
  State<Donation> createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  TextEditingController mycontroller=TextEditingController();
  String amount='';
  bool _validate=false;
  void dispose(){
    mycontroller.dispose();//coontroller sada garna
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Donations'),
      backgroundColor: const Color(0XFFACBCFF),),
      body: Container(
         decoration: const BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage("images/moneyPig.jpg"),
                      fit: BoxFit.cover,
                      ),
                      ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 10,),
               TextField(
                style: TextStyle(
                ),
                    controller: mycontroller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter amount for donation',
                      labelText: 'Amount',
                      errorText: _validate ? "Field cannot be empty":null,
                    ),
                   
                  ),
                
                const SizedBox(height: 30,),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFFACBCFF)
                    ),
                    onPressed: (){
                    setState(() {
                            amount=mycontroller.text;
                            amount.isEmpty? _validate=true :_validate=false;
                          });
                          
                          
                  }, child: const Text('Donate')),
                ),
                const SizedBox(height: 40,),
                Text('Donated amount: $amount',style: const TextStyle(
                  fontSize: 20,
                ),)
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}