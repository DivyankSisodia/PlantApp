import 'package:flutter/material.dart';
import 'package:plantapp/src/widgets/custom_clipper.dart';

class ClippedImage extends StatelessWidget {
  const ClippedImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClip(),
      child: Container(
        width: double.infinity,
        height: 270,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/plant_signIn.jpg'),
            fit: BoxFit.cover,
            // opacity: 0.9,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2),
              BlendMode.darken,
            ),
          ),
        ),
      ),
    );
  }
}
