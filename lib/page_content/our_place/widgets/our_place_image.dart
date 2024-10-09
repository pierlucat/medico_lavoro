import 'package:flutter/material.dart';

class OurPlaceImage extends StatelessWidget {
  const OurPlaceImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/studio1.jpg',
      width: 800,
      height: 850,
      fit: BoxFit.cover,
    );
  }
}
