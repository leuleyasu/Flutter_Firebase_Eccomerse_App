// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'categorie_bloc.dart';
abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object> get props => [];
}

class LoadCategories extends CategoryEvent {}

class UpdateCategories extends CategoryEvent {
  final List<CategoryModel> categories;

  const UpdateCategories(this.categories);

  @override
  List<Object> get props => [categories];
}