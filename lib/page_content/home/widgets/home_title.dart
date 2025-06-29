import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/breakpoint_utils.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.centerLeft,
      widthFactor:
          ResponsiveBreakpoints.of(context).equals(BreakpointUtils.xsmall.name)
              ? 1.0
              : 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Salute e Sicurezza al Lavoro',
            style: ThemeUtils.sectionContentTitle.copyWith(
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
            'Affidati allo Studio Toscanetti per la Sorveglianza Sanitaria su misura per la tua azienda. Soluzioni specialistiche per la tutela della salute e sicurezza nei luoghi di lavoro. Un servizio professionale dedicato al rispetto delle normative e al benessere dei lavoratori.',
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
          ),
        ],
      ),
    );
  }
}
