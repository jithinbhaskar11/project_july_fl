import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
void main(){
  runApp(MaterialApp(home: ReadMore(),));
}

class ReadMore extends StatelessWidget {
  const ReadMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Read more'),),
      body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ReadMoreText(
          'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
          trimLines: 2,
          colorClickableText: Colors.pink,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
        )
        ],
      ),
    );
  }
}
