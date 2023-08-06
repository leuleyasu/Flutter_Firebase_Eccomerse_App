import 'package:carousel_slider/carousel_slider.dart';
import 'package:client/feature/Business/bloc/wishlish_bloc.dart';
import 'package:client/feature/Presentation/Widgets/CatagorySlider.dart';
import 'package:client/feature/Presentation/Widgets/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Business/bloc/wishlish_event.dart';
import '../../Business/bloc/wishlish_state.dart';
import '../../Data/ProductModel.dart';

class ReccomendedProduct extends StatelessWidget {
  const ReccomendedProduct({super.key, required this.reccomended});
  final ProductModel reccomended;

  static const String routename = "/Reccomended";
  static Route route({required ProductModel reccomendedname}) {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routename),
        builder: (ctx) => ReccomendedProduct(reccomended: reccomendedname));
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

   actions: [
IconButton(onPressed: (){
  Navigator.pushNamed(context, '/Wishlist');
}, icon:  const Icon(Icons.favorite_outline))
   ],
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
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      color: Colors.white,
                    )),
  BlocProvider<WishlistBloc>(
  create: (context) => WishlistBloc(), // You can also use context.read<WishlistBloc>() if already provided.
  child: BlocConsumer<WishlistBloc, WishlistState>(
    listener: (context, state) {
      // Listen to state changes and display a SnackBar when WishlistAddedState is emitted
      if (state is WishlistLoaded) {
        const snackbar = SnackBar(content: Text("Wishlist Added successfully"));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      }
    },
    builder: (context, state) {
      // Build your UI based on the current state
      return GestureDetector(
        onTap: () {
            context.read<WishlistBloc>().add(AddWishlist(reccomended));

        },

        child:const Icon(Icons.favorite_border_outlined,color: Colors.white,),
      );
    },
  ),
),



                ElevatedButton(
                    onPressed: () {}, child: const Text("ADDTO CART"))
              ],
            )),
      ),
      body: ListView(
        children: [
        Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: CarouselSlider(
                    options: CarouselOptions(
                      scrollDirection: Axis.horizontal,
                      aspectRatio: 1.5,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      initialPage: 3,
                    ),
                    items: [
                      CategoryProductSlider(product: reccomended)
                    ])),
            Stack(
              children: [
                Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(color: Colors.black),
                ),
                Row(
                  children: [
                    Text(
                      reccomended.name,
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      '${reccomended.price}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            const ExpansionTile(
              title: Text(
                "Product information",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                ListTile(
                  title: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus sem. Nulla hendrerit ex non tellus dignissim, eu rhoncus sapien ven"),
                )
              ],
            ),
            const ExpansionTile(
              title: Text(
                "Delivery information",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                ListTile(
                  title: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus sem. Nulla hendrerit ex non tellus dignissim, eu rhoncus sapien ven"),
                )
              ],
            )
          ],
        ),
      ]),
    );
  }
}
