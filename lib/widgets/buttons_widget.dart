import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_theme.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    super.key,
    required this.title,
    required this.borderColor,
    required this.textColor,
    required this.buttonColor, this.btnheight,
  });

  final String title;
  final Color borderColor;
  final Color textColor;
  final Color buttonColor;
  final double? btnheight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: btnheight ?? 60.0,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: buttonColor,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.ubuntu(
            textStyle: AppTheme.buttontext,
            color: textColor,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
