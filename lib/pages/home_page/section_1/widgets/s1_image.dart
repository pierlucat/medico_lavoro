import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';

class S1Image extends StatelessWidget {
  const S1Image({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(SizingUtils.radiusCircle),
      child: Image.asset(
        'assets/mario_al_lavoro.png',
        width: 800,
        height: 850,
        fit: BoxFit.cover,
      ),
    );
  }
}
