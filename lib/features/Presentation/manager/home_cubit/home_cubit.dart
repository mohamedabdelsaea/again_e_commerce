import 'package:again_e_commerce/core/failures/failures.dart';
import 'package:again_e_commerce/core/services/web_service.dart';
import 'package:again_e_commerce/features/Presentation/layout/data/data_sorce/category_and_product_inter_face_data_source.dart';
import 'package:again_e_commerce/features/Presentation/layout/data/repositories/categories_and_product_repositories_imp.dart';
import 'package:again_e_commerce/features/Presentation/layout/domain/entity/category_data.dart';
import 'package:again_e_commerce/features/Presentation/layout/domain/repositories/category_and_product_repositories.dart';
import 'package:again_e_commerce/features/Presentation/layout/domain/use_case/get_categories_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(const InitialHomeState());

  late GetCategoriesUseCase _getCategoriesUseCase;
  late CategoryAndProductRepositories _andProductRepositories;
  late CategoryAndProductInterFaceDataSource
  _categoryAndProductInterFaceDataSource;
  final WebServices _services = WebServices();

  Future<void> getCategory() async {
    _categoryAndProductInterFaceDataSource = RemoteCategoryAndProductDataSource(
      _services.freeDio,
    );
    _andProductRepositories = CategoriesAndProductRepositoriesImp(
      _categoryAndProductInterFaceDataSource,
    );
    _getCategoriesUseCase = GetCategoriesUseCase(_andProductRepositories);

    final result = await _getCategoriesUseCase.call();

    return result.fold(
      (fail) {
        var error = fail as ServerFailure;
        emit(ErrorGetCategoriesState());
      },
      (data) {
        emit(SuccessGetCategoriesState(data));
      },
    );
  }
}
