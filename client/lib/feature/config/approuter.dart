
import 'package:client/feature/Data/Categorymodel.dart';
import 'package:client/feature/Data/ProductModel.dart';
import 'package:client/feature/Presentation/Screen/CatalogScreen.dart';
import 'package:client/feature/Presentation/Screen/Homescreen.dart';
import 'package:client/feature/Presentation/Screen/cartScreen.dart';
import 'package:client/feature/Presentation/Screen/splashscree.dart';
import 'package:flutter/material.dart';

import '../Presentation/Screen/ReccomendedProduct.dart';
import '../Presentation/Screen/WishlistScreen.dart';


class AppRouter {
  static Route onGenerateRoute(RouteSettings settings){
switch(settings.name){
  case '/':return HomeScreen.route();
  case SplashScreen.routename:return SplashScreen.route();
  case CartScreen.routename:return CartScreen.route();
  case CatalogScreen.routename:return CatalogScreen.route(categoyname: settings.arguments as CategoryModel);
  case ReccomendedProduct.routename:return ReccomendedProduct.route(reccomendedname: settings.arguments as ProductModel);
  case WishListScreen.routename:return WishListScreen.route();
default:
return _errorRoute();
}


  }
  static Route _errorRoute(){
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/error'
      ),
      builder: (_)=>Scaffold(
        appBar: AppBar(
          title: Text("Error transition"),
        ),
      ));
  }

}