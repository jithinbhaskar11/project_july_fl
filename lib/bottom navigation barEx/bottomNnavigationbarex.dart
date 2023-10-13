import 'package:flutter/material.dart';
import 'package:project_july_fl/gpay%20splashpage.dart';
import 'package:project_july_fl/splashPage.dart';
import 'package:project_july_fl/stacks/fi%20card%20using%20stack.dart';

void main(){
  runApp(MaterialApp(
    home: Bottmnbar() ,
  ));
}

class Bottmnbar extends StatefulWidget {

  @override
  State<Bottmnbar> createState() => _BottmnbarState();
}

class _BottmnbarState extends State<Bottmnbar> {

  int index=0;
  var screens=[
    Ficard(),
    gopenpage(),
    SplashPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          //type: BottomNavigationBarType.fixed, ///no  transition animation or background color change
        type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.green,
          selectedItemColor: Colors.yellow,
          currentIndex: index, ///item to be selected by default when opening, index=0
          onTap: (tapedindex){
            setState(() {
              index=tapedindex; ///here, index value change according to each tap
            });
          },

          items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.red, ///not requred on bottomnavigationbar type.fixed
            icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.music_video),label: 'Music'),
            BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                icon: Icon(Icons.person),label: 'Account'),
      ]),


      body: screens[index] ,
    );
  }
}
