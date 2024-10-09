import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/mario_al_lavoro.png',
      width: 800,
      height: 850,
      fit: BoxFit.cover,
    );
  }
}
