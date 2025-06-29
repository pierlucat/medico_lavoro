import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medico_lavoro/page_content/servizi/widgets/tile_servizio.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/breakpoint_utils.dart';

class ChiSiamoTitle extends StatelessWidget {
  const ChiSiamoTitle({super.key});

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
                text: 'Il nostro studio eroga un ',
              ),
              TextSpan(
                text: 'insieme strutturato di attività specialistiche ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'previste dal D.Lgs. 81/08 e finalizzate alla tutela delle imprese e della salute dei lavoratori, alla riduzione dei rischi professionali e al pieno rispetto degli obblighi normativi in materia di sicurezza sul lavoro.',
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
              SizingUtils.spaceS,
              SizingUtils.spaceS,
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
                text: 'Le prestazioni sono pianificate sulla base della ',
              ),
              TextSpan(
                text: 'valutazione dei rischi aziendali ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'e ',
              ),
              TextSpan(
                text: 'integrate nei processi decisionali delle imprese',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    ' con un approccio proattivo alla prevenzione e alla gestione della sorveglianza sanitaria.\n',
              ),
              TextSpan(
                text:
                    'Il Medico Competente opera in sinergia con tutte le figure previste dal sistema di prevenzione aziendale (RSPP, ASPP, RLS, datore di lavoro), garantendo supporto costante e interventi mirati.',
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TileServizio(
              title: "Sorveglianza sanitaria e idoneità al lavoro",
              image: 'assets/programma_prevenzione_.png',
              width: 350,
              height: 500,
              button: CommonFilledButton(
                text: 'Scopri',
                buttonStyle: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Color(ColorUtils.accentColor),
                  ),
                ),
                textStyle: TextStyle(
                  color: Color(
                    ColorUtils.backgroundGrey,
                  ),
                ),
                callBack: () {
                  context.go(
                    '/servizi/dettaglio-servizio',
                    extra: {
                      'titolo': 'Sorveglianza sanitaria e idoneità al lavoro',
                      'immagine': 'immagine_url',
                      'descrizione': 'Descrizione del servizio',
                    },
                  );
                },
              ),
            ),
            TileServizio(
              title: "Valutazione e gestione dei rischi",
              image: 'assets/programma_prevenzione_.png',
              width: 350,
              height: 500,
              button: CommonFilledButton(
                text: 'Scopri',
                buttonStyle: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Color(ColorUtils.accentColor),
                  ),
                ),
                textStyle: TextStyle(
                  color: Color(
                    ColorUtils.backgroundGrey,
                  ),
                ),
                callBack: () {
                  context.go(
                    '/servizi/dettaglio-servizio',
                    extra: {
                      'titolo': 'Valutazione e gestione dei rischi',
                      'immagine': 'immagine_url',
                      'descrizione': 'Descrizione del servizio',
                    },
                  );
                },
              ),
            ),
            TileServizio(
              title: "Prevenzione e consulenza normativa",
              image: 'assets/programma_prevenzione_.png',
              width: 350,
              height: 500,
              button: CommonFilledButton(
                text: 'Scopri',
                buttonStyle: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Color(ColorUtils.accentColor),
                  ),
                ),
                textStyle: TextStyle(
                  color: Color(
                    ColorUtils.backgroundGrey,
                  ),
                ),
                callBack: () {
                  context.go(
                    '/servizi/dettaglio-servizio',
                    extra: {
                      'titolo': 'Prevenzione e consulenza normativa',
                      'immagine': 'immagine_url',
                      'descrizione': 'Descrizione del servizio',
                    },
                  );
                },
              ),
            ),
            TileServizio(
              title: "Ergonomia e benessere sul lavoro",
              image: 'assets/programma_prevenzione_.png',
              width: 350,
              height: 500,
              button: CommonFilledButton(
                text: 'Scopri',
                buttonStyle: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Color(ColorUtils.accentColor),
                  ),
                ),
                textStyle: TextStyle(
                  color: Color(
                    ColorUtils.backgroundGrey,
                  ),
                ),
                callBack: () {
                  context.go(
                    '/servizi/dettaglio-servizio',
                    extra: {
                      'titolo': 'Ergonomia e benessere sul lavoro',
                      'immagine': 'immagine_url',
                      'descrizione': 'Descrizione del servizio',
                    },
                  );
                },
              ),
            ),
          ],
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
                text: 'Tutti i servizi sono ',
              ),
              TextSpan(
                text: 'tracciabili',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: ', ',
              ),
              TextSpan(
                text: 'documentati',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: ' e ',
              ),
              TextSpan(
                text: 'modulabili',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    ' in base alla specificità dei comparti produttivi, con attenzione agli aggiornamenti legislativi, alla qualità dei protocolli sanitari e all’efficacia delle misure adottate.',
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
    return ClipOval(
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
            350,
          ],
        ),
        width: BreakpointUtils.getResponsiveValue(
          context,
          [
            ResponsiveBreakpoints.of(context)
                    .equals(BreakpointUtils.xsmall.name)
                ? 250
                : 350,
            450,
            450,
            350,
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
