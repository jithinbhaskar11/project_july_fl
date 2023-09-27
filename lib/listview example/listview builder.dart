import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listview_builder(),
  ));
}

class Listview_builder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview builder'),
      ),
      body: ListView(children: [
        ListTile(
          leading: CircleAvatar(

            child: Icon(Icons.link_outlined),
            backgroundColor: Colors.teal,
          ),
          title: Text('Create call link'),
          subtitle: Text('Share a link '),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text('Recents'),
        ),
        ListView.builder(
            itemCount: 5,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('hello'),
                leading: Icon(Icons.shop_2),
                subtitle: Text('hi'),
                trailing: Icon(Icons.shop_two_outlined),
              );
            }),
      ]),
    );
  }
}
