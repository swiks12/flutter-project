import 'package:adopt_me/loginpage.dart';
import 'package:adopt_me/signup.dart';
import 'package:flutter/material.dart';

class LoginAndSignup extends StatefulWidget {
  const LoginAndSignup({super.key});

  @override
  State<LoginAndSignup> createState() => _LoginAndSignupState();
}

class _LoginAndSignupState extends State<LoginAndSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0XFFFDF4F5),
      appBar: AppBar(title:const Text('Login and Signup'),
      shadowColor: const Color(0XFFBA90C6),
      backgroundColor: const Color(0XFFBA90C6),),
      body: Container(
        decoration: const BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage("images/carDog.jpg"),
                    fit: BoxFit.cover,
                    ),
                    ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
                  children: [
                    
                    const SizedBox(height: 500,),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: (){
                             Navigator.push(context,MaterialPageRoute(builder: (context)=>const Login()));
                          }, 
                          style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFFBA90C6)
                        ),
                        child:const Text('Login',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 100,height: 30,),
                      SizedBox(
                         height: 50,
                          width: double.infinity,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>const SignUp()));
                          }, 
                          style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFFBA90C6)
                        ),child: const Text('SignUp',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                        
                        ),
                      ),     
                    ],
                 ),
        ),
              ),
            );

  }
}