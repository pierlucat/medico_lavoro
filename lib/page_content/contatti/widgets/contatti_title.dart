import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/breakpoint_utils.dart';

class ContattiTitle extends StatelessWidget {
  const ContattiTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: ThemeUtils.bodyTextFunc(context).copyWith(
              height: 1.5,
            ),
            children: [
              TextSpan(
                text:
                    'Inviaci un messaggio per qualsiasi richiesta od informazione. Compila il modulo sottostante e ti risponderemo al più presto.\n',
              ),
              TextSpan(
                text:
                    'Siamo qui per rispondere alle tue domande ed aiutarti a trovare la soluzione più adatta alle esigenze della tua azienda.',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ChiSiamoImage extends StatelessWidget {
  const ChiSiamoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.asset(
        'assets/chi_siamo_1.jpg',
        //width: 800,
        height: BreakpointUtils.getResponsiveValue(
          context,
          [
            ResponsiveBreakpoints.of(context)
                    .equals(BreakpointUtils.xsmall.name)
                ? 250
                : 350,
            450,
            450,
            600,
          ],
        ),
        fit: BoxFit.fill,
      ),
    );
  }
}

class ChiSiamoSubtitle extends StatelessWidget {
  const ChiSiamoSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.centerLeft,
      widthFactor: 1.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          RichText(
            text: TextSpan(
              style: ThemeUtils.bodyTextFunc(context).copyWith(
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text: 'Il nostro team è composto da ',
                ),
                TextSpan(
                  text: 'medici specializzati in medicina del lavoro',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      ' e da professionisti esperti in igiene industriale, sicurezza e gestione documentale. Operiamo con trasparenza, serietà e tempestività per garantire:',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          RichText(
            text: TextSpan(
              style: ThemeUtils.bodyTextFunc(context).copyWith(
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text:
                      '• La tutela della salute e dell’integrità psicofisica dei lavoratori;\n',
                ),
                TextSpan(
                  text:
                      '• Il rispetto degli obblighi normativi da parte delle aziende;\n',
                ),
                TextSpan(
                  text:
                      '• La promozione di ambienti di lavoro sani, sicuri ed efficienti.',
                ),
              ],
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
          RichText(
            text: TextSpan(
              style: ThemeUtils.bodyTextFunc(context).copyWith(
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text:
                      'Che si tratti di una piccola impresa o di una realtà complessa, affianchiamo ogni cliente con soluzioni mirate e un supporto costante, dalla valutazione dei rischi alla gestione delle visite mediche, fino alla formazione e ai sopralluoghi periodici.',
                ),
              ],
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
          RichText(
            text: TextSpan(
              style: ThemeUtils.bodyTextFunc(context).copyWith(
                height: 1.5,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text:
                      'La sicurezza è un dovere. Il benessere sul lavoro, una scelta responsabile.',
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              style: ThemeUtils.bodyTextFunc(context).copyWith(
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text:
                      'Scegliere il nostro studio significa investire nella salute della tua azienda.',
                ),
              ],
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
        ],
      ),
    );
  }
}
