// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client/feature/Business/bloc/wishlish_bloc.dart';
import 'package:client/feature/Data/ProductModel.dart';
import 'package:client/feature/Presentation/Widgets/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Widgets/Productcarausel.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({
    Key? key,
  }) : super(key: key);

  static const String routename = "/Wishlist";
  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routename),
        builder: (ctx) => WishListScreen());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Customappbar(title: "WishList"),
      ),
      body: BlocBuilder<WishlishBloc, WishlishState>(

        builder: (context, state) {

          if (state is WishListLoading) {
            return Center(child: CircularProgressIndicator(),);


          }else if(state is WishlistLoaded){
               return GridView.builder(
              itemCount: state.wishlist.product.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return ProductCarausel(
                  product: state.wishlist.product[index],
                  iswishlist: true,
                );
              });
          }else{
            return Text("Something Went Wrong");
          }

        },
      ),
    );
  }
}
