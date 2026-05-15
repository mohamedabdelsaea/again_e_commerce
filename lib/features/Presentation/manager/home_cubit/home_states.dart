part of 'home_cubit.dart';

abstract class HomeStates {
  const HomeStates();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeStates && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;
}

class InitialHomeState extends HomeStates {
  const InitialHomeState();
}

class LoadingGetCategoriesState extends HomeStates {
  LoadingGetCategoriesState();
}

class SuccessGetCategoriesState extends HomeStates {
  final List<CategoryData> categoryList;

  SuccessGetCategoriesState(this.categoryList);
}

class ErrorGetCategoriesState extends HomeStates {
  ErrorGetCategoriesState();
}
