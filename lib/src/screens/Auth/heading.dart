import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_theme.dart';

class RegistrationHeading extends StatelessWidget {
  const RegistrationHeading({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.ubuntu(
            textStyle: AppTheme.signUpTitle,
            fontWeight: FontWeight.w700,
            fontSize: 28,
          ),
        ),
        Text(
          subTitle,
          style: GoogleFonts.ubuntu(
              textStyle: AppTheme.smallTextTitle, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
