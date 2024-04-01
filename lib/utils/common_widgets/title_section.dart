import 'package:flutter/material.dart';

import '../theme.dart';

class TitleSection extends StatelessWidget {
  final String title;
  const TitleSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Color(ColorUtils.accentColor),
          height: 25,
          width: 5,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: ThemeUtils.title.copyWith(
            fontSize: 28,
            color: Colors.grey.shade800,
          ),
        ),
      ],
    );
  }
}
