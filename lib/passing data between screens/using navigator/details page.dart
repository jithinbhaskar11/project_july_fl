import 'package:flutter/material.dart';
import 'package:project_july_fl/passing%20data%20between%20screens/using%20navigator/dummy%20data.dart';

class ProductDetails extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    var ID=ModalRoute.of(context)?.settings.arguments;
    var product=products.firstWhere((product) => product['ID']==ID);
    return Scaffold(
      appBar: AppBar(
        title: Text('product details'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(product['Image'],height: 200,width: 200,),
            Text(product['Name'],style: TextStyle(fontSize: 30),),
            Text('${product['Price']}',style: TextStyle(fontSize: 15),),
            Text('${product['Rating']}',style: TextStyle(fontSize: 15),),
            Text(product['description'])
          ],
        ),
      ),
    );
  }
}
