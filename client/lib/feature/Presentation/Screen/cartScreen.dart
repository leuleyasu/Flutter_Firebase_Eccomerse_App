import 'package:client/feature/Data/ProductModel.dart';
import 'package:client/feature/Presentation/Widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../Widgets/customappbar.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static const String routename="/cart";
static Route route(){
  return MaterialPageRoute(
    settings: const RouteSettings(
      name: routename
    ),
    builder: (ctx)=> const CartScreen());
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Customappbar(title: 'Cart'),

      ),
      bottomNavigationBar: const CustomBottombar(),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          children: [
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Add one item for free delivery"),
          ElevatedButton(onPressed: (){},
           child: const Text("Add More Items"))
        ],
       ),

        CartProduct(product: ProductModel.products[0],)
         ],
        ),
      ),
    );
  }
}
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