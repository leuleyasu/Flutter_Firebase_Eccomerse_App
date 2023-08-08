// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
class CategoryModel extends Equatable {

   final String name;
   final String imageUrl;
   const CategoryModel({
    required this.name,
    required this.imageUrl,
  });






  @override
  List<Object?> get props => [name,imageUrl];
 static List<CategoryModel> categories = [
    const CategoryModel(
       name: 'Soft Drinks',
        imageUrl:
          'https://images.unsplash.com/photo-1534057308991-b9b3a578f1b1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80', //https://unsplash.com/photos/5lZhD2qQ2SE
    ),
    const CategoryModel(
      name: 'Smoothies',
      imageUrl:
          'https://images.unsplash.com/photo-1502741224143-90386d7f8c82?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', //https://unsplash.com/photos/m741tj4Cz7M
    ),
    const CategoryModel(
      name: 'Water',
      imageUrl:
          'https://images.unsplash.com/photo-1559839914-17aae19cec71?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80', //https://unsplash.com/photos/7Zlds3gm7NU
    ),
  ];


  static CategoryModel fromSnapshot(DocumentSnapshot snap) {
    return CategoryModel(
      name: snap['name'] as String,
      imageUrl: snap['imageUrl'] as String,
    );
  }

}