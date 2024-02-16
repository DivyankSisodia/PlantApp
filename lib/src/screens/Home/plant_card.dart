// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../data/plant_data.dart';
import '../../view/detail_page_view.dart';
import '../../widgets/plant_card_widget.dart';

class HomePlantGrid extends ConsumerWidget {
  const HomePlantGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MasonryGridView.builder(
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 4, // Provide the number of items
      itemBuilder: (context, index) => Container(
        height: 240,
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
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  imagePath: plantList[index].imagePath,
                  title: plantList[index].title,
                  price: plantList[index].price,
                ),
              ),
            );
          },
          child: PlantCardWidget(
            plantIndex: index,
          ),
        ),
      ),
      shrinkWrap: true, // Add this line
      physics: const NeverScrollableScrollPhysics(), // Add this line
    );
  }
}
