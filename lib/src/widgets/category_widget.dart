import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_theme.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.title,
    required this.color,
    required this.textColor,
    required this.fontWeight,
  });

  final String title;
  final Color color;
  final Color textColor;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 10,
      ),
      child: Chip(
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          child: Text(
            title,
            style: GoogleFonts.ubuntu(
              textStyle: AppTheme.smallTextMisc,
              fontWeight: fontWeight,
              color: textColor,
            ),
          ),
        ),
        side: BorderSide.none,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}
