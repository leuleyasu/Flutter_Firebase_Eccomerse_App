import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Data/Models/ProductModel.dart';
import '../../../../Data/Repositories/ProductRepositories.dart';
part 'product_event.dart';
part 'product_state.dart';

class Productbloc extends Bloc<Productevent, Producstate> {
  final ProductRepositories _productRepositories;
   StreamSubscription? _categoriestreamSubscription;
  Productbloc({required ProductRepositories productRepositories}): _productRepositories=productRepositories,

  super(productLoading());

  Stream<Producstate> mapEventToState(Productevent event) async* {
    try {
      if (event is Loadproduct) {
        yield* _mapLoadCategorieEventToState();
      } else if (event is updateproduct) {
        yield* _mapLoadedCategorieEventToState(event);
      }
    } catch (e) {
      print(e);
    }
  }



  Stream<Producstate> _mapLoadCategorieEventToState() async* {
    _categoriestreamSubscription?.cancel();
    _categoriestreamSubscription=_productRepositories.getProductmodel()
    .listen((product)=> add(updateproduct(product)));

  }


}
  Stream<Producstate> _mapLoadedCategorieEventToState(updateproduct event) async* {

    try {
yield productloaded(product: event.product);
    } catch (e) {
    }
  }