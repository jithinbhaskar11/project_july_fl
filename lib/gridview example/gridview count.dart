import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Gridview3(),
  ));
}

class Gridview3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 3,
      children: List.generate(15, (index) => Container(
        decoration: BoxDecoration( color: Colors.primaries[index % Colors.primaries.length],
            borderRadius: BorderRadius.circular(45)
        ),
        child: Column(
          children: [
            Image.asset('assets/images/jabli.jpg',height: 200,),
            Text('Portrait',style:TextStyle(fontSize: 20),),
            Text('155\$',style: TextStyle(fontSize: 20),)
            
          ],
        ),
      )),),
    );
  }
}
