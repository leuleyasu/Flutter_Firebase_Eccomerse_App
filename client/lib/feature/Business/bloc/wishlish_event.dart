// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

import '../../Data/ProductModel.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();
  @override
  List<Object> get props =>[];
  }

 class StartWishlist extends WishlistEvent{}

class AddWishlist extends WishlistEvent {
    final ProductModel product;
  const AddWishlist(
     this.product,
  );
      @override
        List<Object> get props =>[product];

  }
class RemoveWishlist extends WishlistEvent {
    final ProductModel product;
  const RemoveWishlist( this.product);
      @override
        List<Object> get props =>[product];

  }