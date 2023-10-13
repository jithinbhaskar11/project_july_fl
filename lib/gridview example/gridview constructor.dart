import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview2(),
  ));
}

class Gridview2 extends StatelessWidget {
  const Gridview2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3
              ),itemCount: 15,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.primaries[index % Colors.primaries.length],
              child: Icon(
                Icons.sports_basketball,
              ),
            );
          }),
    );
  }
}
