// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:html';

import 'package:client/feature/Eccomerse_Mobile_App/Domain/Repositories/categories_repositorie.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../Models/Categorymodel.dart';
class CategorieRepositories extends BaseCategorie {
 final FirebaseFirestore _firebaseFirestore;
  CategorieRepositories({
   FirebaseFirestore? firebaseFirestore
  }):_firebaseFirestore=firebaseFirestore??FirebaseFirestore.instance;
  @override

  @override
  Stream<List<CategoryModel>> getAllcategory() {
  return _firebaseFirestore
        .collection("categories")
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => CategoryModel.fromSnapshot(doc)).toList());
  }
}