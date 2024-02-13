class PlantData {
  final String imagePath;
  final String title;
  final String price;

  PlantData({
    required this.imagePath,
    required this.title,
    required this.price,
  });
}

final List<PlantData> plantList = [
  PlantData(
    imagePath: 'assets/images/1.jpeg',
    title: 'Leaf Palm Branch',
    price: '50',
  ),
  PlantData(
    imagePath: 'assets/images/2.jpeg',
    title: 'Fiddle Leaf Fig Topiary',
    price: '30',
  ),
  PlantData(
    imagePath: 'assets/images/3.jpeg',
    title: 'Monstera Plant',
    price: '25',
  ),
  PlantData(
    imagePath: 'assets/images/4.jpeg',
    title: 'Peace Lily Plant',
    price: '35',
  ),
];
