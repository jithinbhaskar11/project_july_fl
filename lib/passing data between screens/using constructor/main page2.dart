import 'package:flutter/material.dart';
import 'package:project_july_fl/passing%20data%20between%20screens/using%20constructor/toStatefulpage.dart';
import 'package:project_july_fl/passing%20data%20between%20screens/using%20constructor/toStatelesspage.dart';

void main() {
  runApp(MaterialApp(
    home: MainPage2(),
  ));
}

class MainPage2 extends StatelessWidget {
  const MainPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data passing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DataStateless(
                      name:'luminar',
                      location:'kakkanad',
                      phone: 689896664
                    ))),
                child: Text('To StateLess')),
            SizedBox(height: 50,),
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DataStateful(
                        name:'luminar',
                        location:'kakkanad',
                        phone: 689896664
                    ))),
                child: Text('To StateFul'))
          ],
        ),
      ),
    );
  }
}
