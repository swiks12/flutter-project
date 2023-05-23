import 'dart:ffi';

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
      appBar: AppBar(title: const Text('Donations'),),
      body: Container(
         decoration: const BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage("images/paw1end.png"),
                      // fit: BoxFit.cover,
                      ),
                      ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 10,),
               TextField(
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
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                            amount=mycontroller.text;
                            amount.isEmpty? _validate=true :_validate=false;
                          });
                          Text('Donated amount: $amount',style: const TextStyle(
                  fontSize: 20
                ),);
                          
                  }, child: const Text('Donate')),
                ),
                const SizedBox(height: 40,),
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}