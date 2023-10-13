import 'package:flutter/material.dart';
import 'package:project_july_fl/sunadr%20pichai/pichai%20details.dart';


void main(){
  runApp(MaterialApp(
    home: Pichai(),
  ));
}

class Pichai extends StatelessWidget {
  const Pichai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('People'),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors:[Colors.red,
            Colors.yellow,
            Colors.orange] )
          ),
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage ('assets/images/pichai.jpeg'),),
                title: Text('Sundar pichai'),
                subtitle: Text('C.E.O at alphabet Inc.'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Dashboard'),
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Dashboard()));
                },
              ),
              ListTile(
                leading: Icon(Icons.leaderboard_sharp),
                title: Text('Leads'),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Clients'),
              ),
              ListTile(
                leading: Icon(Icons.rocket_launch),
                title: Text('Projects'),
              ),
              ListTile(
                leading: Icon(Icons.subscriptions_sharp),
                title: Text('Subscriptions'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
