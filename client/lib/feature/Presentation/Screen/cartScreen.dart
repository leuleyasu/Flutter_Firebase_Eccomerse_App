import 'package:flutter/material.dart';

import 'Widgets/customappbar.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static const String routename="/cart";
static Route route(){
  return MaterialPageRoute(
    settings: const RouteSettings(
      name: routename
    ),
    builder: (ctx)=> const CartScreen());
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
