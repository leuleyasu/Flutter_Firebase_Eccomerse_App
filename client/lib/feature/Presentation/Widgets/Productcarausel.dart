
import 'package:flutter/material.dart';
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
          width: MediaQuery.of(context).size.width,
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
              width: MediaQuery.of(context).size.width / 2.0,
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
                        IconButton(
                            onPressed: () {


                             }, icon: const Icon(
                              Icons.add_circle,
                              color: Colors.white,
                            )

                            ),iswishlist ?
                             IconButton(
                        onPressed: () {


                             }, icon: const Icon(
                              Icons.add_circle,
                              color: Colors.white,
                                                       )

                                                       ): const SizedBox()

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
