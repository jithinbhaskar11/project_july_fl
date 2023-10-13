import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_july_fl/navig%20drawer/navig%20drawerEx.dart';

void main(){
  runApp(MaterialApp(
    home: Car_slider(),
  ));
}

class Car_slider extends StatelessWidget {
  const Car_slider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('slider'),
      ),
      body: CarouselSlider(items: [
        GestureDetector(
          onTap:(){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Nav_drawer()));},
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/AR Rahman Scribble Art.jpeg'),
              fit: BoxFit.cover)
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/backstreet.jpeg'))
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/car.jpeg'))
          ),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/AR Rahman Scribble Art.jpeg'),
                  fit: BoxFit.cover)
          ),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/backstreet.jpeg'))
          ),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/car.jpeg'))
          ),
        )
      ], options: CarouselOptions(
        autoPlay: true,
        viewportFraction: .8,
        height: 400,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlayCurve: Curves.easeInBack,
        autoPlayAnimationDuration: Duration(seconds: 2)
      )),
    );
  }
}
