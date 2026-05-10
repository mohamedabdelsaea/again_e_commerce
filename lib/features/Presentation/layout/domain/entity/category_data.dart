class CategoryData {
  final String categoryID;
  final String categoryName;
  final String categoryImg;

  CategoryData({
    required this.categoryID,
    required this.categoryName,
    required this.categoryImg,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryData &&
          runtimeType == other.runtimeType &&
          categoryID == other.categoryID &&
          categoryName == other.categoryName &&
          categoryImg == other.categoryImg;

  @override
  int get hashCode => Object.hash(categoryID, categoryName, categoryImg);
}
