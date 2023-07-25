import 'package:flutter/material.dart';

import '../../Data/ProductModel.dart';

class CartProduct extends StatelessWidget {
  final ProductModel product;
  const CartProduct({super.key,required this.product});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Image.network(product.imageUrl,
        width: 100,
        height: 100,
        ),
      Column(

        children: [
        Text(product.name),
        Text('${product.price}'),

       Row(
children: [
  IconButton(onPressed: (){}
  , icon: Icon(Icons.remove_circle)),
  Text("1"),
   IconButton(onPressed: (){}
  , icon: Icon(Icons.add_circle))
],
       )

        ],

      )


      ],

    );
  }
}