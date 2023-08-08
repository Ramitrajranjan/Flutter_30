import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int days=30;
    const String msg="Welcome";
    const String name="Ramit Ranjan";

    return Scaffold(
              appBar: AppBar(
                        title: const Text("Catalog App"),
                      ),
              body: const Center(
                      child: Text("$msg All to $days days of Flutter by $name ."),
                    ),          
              drawer: const MyDrawer(),
          );
  }
}