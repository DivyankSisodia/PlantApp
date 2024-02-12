import 'package:flutter/material.dart';

class SocialMediaBtn extends StatelessWidget {
  const SocialMediaBtn({
    super.key, this.btnheight, this.btnwidth, required this.image,
  });

  final double? btnheight;
  final double? btnwidth;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: btnheight ?? 30,
        width: btnheight ?? 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(
          image,
          height: 40,
        ),
      ),
    );
  }
}
