import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';

class HomeContentSubtitle extends StatelessWidget {
  const HomeContentSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Dove c'è il malaffare, ci siamo noi!",
      style: ThemeUtils.homeContentSubtitle,
    );
  }
}
