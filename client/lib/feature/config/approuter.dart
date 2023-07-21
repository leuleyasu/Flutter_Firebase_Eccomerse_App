import 'package:client/feature/Presentation/Screen/CatalogScreen.dart';
import 'package:client/feature/Presentation/Screen/Homescreen.dart';
import 'package:client/feature/Presentation/Screen/ProductScren.dart';
import 'package:client/feature/Presentation/Screen/WishList.dart';
import 'package:client/feature/Presentation/Screen/cartScreen.dart';
import 'package:flutter/material.dart';


class AppRouter {
  static Route onGenerateRoute(RouteSettings settings){
switch(settings.name){
  case '/':return HomeScreen.route();
  case CartScreen.routename:return CartScreen.route();
  case CatalogScreen.routename:return CatalogScreen.route();
  case ProductScreen.routename:return ProductScreen.route();
  case WishListScreen.routename:return WishListScreen.route();
default:
return _errorRoute();
}


  }
  static Route _errorRoute(){
    return MaterialPageRoute(
      settings: RouteSettings(
        name: '/error'
      ),
      builder: (_)=>Scaffold(
        appBar: AppBar(
          title: Text("Error transition"),
        ),
      ));
  }

}