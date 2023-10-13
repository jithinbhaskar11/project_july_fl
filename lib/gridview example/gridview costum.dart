import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview6(),
  ));
}

class Gridview6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          childrenDelegate: SliverChildBuilderDelegate((context, index) => Card(
                color: Colors.primaries[index % Colors.primaries.length],
                child: Stack(
                  /// for images use, container and use box decoration.
                  children: [
                    Center(
                        child: Icon(
                      Icons.headphones,
                      size: 100,
                    )),
                    Positioned(
                        bottom: 20,
                        right: 20,
                        child: Text(
                          '\$50',
                          style: TextStyle(fontSize: 45),
                        )),
                    Positioned(
                        top: 20,
                        right: 20,
                        child: Icon(
                          Icons.favorite_border,
                          size: 40,
                        ))
                  ],
                ),
              ))),
    );
  }
}
