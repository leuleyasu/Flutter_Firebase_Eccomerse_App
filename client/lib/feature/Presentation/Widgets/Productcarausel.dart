import 'package:flutter/material.dart';

import '../../Data/ProductModel.dart';

class ProductCarausel extends StatelessWidget {
  final ProductModel product;
  const ProductCarausel({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/Reccomended', arguments: product);
      },
      child: Stack(
         children: [
      Container(
         width: MediaQuery.of(context).size.width/2.5,

         height: 150,
         child: Image.network(product.imageUrl),
      ),
      Positioned(
         top: 60,
         child:   Container(
           height: 70,
           width: MediaQuery.of(context).size.width/2.5,

           decoration: const BoxDecoration(
             color: Colors.black

           ),
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: Column(
               children: [
                 Text(product.name,style: const TextStyle(color: Colors.white),)
              ,

                   Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Text("\$${product.price}",style: const TextStyle(color: Colors.white),)
                        ,

                        Padding(
                         padding: const  EdgeInsets.only(left: 39),


                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle, color: Colors.white,))),



                   ]),


               ]),
           ),


           ),
         ),
      ]),
    );



  }
}
