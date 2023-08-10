part of 'categorie_bloc.dart';

sealed class CategorieState extends Equatable{}

final class CategorieInitial extends CategorieState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
final class CategoryLoading extends CategorieState {
  @override
  // TODO: implement props
  List<Object?> get props =>[];
}
final class CategoryLoaded extends CategorieState {
  final List <CategoryModel> category;

  CategoryLoaded(this.category);
  @override
  // TODO: implement props
  List<Object?> get props => [category];
}
