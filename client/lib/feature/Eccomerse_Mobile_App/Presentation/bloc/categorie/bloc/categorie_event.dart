// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'categorie_bloc.dart';

sealed class CategorieEvent extends Equatable{}

class LoadCategorieEvent extends CategorieEvent{
  @override

  List<Object?> get props => [];
}
class LoadedCategorieEvent extends CategorieEvent {
 final List <CategoryModel> category;
  LoadedCategorieEvent(
     this.category,
  );
  @override
  List<Object?> get props => [category];
}
