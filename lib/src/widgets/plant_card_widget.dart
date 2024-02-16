import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantapp/src/controller/product_controller.dart';

import '../constants/app_theme.dart';

class PlantCardWidget extends ConsumerWidget {
  const PlantCardWidget({
    super.key,
    required this.plantIndex,
  });

  final int plantIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productNotifierProvider);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            product[plantIndex].imagePath,
            height: 130,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error);
            },
          ),
          const Gap(9),
          Expanded(
              child: Column(
            children: [
              Text(
                product[plantIndex].title,
                style: GoogleFonts.ubuntu(
                  textStyle: AppTheme.smallTextMisc,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product[plantIndex].price}',
                    style: GoogleFonts.ubuntu(
                      textStyle: AppTheme.smallTextMisc,
                      fontWeight: FontWeight.w400,
                      color: headingColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      debugPrint('Add to cart');
                      ref
                          .read(productNotifierProvider.notifier)
                          .isSelectedItem(product[plantIndex].id, plantIndex);
                    },
                    icon: Icon(
                      product[plantIndex].isSelected
                          ? Icons.check_circle // Icon when selected
                          : Icons.add_circle, // Icon when not selected
                      color: product[plantIndex].isSelected
                          ? Colors.green
                          : Colors
                              .blue, // Change color based on selection status
                      size: 24, // Adjust size as needed
                      semanticLabel: product[plantIndex].isSelected
                          ? 'Selected'
                          : 'Add', // Optional label for screen readers
                    ),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
