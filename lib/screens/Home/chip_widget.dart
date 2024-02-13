// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../constants/app_theme.dart';
import '../../widgets/category_widget.dart';

class ChipWidgets extends StatelessWidget {
  const ChipWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CategoryWidget(
            title: 'Popular',
            color: primaryColor,
            textColor: Colors.white,
            fontWeight: FontWeight.w700,
          ),
          CategoryWidget(
            title: 'Outdoor',
            color: categoryTextColor,
            textColor: smallTextColor,
            fontWeight: FontWeight.w400,
          ),
          CategoryWidget(
            title: 'Indoor',
            color: categoryTextColor,
            textColor: smallTextColor,
            fontWeight: FontWeight.w400,
          ),
          CategoryWidget(
            title: 'Office',
            color: categoryTextColor,
            textColor: smallTextColor,
            fontWeight: FontWeight.w400,
          ),
          CategoryWidget(
            title: 'Home',
            color: categoryTextColor,
            textColor: smallTextColor,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
