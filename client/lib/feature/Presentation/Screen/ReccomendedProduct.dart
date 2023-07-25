import 'package:carousel_slider/carousel_slider.dart';
import 'package:client/feature/Presentation/Widgets/CatagorySlider.dart';
import 'package:client/feature/Presentation/Widgets/customappbar.dart';
import 'package:flutter/material.dart';

import '../../Data/ProductModel.dart';

class ReccomendedProduct extends StatelessWidget {
  const ReccomendedProduct({super.key, required this.reccomended});
 final ProductModel reccomended;

    static const String routename="/Reccomended";
  static Route route({required ProductModel reccomendedname} ){
  return MaterialPageRoute(
    settings: const RouteSettings(
      name: routename
    ),
    builder: (ctx)=>  ReccomendedProduct(reccomended:reccomendedname));
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Customappbar(title: reccomended.name),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.share,color: Colors.white,))
            ,  IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline,color: Colors.white,))
          , ElevatedButton(onPressed: (){}, child: const Text("ADDTO CART"))

            ],
          )
        ),
      ),
      body:
        ListView(
          children: [
     Column(
            children: [
              Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child:   CarouselSlider(
                      options: CarouselOptions(
                    aspectRatio: 1.5,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 3,

                      ),
                items: [
                CategoryProductSlider(product: reccomended)

                ]

                    )


                  ),
                Stack(
                  children: [
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.black
                      ),
                    ),
               Row(
                children: [
                  Text(reccomended.name,style: const TextStyle(color: Colors.white),),
                  Text('${reccomended.price}',style: const TextStyle(color: Colors.white),),
                ],

               )
                  ],

                )  ,

             const   ExpansionTile(
                  children: [
        ListTile(
        title: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus sem. Nulla hendrerit ex non tellus dignissim, eu rhoncus sapien ven"),
        )
                  ],

                  title: Text("Product information" ,style: TextStyle(fontWeight: FontWeight.bold),),


                  ),
                                ExpansionTile(
                  children: [
        ListTile(
        title: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus sem. Nulla hendrerit ex non tellus dignissim, eu rhoncus sapien ven"),
        )
                  ],

                  title: Text("Delivery information" ,style: TextStyle(fontWeight: FontWeight.bold),),


                  )

            ],
          ),
      ]  ),



    );
  }
}