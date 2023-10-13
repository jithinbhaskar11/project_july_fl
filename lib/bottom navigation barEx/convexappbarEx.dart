import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../gpay splashpage.dart';
import '../splashPage.dart';
import '../stacks/fi card using stack.dart';

void main(){
  runApp(MaterialApp(
    home:Convx(),
  ));
}

class Convx extends StatelessWidget {
  int index=0;
  var screens=[
    Ficard(),
    gopenpage(),
    SplashPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
          onTap: (int i) => print('click index=$i'),

          items:[
          TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.map, title: 'Discovery'),
      TabItem(icon: Icons.add, title: 'Add'),]
    ),
      body: screens[index],

    );
  }
}
