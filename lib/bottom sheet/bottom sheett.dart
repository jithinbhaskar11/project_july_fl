import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(
    home: Bot_sheet(),
  ));
}

class Bot_sheet extends StatelessWidget {
  const Bot_sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom sheet'),
      ),
      body: Center(
        child: GestureDetector(
          onLongPress: (){
            showSheet(context); ///type it and create methode
          },
            child: Image.asset('assets/images/car.jpeg')),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(Icons.share),
              Text('Share via'),
            ],
          ),
          Divider(),
          ListTile(leading: FaIcon(FontAwesomeIcons.whatsapp, color: Colors.green,),
          title: Text('whatsApp'),),
          SizedBox(height: 20,),
          ListTile(leading: FaIcon(Icons.telegram,color: Colors.blue,),
          title: Text('Telegram'),)
        ],
      );
    });
  }
}
