// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cart_bloc.dart';


abstract class CartState extends Equatable {
  @override
  List<Object?> get props => [];

}

class CartInitial extends CartState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
class CartLoading extends CartState {

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class CartLoaded extends CartState {
final Cart cart;
  CartLoaded(
  { this.cart= const Cart()}
  );
  @override
  // TODO: implement props
  List<Object?> get props =>[cart];
}
