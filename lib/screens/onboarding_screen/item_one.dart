import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantapp/constants/app_theme.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/kari-shea-tcgMBsW4zlU-unsplash.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 90,
            left: MediaQuery.of(context).size.width / 5 - 10,
            child: Text(
              "Welcome to\nFloraFriend",
              style: GoogleFonts.ubuntu(
                textStyle: AppTheme.display1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
