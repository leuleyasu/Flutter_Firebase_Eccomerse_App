// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable{
    List<Object?> get props => [];

}


class InitCart extends CartEvent{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
class AddCart extends CartEvent {
 final ProductModel products;
  AddCart(
     this.products,
  );
  @override
  // TODO: implement props
  List<Object?> get props =>[products];

}
class RemoveCart extends CartEvent{
  ProductModel products;
  RemoveCart({
    required this.products,
  });
  @override
  // TODO: implement props
  List<Object?> get props =>[products];


}