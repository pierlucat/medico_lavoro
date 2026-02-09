import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../utils/breakpoint_utils.dart';

class S4TitleDesc extends StatelessWidget {
  const S4TitleDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.topLeft,
      widthFactor: 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contattaci',
            style: ThemeUtils.sectionContentTitle.copyWith(
              color: Color(
                ColorUtils.accentColor,
              ),
              fontSize: SizingUtils.sectionContentTitleL,
            ),
          ),
          SizedBox(
            height: SizingUtils.spaceL,
          ),
          Text(
            'Siamo pronti ad assisterti in ogni fase del percorso, per garantire il benessere dei tuoi dipendenti e la conformità normativa della tua azienda.',
            style: ThemeUtils.bodyText.copyWith(
              fontSize: SizingUtils.bodyTextL,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Il nostro team di esperti è pronto ad assisterti in ogni fase del percorso, per garantire il benessere dei tuoi dipendenti e la conformità normativa della tua azienda.',
            style: ThemeUtils.bodyText.copyWith(
              fontSize: SizingUtils.bodyTextL,
            ),
          ),
        ],
      ),
    );
  }
}
