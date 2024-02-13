import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_theme.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Let's find your\nplants",
      style: GoogleFonts.poppins(
        textStyle: AppTheme.displayCustom,
        fontSize: 30,
        color: headingColor,
      ),
    );
  }
}
