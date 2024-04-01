import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';

class HomeContentSubtitle extends StatelessWidget {
  const HomeContentSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Scopri il nostro studio di medicina del lavoro ed",
          style: ThemeUtils.homeContentSubtitle,
        ),
        Text(
          "affidati alla nostra esperienza.",
          style: ThemeUtils.homeContentSubtitle,
        ),
      ],
    );
  }
}
