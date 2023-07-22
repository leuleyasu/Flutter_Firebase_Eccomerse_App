
import 'package:client/feature/Data/Categorymodel.dart';
import 'package:client/feature/Data/ProductModel.dart';
import 'package:client/feature/Presentation/Widgets/ProductSlidersection.dart';
import 'package:client/feature/Presentation/Widgets/widgets.dart';
import 'package:flutter/material.dart';
import '../Widgets/Productcarausel.dart';
import '../Widgets/customappbar.dart';
class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key, required this.categoriesname});
  static const String routename="/catalog";
static Route route({ required CategoryModel categoyname} ){
  return MaterialPageRoute(
    settings: const RouteSettings(
      name: routename
    ),
    builder: (ctx)=>  CatalogScreen(categoriesname:categoyname,));
}
  final CategoryModel categoriesname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Customappbar(title: categoriesname.name),
      ),
bottomNavigationBar: const CustomBottombar(),

      body:GridView.builder(
        itemCount: ProductModel.products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2), itemBuilder: (context,index){

       return ProductCarausel(product: ProductModel.products[index]);

          }

      )

    );
  }
}
