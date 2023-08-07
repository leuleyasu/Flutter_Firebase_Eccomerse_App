// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../Data/ProductModel.dart';
import 'Productcarausel.dart';

class ProductSliderSection extends StatelessWidget {
  final List<ProductModel> product;
  // final ProductModel product;
  const ProductSliderSection({
    Key? key,
    required this.product,
    // required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/Reccomended');
      },
      child: SizedBox(
        height: 160,
        child: ListView.builder(
          itemCount: product.length,
          shrinkWrap: true,
         scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
        child:   ProductCarausel(product:product[index]),
      );
        })),
    );
  }
}
