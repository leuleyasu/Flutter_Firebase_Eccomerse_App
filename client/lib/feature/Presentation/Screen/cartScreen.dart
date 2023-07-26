import 'package:client/feature/Data/Models.dart';
import 'package:client/feature/Data/ProductModel.dart';
import 'package:client/feature/Presentation/Widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../Widgets/CartproductWidget.dart';
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
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: (){}, child:

          const Text("Go To Checkout", style: TextStyle(color: Colors.white),)
          )
        ],

          ),
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          children: [
       Column(
         children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Add one item for free delivery"),
              ElevatedButton(onPressed: (){},
               child: const Text("Add More Items"))
            ],
           ),
         ],
       ),
       SizedBox(height: 20,),
       ListView.builder(
        itemCount: Cart.products.length,
        itemBuilder:

       (context,index){
      return  CartProduct(product: ProductModel.products[index],);

       }),

       Column(
        children: [
 Divider(thickness: 2,),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
  child:   Row(
    children: [
      Text("Delivery fee"),
      Text("\$2.90"),

    ],

  ),
),
 Stack(
    children: [
Container(
  width: MediaQuery.of(context).size.width,
  height: 50,
  decoration: const BoxDecoration(
    color: Colors.black
  ),
  child:   Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    child: Row(
      children: [
        Text("Total",style: TextStyle(color: Colors.white),),
        Text("\$2.90",style: TextStyle(color: Colors.white)),

      ],

    ),
  ),

)
    ],
  )
        ],
       ),

         ],
        ),
      ),
    );
  }
}
