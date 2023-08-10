// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:html';

import 'package:client/feature/Eccomerse_Mobile_App/Data/Models/ProductModel.dart';
import 'package:client/feature/Eccomerse_Mobile_App/Domain/Repositories/BaseProduct_repositorie.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductRepositories extends BaseProductRepositorie {
  FirebaseFirestore _firebaseFirestore;
  ProductRepositories({
   FirebaseFirestore? firebaseFirestore
  }):_firebaseFirestore=firebaseFirestore ??FirebaseFirestore.instance;
  @override
  Stream<List<ProductModel>> getProductmodel() {
return _firebaseFirestore.collection("product").snapshots() .map((snapshot) =>
            snapshot.docs.map((doc) => ProductModel.fromSnapshot(doc)).toList());
  }
}
