import 'package:flutter/material.dart';

import '../utils/theme.dart';

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Coglionazzo del lavoro',
      style: ThemeUtils.title,
    );
  }
}
