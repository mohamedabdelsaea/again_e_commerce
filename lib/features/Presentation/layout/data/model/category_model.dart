import 'package:again_e_commerce/features/Presentation/layout/domain/entity/category_data.dart';

class CategoryModel extends CategoryData {
  CategoryModel({
    required super.categoryID,
    required super.categoryName,
    required super.categoryImg,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      categoryID: json['_id'],
      categoryName: json['name'],
      categoryImg: json['image'],
    );
  }
}
