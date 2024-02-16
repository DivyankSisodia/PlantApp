import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/plant_data.dart';
import '../model/plant_model.dart';

class ProductNotifier extends StateNotifier<List<PlantData>> {
  ProductNotifier() : super(plantList);

  void isSelectedItem(int plantID, int index) {
    state = [
      for (final product in state)
        if (product.id == plantID)
          product.copyWith(isSelected: !product.isSelected)
        else
          product
    ];
  }
}
