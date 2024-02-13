import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_theme.dart';

class PlantCardWidget extends StatelessWidget {
  const PlantCardWidget({
    super.key, required this.img, required this.title, required this.price,
  });

  final String img;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            img,
            height: 116,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error);
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.ubuntu(
                      textStyle: AppTheme.smallTextMisc,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 12),
                ),
                const Gap(5),
                Text(
                  '\$$price',
                  style: GoogleFonts.ubuntu(
                    textStyle: AppTheme.smallTextMisc,
                    fontWeight: FontWeight.w400,
                    color: headingColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}