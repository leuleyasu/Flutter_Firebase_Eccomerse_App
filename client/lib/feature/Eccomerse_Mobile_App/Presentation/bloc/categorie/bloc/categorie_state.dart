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
class CategoryLoaded extends CategorieState {
  final List<CategoryModel> categories;

  CategoryLoaded({this.categories = const <CategoryModel>[]});

  @override
  List<Object> get props => [categories];
}