import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  //to run an app
  runApp(MaterialApp(
    //default theme of our flutter app(material or cupertino)
    home: SplashPage(), //imnitial page to to be launched while running an app
  ));
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //to create our widget tree, we use build function.
    return Scaffold(
      //buildcontext- used to locate widgets on our widget tree and monitor actions.
      // backgroundColor: Colors.yellow,
      body: Container(
        decoration: BoxDecoration(
            //color: Colors.black38
            // image: DecorationImage(
            //     fit: BoxFit.cover,
            //     image: NetworkImage(
            //         'https://images.unsplash.com/photo-1694078791403-95d92e7c901e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Mnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'))
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            Colors.red,
            Colors.yellow
          ]
        )
                                    ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.link,color: Colors.white,size: 80,),
              // Image(image: AssetImage('assets/icons/Iconarchive-Dog-Breed-St-Bernard.512.png'),
              Image(
                image: NetworkImage(
                    'https://cdn0.iconfinder.com/data/icons/phosphor-fill-vol-3/256/key-fill-256.png'),
                width: 150,
                height: 150,
              ),

              // Text('pluto',style: TextStyle(letterSpacing: 1, color: Colors.black,fontSize:30 ,fontWeight: FontWeight.bold ),)
              Text(
                'Key:)',
                style: GoogleFonts.abel(fontSize: 60, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
