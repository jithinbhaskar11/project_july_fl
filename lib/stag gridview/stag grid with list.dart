import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(
    home: Stag_list(),
  ));
}
class Stag_list extends StatelessWidget {

  var ico=[Icons.headphones,
  Icons.add_circle,
  Icons.account_box_outlined,
  Icons.abc,
  Icons.ac_unit];

  var coc=[1,3,2,4,3];
  var mac=[3,1,3,2,1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('staggered grid with list'),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          children: List.generate(5, (index) => StaggeredGridTile.count(
            crossAxisCellCount: coc[index],
            mainAxisCellCount: mac[index],
            child: Card(
              color: Colors.primaries[index % Colors.primaries.length],
              child:Icon(ico[index]) ,
            ),
          )),
        ),
      ),
    );
  }
}
