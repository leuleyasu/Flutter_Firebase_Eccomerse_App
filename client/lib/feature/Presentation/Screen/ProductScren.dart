import 'package:flutter/material.dart';

import '../Widgets/customappbar.dart';
class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  static const String routename="/product";
static Route route(){
  return MaterialPageRoute(
    settings: const RouteSettings(
      name: routename
    ),
    builder: (ctx)=> const ProductScreen());
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Customappbar(title: 'Demo Eccomerse App',),
      ),
    );
  }
}
