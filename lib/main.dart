import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            // home: const HomePage(),
            themeMode: ThemeMode.light,
            theme: ThemeData(
                        primarySwatch: Colors.deepPurple,
                        fontFamily: GoogleFonts.lato().fontFamily,
                        primaryTextTheme: GoogleFonts.latoTextTheme(),
            ),
            debugShowCheckedModeBanner: false,
            darkTheme: ThemeData(
                        brightness: Brightness.dark,
            ),
            initialRoute: MyRoutes.homeRoute,
            routes: {
              "/":(context) =>  const LoginPage(),
              MyRoutes.homeRoute:(context) => const HomePage(),
              MyRoutes.loginRoute:(context) => const LoginPage(),
            },
        );
  }
}