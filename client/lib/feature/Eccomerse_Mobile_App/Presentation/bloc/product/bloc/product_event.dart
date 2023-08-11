// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'product_bloc.dart';

abstract class Productevent extends Equatable {
  const Productevent();

  @override
  List<Object> get props => [];
}

class Loadproduct extends Productevent {}

// ignore: camel_case_types
class updateproduct extends Productevent {
  final List<ProductModel> product;

  const updateproduct(this.product);

  @override
  List<Object> get props => [product];
}