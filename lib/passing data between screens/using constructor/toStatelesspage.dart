import 'package:flutter/material.dart';

class DataStateless extends StatelessWidget {
  String name;
  String? location;
  int phone;
  DataStateless({ required this.name,    this.location, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('name : $name'),
            Text('loacation : $location'),
            Text('phone : ${phone}')
          ],
        ),
      ),
    );
  }
}
