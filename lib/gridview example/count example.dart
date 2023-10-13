import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Gridview4(),
  ));
}
class Gridview4 extends StatelessWidget {
  var pics=['assets/images/00000PORTRAIT_00000_BURST20220908085917730.jpg',
    'assets/images/bharathi.jpg',
  'assets/images/chenju.jpg',
  'assets/images/gokotta.jpg'];
  var names=['jithu',
  'bharathi',
  'sanju',
  'goku'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,
     children:List.generate(4, (index) => Container(
       child: Column(
         children: [
           Image(image: AssetImage(pics[index]),height: 300,),
           Text(names[index],style: TextStyle(fontSize: 40),)
         ],
       ),
     )), ),
    );
  }
}
