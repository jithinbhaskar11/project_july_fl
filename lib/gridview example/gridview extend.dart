import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Gridview5(),
  ));
}

class Gridview5 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 200,
      children: List.generate(10, (index) => Card(
        color: Colors.primaries[index % Colors.primaries.length],
        child: Row(
          children: [
            Icon(Icons.music_video),
            SizedBox(width: 15,),
            Expanded(child: Text('music',style: TextStyle(fontSize: 10),))
          ],
        ),
      )),),
    );
  }
}
