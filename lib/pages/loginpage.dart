import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // color: Colors.white,
      body:   SingleChildScrollView(
        child: Column(
          children:[ Image.asset("assets/images/Login_img.png",fit: BoxFit.cover,),
          const SizedBox(height: 20.0,),
          const Text("Welcome",style: TextStyle(
                                                fontSize:22,
                                                fontWeight: FontWeight.bold,),
                                                ),
          const SizedBox(height: 20.0,),
          Padding(padding: const EdgeInsets.symmetric(
                    vertical: 16.0,horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(decoration: const InputDecoration(
                                        hintText:"Enter username",
                                        labelText: "Username",),
                                      ),
                         TextFormField(obscureText: true,
                                      decoration: const InputDecoration(
                                      hintText:"Enter Password",
                                      labelText: "Password",),
                                      ),
                        const SizedBox(height: 40.0,),
                        ElevatedButton(                        
                          style: TextButton.styleFrom(minimumSize: const Size(150,40)),
                          onPressed: () { 
                            Navigator.pushNamed(context,MyRoutes.homeRoute);
                          },
                          child: const Text("Login"),
                          ) 
                    ],
                  ),
              )
            ],
          ),
      ) 
      
         
      
      //Center(
      //   child: Text("Login Page",style: TextStyle
      //       (
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //         color: Colors.blueGrey,
      //       ),
      //     )
      //   ),
    );
  }
}