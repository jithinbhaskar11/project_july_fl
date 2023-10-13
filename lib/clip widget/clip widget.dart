import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
void main(){
  runApp(MaterialApp(
    home: ClipWidget(),
  ));
}

class ClipWidget extends StatelessWidget {
  const ClipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ///ClipRect
            ClipRect(
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/car.jpeg'),
                  heightFactor: .7,
                  widthFactor: .4,
                ),
              ),
            ),
            ///rounded
            ClipRRect(
              borderRadius: BorderRadius.circular(300),
              child: Container(
                height: 200,
                width: 200,
                child: Image.asset("assets/images/Leo fan made edit 💥🔥.jpeg"),
              ),
            ),
            ClipOval(
              child: Image.asset('assets/images/Leo fan made edit 💥🔥.jpeg'),
            ),
            ClipPath(
              clipper: StarClipper(8),
              child: Container(
                //height: 450,
                color: Colors.indigo,
                child: Center(child: Image.asset('assets/images/Leo fan made edit 💥🔥.jpeg'),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
