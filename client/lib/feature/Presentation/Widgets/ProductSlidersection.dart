import 'package:flutter/material.dart';
import '../../Data/ProductModel.dart';
import 'Productcarausel.dart';

class ProductSliderSection extends StatelessWidget {
  final List<ProductModel> product;
  const ProductSliderSection({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     SizedBox(
      height: 160,
      child: ListView.builder(
        itemCount: ProductModel.products.length,
       shrinkWrap: true,
       scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
      child:   ProductCarausel(product:product[index]),
    );
      }));
  }
}
