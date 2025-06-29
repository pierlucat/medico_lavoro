import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/breakpoint_utils.dart';

class OurPlaceContent extends StatelessWidget {
  const OurPlaceContent({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.centerRight,
      widthFactor:
          ResponsiveBreakpoints.of(context).equals(BreakpointUtils.xsmall.name)
              ? 1.0
              : 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Il nostro studio',
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
          SizedBox(
            height: BreakpointUtils.getResponsiveValue(
              context,
              [
                SizingUtils.spaceXS,
                SizingUtils.spaceS,
                SizingUtils.spaceM,
                SizingUtils.spaceL,
              ],
            ),
          ),
          Text(
            'Con anni di esperienza nel campo della medicina del lavoro, Studio Toscanetti si impegna quotidianamente a garantire la salute e la sicurezza dei lavoratori, promuovendo un ambiente lavorativo sicuro e privo di rischi. Siamo specializzati nella valutazione dei rischi, nella sorveglianza sanitaria e nella prevenzione delle malattie professionali, collaborando strettamente con le aziende per sviluppare soluzioni su misura che rispondano alle normative e alle esigenze specifiche di ogni settore.',
            style: ThemeUtils.bodyTextFunc(context),
          ),
          SizedBox(
            height: BreakpointUtils.getResponsiveValue(
              context,
              [
                SizingUtils.spaceXS,
                SizingUtils.spaceS,
                SizingUtils.spaceM,
                SizingUtils.spaceL,
              ],
            ),
          ),
          Text(
            'Il ruolo del medico del lavoro è essenziale per proteggere il bene più prezioso di ogni impresa: le persone. Attraverso un approccio multidisciplinare e aggiornato, supportiamo i datori di lavoro e i lavoratori nell’affrontare le sfide quotidiane del mondo del lavoro, garantendo il benessere e la produttività dell’intero team. Siamo il vostro partner di fiducia nella creazione di un ambiente lavorativo sicuro, dove la prevenzione è la chiave del successo.',
            style: ThemeUtils.bodyTextFunc(context),
          ),
          SizedBox(
            height: BreakpointUtils.getResponsiveValue(
              context,
              [
                SizingUtils.spaceXS,
                SizingUtils.spaceS,
                SizingUtils.spaceM,
                SizingUtils.spaceL,
              ],
            ),
          ),
          CommonFilledButton(
            text: 'Scopri',
            buttonStyle: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.black),
            ),
            textStyle: TextStyle(
              color: Color(
                ColorUtils.backgroundGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
