// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:client/feature/Eccomerse_Mobile_App/Presentation/Widgets/sectiontitle.dart';
import 'package:flutter/material.dart';
import '../../Data/Categorymodel.dart';
import '../../Data/Models/ProductModel.dart';
import '../../Data/ProductModel.dart';
import '../Widgets/ProductSlidersection.dart';
import '../Widgets/CatagorySlider.dart';
import '../Widgets/custombottmbar.dart';

class HomeScreen extends StatefulWidget {

const   HomeScreen({super.key});
  static const String routename="/";
static Route route(){
  return MaterialPageRoute(
    settings: const RouteSettings(
      name: routename
    ),
    builder: (ctx)=>  const HomeScreen());
}
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black12,
      shadowColor: Colors.black12,
      title: const Center(child: Text("Eccomerse Demo App", style:  TextStyle(fontWeight: FontWeight.w400),)),

   actions: [
IconButton(onPressed: (){
  Navigator.pushNamed(context, '/Wishlist');
}, icon:  const Icon(Icons.favorite_outline))
   ], ),
    bottomNavigationBar: const CustomBottombar(),

    body: SingleChildScrollView(
      child: Column(
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
       items: CategoryModel.categories.map((e) => CategoryProductSlider(category: e)).toList(),
              ),
            ),

       const SectionTitle(title: "Reccomended"),
      ProductSliderSection(product:
      ProductModel.products.where(
      (products) => products.isReccomended).toList() ),





       SectionTitle(title: "Popular"),
      ProductSliderSection(product:
      ProductModel.products.where(
      (products) => products.ispopular).toList() ),

      ]
      ),
    ));
  }
}
