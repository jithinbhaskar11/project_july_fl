import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Nav_drawer(),
  ));
}

class Nav_drawer extends StatelessWidget {
  const Nav_drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/IMG20200420113610.jpg'),
                fit:  BoxFit.cover)
              ),
                accountName: Text('Jithin'),
                accountEmail: Text('jithin@gmail.com'),
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/images/gokotta.jpg'),),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/chenju.jpg'),
              )
            ],),
            
            
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),

          ],
        ),
      ),
    );
  }
}
