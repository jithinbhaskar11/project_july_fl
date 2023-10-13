import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(
    home: LottieEx(),
  ));
}

class LottieEx extends StatelessWidget {
  const LottieEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //child: Lottie.asset('assets/animations/animation.json'), ///asset
        child: Lottie.network('https://lottie.host/134800e3-56bd-49c1-a667-af99ae138e6f/yA6RUJvLO6.json'),
      ),
    );
  }
}
