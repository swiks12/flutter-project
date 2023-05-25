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
      // appBar: AppBar(title:const Text('Login and Signup'),
      // shadowColor: const Color(0XFFBA90C6),
      // backgroundColor: const Color(0XFFBA90C6),),
      body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage("images/dogFinal.jpg"),
                        fit: BoxFit.fill,
                        ),
                        ),
            child:  Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                        children: [
                          Row(
                            children:[ 
                              Container(
                              height: 205,
                              width:205,
                              decoration: const BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage("images/bgRemovedLogoComplete.png"),
                            fit: BoxFit.cover,
                            ),
                            ),
                            ),
                            const Text(
                            'Choose adoption,\nfill your home with love.',
                            style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            ),
                            ),],
                          ),
                          
                          const SizedBox(height:410,),
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: (){
                                   Navigator.push(context,MaterialPageRoute(builder: (context)=>const Login()));
                                }, 
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  ),
                                backgroundColor: const Color(0XFF007283)
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
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                        ),
                                backgroundColor: const Color(0XFF007283)
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
        ),
      
              
            );

  }
}