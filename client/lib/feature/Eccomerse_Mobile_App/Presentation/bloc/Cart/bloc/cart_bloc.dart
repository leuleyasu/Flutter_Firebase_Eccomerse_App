import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../Data/Models/CartModel.dart';
import '../../../../Data/Models/ProductModel.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial());

  Stream<CartState> mapEventToState(CartEvent event) async* {
    try {
      if (event is InitCart) {
        yield* _mapInitCartToState();
      } else if (event is AddCart) {
        yield* _mapAddcartlistToState(event, state);
      } else if (event is RemoveCart) {
        yield* _mapRemovecartlistToState(event, state);
      }
    } catch (e) {
      print(e);
    }
  }

  Stream<CartState> _mapInitCartToState() async* {
    yield CartLoading();
    try {
            await Future<void>.delayed(const Duration(seconds: 1));
yield CartLoaded();
    } catch (e) {
      print(e);
    }
  }

  Stream<CartState> _mapAddcartlistToState(
      AddCart event, CartState state) async* {
     try {
          if (state is CartLoaded) {
          yield CartLoaded(cart: Cart(product: List.from(state.cart.product)..add(event.products)));

        }
    yield CartLoading();
     } catch (e) {
       print(e);
     }
  }

 Stream<CartState> _mapRemovecartlistToState(
      RemoveCart event, CartState state) async* {
   try {
          if (state is CartLoaded) {
          yield CartLoaded(cart: Cart(product:List.from(state.cart.product)..remove(event.products)));

        }
    yield CartLoading();
   } catch (e) {
     print(e);
   }
      }

      }