import 'package:flutter/material.dart';

import '../Widgets/customappbar.dart';
class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});
  static const String routename="/wish";
static Route route(){
  return MaterialPageRoute(
    settings: const RouteSettings(
      name: routename
    ),
    builder: (ctx)=> const WishListScreen());
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
