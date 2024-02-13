// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../data/plant_data.dart';
import '../../widgets/plant_card_widget.dart';

class HomePlantGrid extends StatelessWidget {
  const HomePlantGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 4, // Provide the number of items
      itemBuilder: (context, index) => Container(
        height: 190,
        width: 200,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 8,
              offset: const Offset(5, 7),
            ),
          ],
        ),
        child: PlantCardWidget(
          img: plantList[index].imagePath,
          title: plantList[index].title,
          price: plantList[index].price,
        ),
      ),
      shrinkWrap: true, // Add this line
      physics: const NeverScrollableScrollPhysics(), // Add this line
    );
  }
}
