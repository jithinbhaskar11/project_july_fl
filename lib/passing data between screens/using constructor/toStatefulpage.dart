import 'package:flutter/material.dart';

class DataStateful extends StatefulWidget {
  String name;
  String location;
  int phone;
   DataStateful({super.key, required this.name, required this.location, required this.phone});

  @override
  State<DataStateful> createState() => _DataStatefulState();
}

class _DataStatefulState extends State<DataStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.name),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('name : ${widget.name}'),
            Text('location : ${widget.location}'),
            Text('phone : ${widget.phone}')
          ],
        ),
      ),
    );
  }
}
