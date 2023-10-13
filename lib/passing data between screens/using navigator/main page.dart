import 'package:flutter/material.dart';
import 'package:project_july_fl/passing%20data%20between%20screens/using%20navigator/details%20page.dart';
import 'dummy data.dart';

void main(){
  runApp(MaterialApp(
    home: ProductMain(),
    routes: {
      'details':(context)=>ProductDetails()
    },
  ));
}

class ProductMain extends StatelessWidget {
  const ProductMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   body: Padding(
    // padding: const EdgeInsets.all(15.0),
    // child: ListView(
    // padding: EdgeInsets.all(15),
    // children: products.map((product)=> ListTile(
    // leading: Image.asset(product['Image']),
    //         title: Text(product['Name']),
    //         subtitle: Text('${product['Price']}rs'),
    //       )).toList(),
    //     ),
    //   ),
      
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      // children: products.map((product) => Column(
      //   children: [
      //     InkWell(
      //       onTap: ()=> Navigator.of(context).pushNamed('details',arguments: product['ID']),
      //       child: Card(
      //         child: Container(
      //           height: 200,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               fit: BoxFit.cover,
      //                 image: AssetImage(product['Image']))
      //           ),
      //         ),
      //       ),
      //     ),
      //     Text(product['Name']),
      //     Text('${product['Price']}rs')
      //   ],
      // )).toList() ,),

        children:
          List.generate(products.length, (index) => InkWell(
            onTap: ()=>Navigator.of(context).pushNamed('details',arguments: products[index]['ID']),
            child: Card(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(products[index]['Image']),
                      fit: BoxFit.cover)
                    ),
                  ),
                  Text(products[index]['Name']),
                  Text('${products[index]['Price']}\$')
                ],
              ),
            ),
          ))

    ));
  }
}
