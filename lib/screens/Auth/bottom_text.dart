import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/app_theme.dart';

class BottomText extends StatelessWidget {
  const BottomText({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.textBtnPressed,
  });

  final String firstText;
  final String secondText;
  final VoidCallback textBtnPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              firstText,
              style: GoogleFonts.ubuntu(
                textStyle: AppTheme.smallTextMisc,
                fontWeight: FontWeight.w300,
                fontSize: 13,
              ),
            ),
            TextButton(
              onPressed: textBtnPressed,
              child: Text(
                secondText,
                style: GoogleFonts.ubuntu(
                  textStyle: AppTheme.smallTextMisc,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
