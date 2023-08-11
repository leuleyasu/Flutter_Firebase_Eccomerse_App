part of 'product_bloc.dart';
sealed class Producstate extends Equatable{}

final class Productinitial extends Producstate {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
// ignore: camel_case_types
final class productLoading extends Producstate {
  @override
  // TODO: implement props
  List<Object?> get props =>[];
}
// ignore: camel_case_types
class productloaded extends Producstate {
  final List<ProductModel> product;

  productloaded ({this.product = const <ProductModel>[]});

  @override
  List<Object> get props => [product];
}