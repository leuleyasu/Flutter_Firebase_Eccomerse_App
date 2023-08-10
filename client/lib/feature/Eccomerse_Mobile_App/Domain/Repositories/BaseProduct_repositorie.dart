import 'package:client/feature/Eccomerse_Mobile_App/Data/Models/ProductModel.dart';

abstract class BaseProductRepositorie{
  Stream <List<ProductModel>>getProductmodel();

}