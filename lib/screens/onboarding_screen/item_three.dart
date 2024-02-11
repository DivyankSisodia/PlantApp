import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantapp/constants/app_theme.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/linh-le-Ebwp2-6BG8E-unsplash.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            bottom: 300,
            right: 6,
            child: Text(
              'Transform\nyour space into \nparadise!',
              style: GoogleFonts.ubuntu(textStyle: AppTheme.display3),
            ),
          ),
        ],
      ),
    );
  }
}
