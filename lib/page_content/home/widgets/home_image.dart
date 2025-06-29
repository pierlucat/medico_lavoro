import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/breakpoint_utils.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.asset(
        'assets/mario_al_lavoro.png',
        width: 800,
        height: BreakpointUtils.getResponsiveValue(
          context,
          [
            ResponsiveBreakpoints.of(context)
                    .equals(BreakpointUtils.xsmall.name)
                ? 250
                : 450,
            450,
            600,
            850,
          ],
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}
