class PlantData{
  final String imagePath;
  final String title;
  final String price;
  final int id;
  final bool isSelected;

  PlantData({
    required this.imagePath,
    required this.title,
    required this.price,
    required this.id,
    this.isSelected = false,
  });

  PlantData copyWith({
    String? imagePath,
    String? title,
    String? price,
    int? id,
    bool? isSelected,
  }) {
    return PlantData(
      imagePath: imagePath ?? this.imagePath,
      title: title ?? this.title,
      price: price ?? this.price,
      id: id ?? this.id,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}