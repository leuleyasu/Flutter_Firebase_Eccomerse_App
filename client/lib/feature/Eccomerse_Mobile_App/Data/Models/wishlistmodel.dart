
import 'package:equatable/equatable.dart';

import 'ProductModel.dart';

class WishList extends Equatable{

 final List<ProductModel> product;

  const WishList({this.product =const <ProductModel>[]});

  @override
  List<Object?> get props => [product];


}