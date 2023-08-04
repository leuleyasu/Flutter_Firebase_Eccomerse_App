

import 'package:equatable/equatable.dart';

import '../../Data/wishlistmodel.dart';

abstract class WishlistState extends Equatable{
  const WishlistState();

   @override
    List<Object?> get props => [];
}
class WishListLoading extends WishlistState {}
class WishlistLoaded extends WishlistState {
 final WishList wishlist;
  const WishlistLoaded({
     this.wishlist= const WishList()
  });
    @override
      List<Object?> get props => [wishlist];

}
class WishlishError extends WishlistState {}
