import 'package:flutter/material.dart';

import 'Widgets/customappbar.dart';
class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});
  static const String routename="/catalog";
static Route route(){
  return MaterialPageRoute(
    settings: const RouteSettings(
      name: routename
    ),
    builder: (ctx)=> const CatalogScreen());
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
