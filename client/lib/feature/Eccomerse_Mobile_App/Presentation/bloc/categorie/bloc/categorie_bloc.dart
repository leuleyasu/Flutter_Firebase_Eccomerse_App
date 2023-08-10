import 'package:client/feature/Eccomerse_Mobile_App/Data/Models/Categorymodel.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'categorie_event.dart';
part 'categorie_state.dart';

class CategorieBloc extends Bloc<CategorieEvent, CategorieState> {
  CategorieBloc() : super(CategoryLoading());

  Stream<CategorieState> mapEventToState(CategorieEvent event) async* {
    try {
      if (event is LoadCategorieEvent) {
        yield* _mapLoadCategorieEventToState();
      } else if (event is LoadedCategorieEvent) {
        yield* _mapLoadedCategorieEventToState(event, state);
      }
    } catch (e) {
      print(e);
    }
  }

  Stream<CategorieState> _mapLoadCategorieEventToState() async* {
    // Fetch categories from your data source (e.g., API or database)
    try {

    } catch (e) {
    }
  }

  Stream<CategorieState> _mapLoadedCategorieEventToState(
      LoadedCategorieEvent event, CategorieState state) async* {
    if (state is CategoryLoaded) {

    }
  }


}
