import '../../Data/Models/Categorymodel.dart';

abstract class BaseCategorie {
  Stream<List<CategoryModel>>getAllcategory();
}