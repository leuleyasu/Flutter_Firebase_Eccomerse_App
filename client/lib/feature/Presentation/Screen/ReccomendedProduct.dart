import 'package:flutter/material.dart';

import '../../Data/ProductModel.dart';

class ReccomendedProduct extends StatefulWidget {
  const ReccomendedProduct({super.key, required this.reccomended});

  @override
  State<ReccomendedProduct> createState() => _ReccomendedProductState();
    static const String routename="/Reccomended";
  static Route route({required ProductModel reccomendedname} ){
  return MaterialPageRoute(
    settings: const RouteSettings(
      name: routename
    ),
    builder: (ctx)=>  ReccomendedProduct(reccomended:reccomendedname));
}
final ProductModel reccomended;
}

class _ReccomendedProductState extends State<ReccomendedProduct> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}