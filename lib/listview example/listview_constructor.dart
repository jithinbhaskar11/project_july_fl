import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView1(),
    theme: ThemeData(primarySwatch: Colors.teal),
  ));
}

class ListView1 extends StatelessWidget {
  const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List view 1'),
      ),
      body: ListView(
        children: [
          Card(
              child: ListTile(
            leading: Icon(Icons.people_alt_rounded),
            title: Text('product 1'),
            subtitle: Text('this is a sample subtitle'),
            trailing: Column(
              children: [
                Text('10:13'),
                CircleAvatar(
                  minRadius: 5,
                  maxRadius: 10,
                  backgroundColor: Colors.teal,
                  child: Text('1'),
                )
              ],
            ),
          )),
          Card(
              child: ListTile(
            leading: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/IMG20200420113610.jpg')),
            title: Text('CD'),
            subtitle: Text('seri kizzi bassuuuu'),
            trailing: Column(
              children: [
                Text('10:32'),
                CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Text('5'),
                  maxRadius: 10,
                  minRadius: 5,
                )
              ],
            ),
          )),
          Card(
              child: ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/00000PORTRAIT_00000_BURST20220908085917730.jpg')),
            title: Text('CD2'),
            subtitle: Text('oooii'),
            trailing: Column(
              children: [
                Text('10:47'),
                CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Text('1'),
                  minRadius: 5,
                  maxRadius: 10,
                )
              ],
            ),
          )),
          Card(
              child: ListTile(
            leading: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/IMG_20210915_120137.jpg')),
            title: Text('Emmu'),
            subtitle: Text('Yo boi!!'),
            trailing: Column(
              children: [
                Text('10:50'),
                CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Text('1'),
                  minRadius: 5,
                  maxRadius: 10,
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
