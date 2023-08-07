// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client/feature/Business/bloc/Cart/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Data/ProductModel.dart';

class ProductCarausel extends StatelessWidget {
  final ProductModel product;

   bool iswishlist = false;

  ProductCarausel({
    Key? key,
    required this.product,

    this.iswishlist = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/Reccomended', arguments: product);
      },
      child: Stack(children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.5,
          height: 150,
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width / 3.0,
              decoration: const BoxDecoration(color: Colors.black),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(children: [
                  Text(
                    product.name,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${product.price}",
                          style: const TextStyle(color: Colors.white),
                        ),
                        BlocBuilder<CartBloc, CartState>(
                          builder: (context, state) {
                           if (state is CartInitial) {
                            return IconButton(
                                  onPressed: () {
                                    context
                                        .read()<CartBloc>()
                                        .add(AddCart(product));
                                  },
                                  icon: const Icon(
                                    Icons.add_circle,
                                    color: Colors.white,
                                  ));
                           }
                            if (state is CartLoaded) {
                              return IconButton(
                                  onPressed: () {
                                    context
                                        .read()<CartBloc>()
                                        .add(AddCart(product));
                                  },
                                  icon: const Icon(
                                    Icons.add_circle,
                                    color: Colors.white,
                                  ));
                            } else {
                              return const Text("something Went wrong ");
                            }
                          },
                        ),
                        iswishlist
                            ? IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.remove_circle,
                                  color: Colors.white,
                                ))
                            : const SizedBox()
                      ]),
                ]),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
