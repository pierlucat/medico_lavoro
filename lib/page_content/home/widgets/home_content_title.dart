import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';

class HomeContentTitle extends StatelessWidget {
  const HomeContentTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Studio',
          style: ThemeUtils.homeContentTitle,
        ),
        Text(
          'De Stefani',
          style: ThemeUtils.homeContentTitle.copyWith(fontSize: 60),
        ),
      ],
    );
  }
}
