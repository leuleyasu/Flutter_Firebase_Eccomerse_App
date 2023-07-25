// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'wishlish_bloc.dart';

@immutable
abstract class WishlishEvent extends Equatable {
  const WishlishEvent();
  @override
  List<Object> get props =>[];
  }
 class StartWishlist extends WishlishEvent{}
class AddWishlist extends WishlishEvent {
    final ProductModel product;
  const AddWishlist({
    required this.product,
  });
      List<Object> get props =>[product];

  }
class RemoveWishlist extends WishlishEvent {
    final ProductModel product;
  const RemoveWishlist({
    required this.product,
  });
      List<Object> get props =>[product];

  }