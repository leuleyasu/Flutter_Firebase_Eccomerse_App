import 'package:client/feature/Presentation/Widgets/CatagorySlider.dart';
import 'package:client/feature/Presentation/Widgets/customappbar.dart';
import 'package:flutter/material.dart';

import '../../Data/ProductModel.dart';

class ReccomendedProduct extends StatelessWidget {
  const ReccomendedProduct({super.key, required this.reccomended});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Customappbar(title: reccomended.name),
      ),
      body:CategoryProductSlider(product: reccomended,)
    );
  }
  final ProductModel reccomended;

    static const String routename="/Reccomended";
  static Route route({required ProductModel reccomendedname} ){
  return MaterialPageRoute(
    settings: const RouteSettings(
      name: routename
    ),
    builder: (ctx)=>  ReccomendedProduct(reccomended:reccomendedname));
}}
