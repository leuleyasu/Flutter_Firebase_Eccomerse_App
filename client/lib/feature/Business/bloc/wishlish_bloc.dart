
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:client/feature/Data/ProductModel.dart';
import 'package:equatable/equatable.dart';
import '../../Data/wishlistmodel.dart';

part 'wishlish_event.dart';
part 'wishlish_state.dart';

class WishlishBloc extends Bloc<WishlishEvent, WishlishState> {
  WishlishBloc() : super(WishListLoading()) ;

Stream<WishlishState> mapEventToState(WishlishEvent event) async*{
try {
 if (event is StartWishlist) {
  yield* _mapStartWishlistToState();
}
else if (event is AddWishlist) {
  yield* _mapAddWishlistToState(event,state);
}
else if (event is RemoveWishlist) {
  yield* _mapRemoveWishlistToState(event,state);
}
} catch (e) {
  print(e);
}



}

}

Stream<WishlishState>_mapStartWishlistToState()async*{
  yield WishListLoading();
  try {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield const WishlistLoaded();
  } catch (e) {
    print(e);
  }
}
Stream<WishlishState>_mapAddWishlistToState(  AddWishlist event,
  WishlishState state
  )async*{
if (state is WishlistLoaded) {


  try {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield WishlistLoaded(wishlist:WishList(product: List.from(state.wishlist.product)..add(event.product)) );
  } catch (e) {
}
}
  }

  Stream<WishlishState>_mapRemoveWishlistToState(  RemoveWishlist event,
  WishlishState state
  )async*{
if (state is WishlistLoaded) {


  try {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield WishlistLoaded(wishlist:WishList(product: List.from(state.wishlist.product)..remove(event.product)) );
  } catch (e) {
    print(e);
  }
}


  }
