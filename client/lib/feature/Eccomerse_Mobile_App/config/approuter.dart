
import 'package:client/feature/Eccomerse_Mobile_App/Presentation/Screen/CatalogScreen.dart';
import 'package:client/feature/Eccomerse_Mobile_App/Presentation/Screen/Homescreen.dart';
import 'package:client/feature/Eccomerse_Mobile_App/Presentation/Screen/cartScreen.dart';
import 'package:client/feature/Eccomerse_Mobile_App/Presentation/Screen/splashscree.dart';
import 'package:flutter/material.dart';
import '../Data/Models/Categorymodel.dart';
import '../Data/Models/ProductModel.dart';
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
          title: const Text("Error transition"),
        ),
      ));
  }

}