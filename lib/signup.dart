import 'package:adopt_me/firstnavpage.dart';
import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formkey=GlobalKey<FormState>();
  String? name;
  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
      backgroundColor: const Color(0XFFFDF4F5),
      appBar: AppBar(title: const Text('Signup'),
      backgroundColor: const Color(0XFFE8A0BF),),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage("images/paw1end.png"),
                      // fit: BoxFit.cover,
                      ),
                      ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
                    child: Form(
                      key: _formkey,
                      child:Column(
                        children: [
                          // const SizedBox(height: 50),
                          TextFormField(
                            onSaved:(newValue){
                              name=newValue!;
                            },
                            validator: (value) {
                              if (value==null || value.isEmpty){
                                return "*required";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText: 'Name',
                              hintText: 'Enter name',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 50),
                          TextFormField(
                            validator: (value) {
                              if (value==null || value.isEmpty){
                                return "*required";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: 'Contact',
                              hintText: 'Enter contact info',
                              border: OutlineInputBorder(),
                            )
                          ),
                          const SizedBox(height: 50),
                          TextFormField(
                            validator: (value) {
                              if (value==null || value.isEmpty){
                                return "*required";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter email address',
                              border: OutlineInputBorder(),
                            )
                          ),
                          const SizedBox(height: 50),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: ElevatedButton(
                            onPressed: (){
                              if(_formkey.currentState!.validate()){
                                _formkey.currentState!.save();
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen(name: name)));//name pass gareko garnalai
                                 final snackBar= SnackBar(content: Text('Signed In'),
                                  duration: Duration(seconds: 1),
                                  backgroundColor: const Color(0XFFE8A0BF),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const Home1()));
                              }
                            }, 
                            style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0XFFE8A0BF)
                                            ),
                                            child: const Text('SignUp',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                             ),
                          ),
                        ],
                      ) ,
                      ),
                  ),
          ),
        ),
      ),
          );
  
    
  }
}