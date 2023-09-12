import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SplashPage(),
  ));
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.link, size: 80, color: Colors.blue,),
            Text('wayne link',style: TextStyle(),)],),),);
  }}
