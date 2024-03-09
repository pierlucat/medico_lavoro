import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/logo.png',
          height: 100,
        ),
        SizedBox(width: 10), //SizedBox(
        Column(
          children: [
            Text(
              'Studio',
              style: ThemeUtils.logo,
            ),
            Text(
              'De Stefani',
              style: ThemeUtils.logo,
            ),
          ],
        ),
      ],
    );
  }
}
