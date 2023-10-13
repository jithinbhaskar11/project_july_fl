import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:project_july_fl/gpay%20splashpage.dart';
void main(){
  runApp(MaterialApp(
    home: IntroScreen(),
  ));
}
class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {

    PageDecoration decorationPage=PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 20,
        fontStyle: FontStyle.italic,
        color: Colors.black
      ),
      // boxDecoration: BoxDecoration(
      //   gradient: LinearGradient(colors: [Colors.white,Colors.lightBlueAccent,Colors.blue])
      // )
    );

    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: decorationPage,
          title: 'First page',
          body: 'Not all of the many parameters in each class are used in these examples. See Parameter Lists for the complete documentation for each class.',
          image: IntroImage('assets/images/Download Business man cartoon character for free.jpeg')
        ),
        PageViewModel(
            decoration: decorationPage,
          title: '2nd page',
          body: 'This example defines the color of the page using the decoration parameter. The image link does not exist and is only for example',
          image: IntroImage('assets/images/Free Vector _ Self confidence concept illustration.jpeg')
        ),
        PageViewModel(
            decoration: decorationPage,
          title: '3rd page',
          body: 'To change page manually / programatically, in response to user input or another event:',
          image: IntroImage('assets/images/Premium Vector _ Man character thinking.jpeg')
        )
      ],
      onSkip: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>gopenpage())),
      onDone: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>gopenpage())),
      showSkipButton: true,
      skip: Text('skip'),
      // showBackButton: true,
      // back: Text('back'),
      next: Icon(Icons.arrow_forward),
      done: Text('Done'),
      dotsDecorator: DotsDecorator(
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),size: Size(12, 10),
        activeSize: Size(15, 10),activeColor: Colors.green
      ),


    );
  }

 Widget IntroImage(String imgpath) {
    return Align(
      alignment: Alignment.topCenter,
      child: Image.asset(imgpath,width: double.infinity,),
    );
  }
}
