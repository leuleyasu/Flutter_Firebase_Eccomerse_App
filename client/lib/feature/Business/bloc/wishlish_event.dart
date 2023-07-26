// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'wishlish_bloc.dart';
abstract class WishlishEvent extends Equatable {
  const WishlishEvent();
  @override
  List<Object> get props =>[];
  }

 class StartWishlist extends WishlishEvent{}

class AddWishlist extends WishlishEvent {
    final ProductModel product;
  const AddWishlist(
     this.product,
  );
      @override
        List<Object> get props =>[product];

  }
class RemoveWishlist extends WishlishEvent {
    final ProductModel product;
  const RemoveWishlist( this.product);
      @override
        List<Object> get props =>[product];

  }