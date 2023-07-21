// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:client/feature/Data/Categorymodel.dart';
import 'package:client/feature/Data/Models.dart';
import 'package:client/feature/Presentation/Widgets/Productcarausel.dart';
import 'package:client/feature/Presentation/Widgets/sectiontitle.dart';
import 'package:flutter/material.dart';

import '../Widgets/ProductSlidersection.dart';
import '../Widgets/Productslider.dart';
import '../Widgets/custombottmbar.dart';

class HomeScreen extends StatefulWidget {

   HomeScreen({super.key});
  static const String routename="/";
static Route route(){
  return MaterialPageRoute(
    settings: const RouteSettings(
      name: routename
    ),
    builder: (ctx)=>  HomeScreen());
}
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {
    final CategoryModel category;
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black12,
      shadowColor: Colors.black12,
      title: const Center(child: Text("Eccomerse Demo App", style:  TextStyle(fontWeight: FontWeight.w400),)),
    ),
bottomNavigationBar: const CustomBottombar(),

body: Column(
  children: [
        Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child:   CarouselSlider(
              options: CarouselOptions(
      aspectRatio: 1.5,
      enlargeCenterPage: true,
      enableInfiniteScroll: false,
      initialPage: 2,

              ),
              items: CategoryModel.categories.map((e) => ProductSlider(category: e)).toList(),
            ),
    ),

 SectionTitle(title: "Reccomended"),
ProductSliderSection(product:ProductModel.products ),

  ]
));
  }
}
