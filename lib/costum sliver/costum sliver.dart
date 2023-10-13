import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Cos_sliver(),
  ));
}

class Cos_sliver extends StatelessWidget {
  const Cos_sliver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text('sliver example'),
            bottom: AppBar(
              title: Container(
                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(45)
                ),
                width: double.infinity,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'search',
                    suffixIcon: Icon(Icons.camera_alt_outlined),
                    prefixIcon: Icon(Icons.search)
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) => Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Name'),
              subtitle: Text('abc'),
            ),
          )))
        ],
      ),
    );
  }
}
