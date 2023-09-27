import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Listview_seperated(),
  ));
}
class Listview_seperated extends StatelessWidget {
  const Listview_seperated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview seperator'),
      ),
      body: ListView.separated(itemBuilder: (ctx,i){
        return Card(
          child: Text('my data'),
        );
      },
          separatorBuilder: (context,index){
        if(index %4==0){
          return Divider(color: Colors.red,thickness: 3,);
        }else{
          return SizedBox();
        }
          },
          itemCount: 15),
    );
  }
}
