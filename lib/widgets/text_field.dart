import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_theme.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: SizedBox(
        height: 50,
        child: TextFormField(
          decoration: InputDecoration(
            fillColor: Colors.green[200]?.withOpacity(0.7),
            filled: true,
            prefixIcon: Icon(icon),
            prefixIconColor: primaryColor,
            label: Text(
              title,
              style: GoogleFonts.ubuntu(
                textStyle: AppTheme.smallTextMisc,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            labelStyle: GoogleFonts.ubuntu(
              textStyle: AppTheme.smallTextMisc,
              fontWeight: FontWeight.w400,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
