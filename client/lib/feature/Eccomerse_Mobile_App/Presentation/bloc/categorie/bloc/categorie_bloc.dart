import 'dart:async';

import 'package:client/feature/Eccomerse_Mobile_App/Data/Models/Categorymodel.dart';
import 'package:client/feature/Eccomerse_Mobile_App/Data/Repositories/categorie_repositories.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'categorie_event.dart';
part 'categorie_state.dart';

class CategorieBloc extends Bloc<CategoryEvent, CategorieState> {
  final CategorieRepositories _categorieRepositories;
   StreamSubscription? _categoriestreamSubscription;
  CategorieBloc({required CategorieRepositories categorieRepositories}): _categorieRepositories=categorieRepositories,

  super(CategoryLoading());

  Stream<CategorieState> mapEventToState(CategoryEvent event) async* {
    try {
      if (event is LoadCategories) {
        yield* _mapLoadCategorieEventToState();
      } else if (event is UpdateCategories) {
        yield* _mapLoadedCategorieEventToState(event);
      }
    } catch (e) {
      print(e);
    }
  }



  Stream<CategorieState> _mapLoadCategorieEventToState() async* {
    _categoriestreamSubscription?.cancel();
    _categoriestreamSubscription=_categorieRepositories.getAllcategory()
    .listen((catagorie)=> add(UpdateCategories(catagorie)));

  }


}
  Stream<CategorieState> _mapLoadedCategorieEventToState(UpdateCategories event) async* {

    try {
yield CategoryLoaded(categories: event.categories);
    } catch (e) {
    }
  }