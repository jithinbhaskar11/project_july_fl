import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Gridview1(),
  ));
}

class Gridview1 extends StatelessWidget {
  const Gridview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Text('gridview'),
      ),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:3 ),
      children: List.generate(15, (index) => Card(
        child: Icon(Icons.sports_baseball_rounded,size: 60,
        color: Colors.primaries[index % Colors.primaries.length]),
      )),),
    );
  }
}
