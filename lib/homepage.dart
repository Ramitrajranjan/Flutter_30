import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int days=30;
    const String msg="Welcome";
    const String name="Ramit Ranjan";

    return Scaffold(
              appBar: AppBar(
                        title: Text("Catalog App"),
                      ),
              body: Center(
                      child: Container(
                        child: Text("$msg All to $days days of Flutter by $name .")
                        ),
                    ),          
              drawer: Drawer(),
          );
  }
}