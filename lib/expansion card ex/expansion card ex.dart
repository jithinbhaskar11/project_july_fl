import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ExpansionTileEx(),
  ));
}

class ExpansionTileEx extends StatelessWidget {
  const ExpansionTileEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expansion card'),
      ),
      body: Column(
        children: [
          ExpansionTile(
            title: Text('hello'),
            subtitle: Text('expand to view more'),
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                title: Text('green'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Text('blue'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                title: Text('red'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
