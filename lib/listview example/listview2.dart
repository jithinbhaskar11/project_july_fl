import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Listview2(),
    theme: ThemeData(primarySwatch: Colors.teal),
  ));
}

class Listview2 extends StatelessWidget { ///remove the const.
  
  var name=['ammu','CD','jabli','gokul','sharbu','ummi',];
  var sub=['boi','ooi', 'es', 'ramankuttiyettaa','attheeloo', 'yeah'];
  var dp=['assets/images/IMG_20210915_120137.jpg',
    'assets/images/00000PORTRAIT_00000_BURST20220908085917730.jpg',
  'assets/images/jabli.jpg',
    'assets/images/gokotta.jpg',
    'assets/images/sharbu.jpg',
    'assets/images/podimol.jpg',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview 2')
      ),
      body: ListView(
        children: List.generate(6, (index) => Card(
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text(sub[index]),
            leading: CircleAvatar(backgroundImage: AssetImage(dp[index])),
            trailing: Text('trailing'),
          ),
        )),
      ),
    );
  }
}
