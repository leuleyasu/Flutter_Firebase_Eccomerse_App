// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'wishlish_bloc.dart';

@immutable
abstract class WishlishState extends Equatable{
  const WishlishState();

   @override
    List<Object?> get props => [];
}

class WishlishInitial extends WishlishState {}
class WishListLoading extends WishlishState {}
class WishlistLoaded extends WishlishState {
 final WishList wishlist;
  const WishlistLoaded({
     this.wishlist= const WishList()
  });

    @override
      List<Object?> get props => [wishlist];

}