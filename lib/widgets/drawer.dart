import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl=
      "https://media.licdn.com/dms/image/D4D03AQFkrEQYEMUxYg/profile-displayphoto-shrink_800_800/0/1687873694910?e=2147483647&v=beta&t=zGO-hbUmLlUBotvk7NMuPCaYMMnYYjX3-8G9fvV8DxA";
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(color: Colors.deepPurple),
        child: ListView(
          children:const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                accountName: Text("Ramit Ranjan",style: TextStyle(
                    color: Colors.white,
                    fontSize:16,),
                    ),
                accountEmail: Text("ramit@gmail.com",style: TextStyle(
                    color: Colors.white,
                    fontSize:16,),
                    ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),),
                ),
              ),

              ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                    color:Colors.white )
                    ),
                
                ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                  ),
                  title: Text(
                    "Profile",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                    color:Colors.white )
                    ),
                ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                  ),
                  title: Text(
                    "Contact",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                    color:Colors.white )
                    ),
                )
          ],),
      ),
    );
  }
}