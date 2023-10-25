
import 'package:flutter/material.dart';
import 'package:project_july_fl/mediaquery/mobile%20screen.dart';

import 'big screen.dart';
void main(){
  runApp(MaterialApp(
    home: Homepage()
  ));
}
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var devicewidth=MediaQuery.of(context).size.width;
    if(devicewidth<600){
      return MobileScreen();
    }else{
      return BigScreen();
    }
  }
}
