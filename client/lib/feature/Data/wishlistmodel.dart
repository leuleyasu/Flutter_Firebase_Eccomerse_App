
import 'package:client/feature/Data/ProductModel.dart';
import 'package:equatable/equatable.dart';

class WishList extends Equatable{

 final List<ProductModel> product;

  const WishList({this.product =const <ProductModel>[]});

  @override
  // TODO: implement props
  List<Object?> get props => [product];

}