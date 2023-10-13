import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(
    home: Stagered_grid(),
  ));
}

class Stagered_grid extends StatelessWidget {
  const Stagered_grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staggered grid view'),
      ),

      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          StaggeredGridTile.count(crossAxisCellCount: 3,
              mainAxisCellCount: 1,
              child: Card(
                color: Colors.cyan,
                child: Center(
                  child: Icon(Icons.headphones),
                ),
              )),
          StaggeredGridTile.count(crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Card(
                color: Colors.green,
                child: Icon(Icons.music_video),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 3,
              child: Card(
                child: Icon(Icons.tv),
                color: Colors.red,
              ))
        ],),
      ),
    );
  }
}
