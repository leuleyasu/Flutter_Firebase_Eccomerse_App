import 'package:client/feature/Eccomerse_Mobile_App/Data/Categorymodel.dart';
import 'package:flutter/foundation.dart';

abstract class BaseCategorie {
  Stream<List<CategoryModel>>getAllcategory();
}