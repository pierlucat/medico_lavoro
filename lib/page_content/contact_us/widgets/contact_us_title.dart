import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/breakpoint_utils.dart';

class ContactUsTitle extends StatelessWidget {
  const ContactUsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.topLeft,
      widthFactor:
          ResponsiveBreakpoints.of(context).equals(BreakpointUtils.xsmall.name)
              ? 1.0
              : 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Contattaci',
            style: ThemeUtils.sectionContentTitle.copyWith(
              color: Color(
                ColorUtils.accentColor,
              ),
              fontSize: BreakpointUtils.getResponsiveValue(
                context,
                [
                  SizingUtils.sectionContentTitleXS,
                  SizingUtils.sectionContentTitleS,
                  SizingUtils.sectionContentTitleM,
                  SizingUtils.sectionContentTitleL
                ],
              ),
            ),
          ),
          SizingUtils.spacerFunc(context),
          Text(
            'Il nostro team di esperti è pronto ad assisterti in ogni fase del percorso, per garantire il benessere dei tuoi dipendenti e la conformità normativa della tua azienda.',
            style: ThemeUtils.bodyText.copyWith(
              fontSize: BreakpointUtils.getResponsiveValue<double>(
                context,
                [
                  SizingUtils.bodyTextXS,
                  SizingUtils.bodyTextS,
                  SizingUtils.bodyTextM,
                  SizingUtils.bodyTextL,
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Compila il modulo o contattaci tramite i nostri recapiti. Saremo lieti di fornirti tutto il supporto di cui hai bisogno per creare un ambiente lavorativo sicuro e protetto.',
            style: ThemeUtils.bodyTextFunc(context),
          ),
        ],
      ),
    );
  }
}
