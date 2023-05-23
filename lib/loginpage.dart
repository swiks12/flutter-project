import 'package:adopt_me/firstnavpage.dart';
import 'package:adopt_me/home.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey=GlobalKey<FormState>();
  String? name;
  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
      backgroundColor: const Color(0XFFFDF4F5),
      appBar: AppBar(title: const Text('Login'),
      backgroundColor: const Color(0XFFACBCFF),),
      body:  Container(
        decoration: const BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage("images/paw1end.png"),
                    ),
                    ),

        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
                    child: Form(
                      key: _formkey,
                      child:Column(
                        children: [
                          const SizedBox(height: 50),
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
                              labelText: 'Username',
                              hintText: 'Enter username',
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
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter password',
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
                               final snackBar= SnackBar(content: Text('Logged In'),
                                duration: Duration(seconds: 1),
                                backgroundColor: const Color(0XFFACBCFF),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                 Navigator.push(context,MaterialPageRoute(builder: (context)=>const Home1()));
                              }
                              
                            },
                            style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0XFFACBCFF)
                                              ),
                                               child:const Text('Login',
                            style:TextStyle(
                              fontSize: 20,
                            ),
                            ), 
                                              ),
                          ),
                        // Image.asset('images/signUp.png'),
                        ],
                      ) ,
                      ),
                  ),
        ),
      ),
            );
 
    
  }
}