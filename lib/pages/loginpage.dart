import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // color: Colors.white,
      body:   Column(
        children:[ Image.asset("assets/images/Login_img.png",fit: BoxFit.cover),
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
                      const SizedBox(height: 20.0,),
                      ElevatedButton(
                        child: Text("Login"),
                        style: TextButton.styleFrom(),
                        onPressed: () {
                          print("hello");
                        },) 
                  ],
                ),
            )
          ],
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