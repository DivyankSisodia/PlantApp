import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_theme.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          fillColor: textFieldColor.withOpacity(1),
          filled: true,
          prefixIcon: const Icon(
            CupertinoIcons.search,
            color: headingColor,
          ),
          prefixIconColor: primaryColor,
          hintText: 'Search',
          hintStyle: GoogleFonts.ubuntu(
            textStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          hintTextDirection: TextDirection.ltr,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
