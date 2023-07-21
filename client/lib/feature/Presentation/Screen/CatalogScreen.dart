import 'package:client/feature/Data/Categorymodel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../Data/Categorymodel.dart';
import '../Widgets/customappbar.dart';
class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key, required this.categoriesname});
  static const String routename="/catalog";
static Route route( {required CategoryModel category}){
  return MaterialPageRoute(
    settings: const RouteSettings(
      name: routename
    ),
    builder: (ctx)=> CatalogScreen(categoriesname: category,));
}
  final CategoryModel categoriesname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Customappbar(title: categoriesname.name),
      ),
    );
  }
}
