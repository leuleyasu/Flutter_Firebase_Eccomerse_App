import 'package:client/feature/Business/bloc/wishlish_event.dart';
import 'package:client/feature/Business/bloc/wishlish_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Data/wishlistmodel.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishListLoading());

  Stream<WishlistState> mapEventToState(WishlistEvent event) async* {
    try {
      if (event is StartWishlist) {
        yield* _mapStartWishlistToState();
      } else if (event is AddWishlist) {
        yield* _mapAddWishlistToState(event, state);
      } else if (event is RemoveWishlist) {
        yield* _mapRemoveWishlistToState(event, state);
      }
    } catch (e) {
      print(e);
    }
  }

  Stream<WishlistState> _mapStartWishlistToState() async* {
    yield WishListLoading();
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      yield const WishlistLoaded();
    } catch (e) {
      print(e);
    }
  }

  Stream<WishlistState> _mapAddWishlistToState(
      AddWishlist event, WishlistState state) async* {
    if (state is WishlistLoaded) {
      try {
        await Future<void>.delayed(const Duration(seconds: 1));
        yield WishlistLoaded(
          wishlist: WishList(
            product: List.from(state.wishlist.product)..add(event.product),
          ),
        );
      } catch (e) {
        print(e);
      }
    }
  }

  Stream<WishlistState> _mapRemoveWishlistToState(
      RemoveWishlist event, WishlistState state) async* {
    if (state is WishlistLoaded) {
      try {
        await Future<void>.delayed(const Duration(seconds: 1));
        yield WishlistLoaded(
          wishlist: WishList(
            product: List.from(state.wishlist.product)..remove(event.product),
          ),
        );
      } catch (e) {
        print(e);
      }
    }
  }
}
