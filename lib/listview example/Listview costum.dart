import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Listview4(),
  ));
}

class Listview4 extends StatelessWidget {
  const Listview4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(                     /// if sliverChildListDelegate, we have to type the list name for each time.
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) => Card(
        child: Icon(Icons.person),
      ),
        childCount: 10
      )),
    );
  }
}
